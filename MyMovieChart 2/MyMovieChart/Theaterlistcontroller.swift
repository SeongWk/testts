//
//  Theaterlistcontroller.swift
//  MyMovieChart
//
//  Created by seong_wook_lim on 2021/12/27.
//  Copyright © 2021 SQLPRO. All rights reserved.
//

import UIKit

class Theaterlistcontroller: UITableViewController
{
    var list = [NSDictionary]()
    var startpoint = 0
    
    override func viewDidLoad() {
        self.callTheaterAPI()
    }
    
    func callTheaterAPI()
    {
        let requestAPI = "http://swiftapi.rubypaper.co.kr:2029/theater/list"
        let slist = 100
        let type = "json"
        
        let urlobj = URL(string: "\(requestAPI)?s_page=\(self.startpoint)&s_list=\(slist)&type=\(type)")
        do{
            let stringdata = try NSString(contentsOf: urlobj!, encoding: 0x80_000_422)
            let encdata = stringdata.data(using: String.Encoding.utf8.rawValue)
            do{
                let apiarray = try JSONSerialization.jsonObject(with: encdata!, options: []) as? NSArray
                for obj in apiarray!
                {
                    self.list.append(obj as! NSDictionary)
                }
                
            }catch{
                let alert = UIAlertController(title: "fail", message: "data fail", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "confirm", style: .cancel))
                self.present(alert,animated: false)
                
            }
            self.startpoint += slist
        }catch{
            let alert2 = UIAlertController(title: "fail", message: "data fail", preferredStyle: .alert)
            alert2.addAction(UIAlertAction(title: "confirm", style: .cancel))
            self.present(alert2,animated: false)
        }
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let obj = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tcell") as! Theatercontroller
        cell.names.text = obj["상영관명"] as? String
        cell.addr.text = obj["소재지도로명주소"] as? String
        cell.contacts.text = obj["연락처"] as? String
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if (segue.identifier == "segue_map") { // 실행된 세그웨이의 식별자가 segue_map이라면
        // 선택된 셀의 행 정보
        let path = self.tableView.indexPath(for: sender as! UITableViewCell)
        // 선택된 셀에 사용된 데이터
        let data = self.list[path!.row]
        // 세그웨이가 이동할 목적지 뷰 컨트롤러 객체를 구하고, 선언된 param 변수에 데이터를 연결해준다.
        (segue.destination as? Theatermapcontroller)?.param = data
      }
    }
}
