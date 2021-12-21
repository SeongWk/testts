//
//  ListViewController.swift
//  chart
//
//  Created by seong_wook_lim on 2021/12/20.
//

import UIKit

class ListViewController: UITableViewController
{
    var dataset = [("Spiderman","no way Home","2021-12-15",9.1,"spider.png"),
                   ("kingsman","First Agent","2021-12-22",8.85,"kingsman.png"),
                    ("matrix","Resurrections","2021-12-22",9.21,"matrix.png")]
    lazy var list : [Movieinfo] = {
        var datalist = [Movieinfo]()
        for (title,desc,opendate,rating,thumbnail) in self.dataset
        {
            let mvo = Movieinfo()
            mvo.title = title
            mvo.description = desc
            mvo.opendate = opendate
            mvo.rating = rating
            mvo.thumbnail = thumbnail
            datalist.append(mvo)
            
        }
        return datalist
    }()
    override func viewDidLoad()
    {
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! Movie2
        //cell.textLabel?.text = row.title
        //cell.detailTextLabel?.text = row.description
        //let title = cell.viewWithTag(101) as? UILabel
        //let desc = cell.viewWithTag(102) as? UILabel
        //let opendate = cell.viewWithTag(103) as? UILabel
        //let rating = cell.viewWithTag(104) as? UILabel
        
        cell.title?.text = row.title
        cell.desc?.text = row.description
        cell.opendate?.text = row.opendate
        cell.rating?.text = "\(row.rating!)"
        cell.thumbnail.image = UIImage(named: row.thumbnail!)
        return cell
    }
  
    
}
