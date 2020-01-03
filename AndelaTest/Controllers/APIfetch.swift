//
//  APIfetch.swift
//  AndelaTest
//
//  Created by Cole on 31/12/2019.
//  Copyright © 2019 Cole. All rights reserved.
//

import UIKit


class NetworkProcession: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func network_request(){
        
        
        
        let urlToRequest = bookList
        var request = URLRequest(url: URL(string: urlToRequest)!)
        request.httpMethod = "GET"
        request.timeoutInterval = 100
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            DispatchQueue.main.async() {
                
                let errorCode = (error as? NSError)?.code
                
                if errorCode == -1001 {
                    
                    
                } else {
                    
                    //print("JSON_data")
                    //print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
                    
                    
                    do{
                        
                        //print("Do state..")
                        
                        //created the json decoder
                        let decoder = JSONDecoder()
                        
                        //using the array to put values
                        let feedjson = try decoder.decode(Welcome.self, from: data!)
                        let feeddata = feedjson.entries
                        BookEntries = feeddata
                        
                        //print("media_results")
                        //print(BookEntries)
                        
                        
                        bookTable.reloadData()
                        
                    } catch {
                        
                        //print("JSON error")
                        
                    }
                    
                }
                
            }
        }
        task.resume()
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Num: \(indexPath.row)")
        //print("Value: \(BookEntries[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookEntries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = bookData(frame: CGRect(x: 0,y: 0,width: self.view.frame.width,height: 60), title: "Media")
        
        cell.contentMode = .scaleAspectFit
        
        cell.bookName.text = BookEntries[indexPath.row].api
        
        cell.bookDescription.text = BookEntries[indexPath.row].entryDescription
        
        cell.bookDescription.numberOfLines = 0
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100 //or whatever you need
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

