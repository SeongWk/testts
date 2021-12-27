

import UIKit
class ListViewController: UITableViewController {
  
   lazy var list : [MovieVO] = {
    var datalist = [MovieVO]()
    return datalist
  }()
  
  override func viewDidLoad( ) {
      let url = "http://swiftapi.rubypaper.co.kr:2029/hoppin/movies?version=1&page=1&count=30&genreId=&order=releasedateasc"
      let apiURI : URL! = URL(string: url)
      let apidata = try! Data(contentsOf: apiURI)
      
      do {
        let apiDictionary = try JSONSerialization.jsonObject(with: apidata, options: []) as! NSDictionary
        
       
        let hoppin = apiDictionary["hoppin"] as! NSDictionary
        let movies = hoppin["movies"] as! NSDictionary
        let movie = movies["movie"] as! NSArray
        
   
        for row in movie {
          
          let r = row as! NSDictionary
        
         
          let mvo = MovieVO( )
          
         
          mvo.title       = r["title"] as? String
          mvo.description = r["genreNames"] as? String
          mvo.thumbnail   = r["thumbnailImage"] as? String
          mvo.detail      = r["linkUrl"] as? String
          mvo.rating      = ((r["ratingAverage"] as! NSString).doubleValue)
          
         
          self.list.append(mvo)
        }
       
      } catch {
        NSLog("Parse Error!!")
      }
   
  }
  
 
   
 

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.list.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let row = self.list[indexPath.row]
    
 
    let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! Movieinfo
    

    cell.title?.text = row.title
    cell.desc?.text = row.description
    cell.opendate?.text = row.opendate
    cell.rating?.text = "\(row.rating!)"
    
   
    let url: URL! = URL(string: row.thumbnail!)
    let imageData = try! Data(contentsOf: url)
    cell.thumbnail.image = UIImage(data:imageData)
    
    return cell
  }
  
 
}

extension ListViewController
  {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_new"
        {
            let cell = sender as! Movieinfo
            let path = self.tableView.indexPath(for:cell)
            let details = segue.destination as? newviewController
            details?.mvo = self.list[path!.row]
        }
    }
}
