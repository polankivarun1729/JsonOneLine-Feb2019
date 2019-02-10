//
//  ViewController.swift
//  JsonOneLine
//
//  Created by Varun Kumar on 10/02/19.
//  Copyright © 2019 Varun Kumar. All rights reserved.
//

import UIKit
struct varunkumar {
    var str:String
    var firstName:String
    var lastName:String
}
struct feed:Decodable{
    var title:String
    var id:String
    
}
struct morecomplex:Decodable{
    var feed:feed
}
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,taped {
    func new(index: Int) {
        print("taped one is \(index)")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.delegate = self
        cell?.index = indexPath
        DispatchQueue.main.async {
            for i in 0...9{
                cell?.textLabel?.text = String(i)
            }
        }
        
        return cell!
    }
    
    override func viewDidLoad() {
        var closure:newFile? = newFile()
        closure = nil
        let t = m()
        var dict = Dictionary(grouping: asad().people) { (persons) -> String in
            print(persons.str)
            return persons.str
        }
        t.setValue("this is me", forKey: "l")
        //t.setValue("varunkumar", forKey: "n")
        guard let thisIsValue = t.value(forKey: "l") else{return}
        print(thisIsValue)
        super.viewDidLoad()
        let url = URL(string: "https://rss.itunes.apple.com/api/v1/in/apple-music/coming-soon/all/10/explicit.json")
        var json = URLSession.shared.dataTask(with: url!) { (data, resp, err) in
            do{
                let da = try JSONDecoder().decode(morecomplex.self , from: data!)
                print(da)
            }
            catch{
                print("error")
            }
        }.resume()
    }}
class m:NSObject{
    @objc var n:String?
   @objc private var l = String()
    var new:String{
        let u = value(forKey: "l") as? String ?? ""
        return u
    }
}
class asad{
let people = [
     varunkumar(str: "string1", firstName: "varun", lastName: "kumar"),
     varunkumar(str: "string2", firstName: "vamsi", lastName: "krishna"),
     varunkumar(str: "string3", firstName: "janaki", lastName: "nil"),
     varunkumar(str: "string4", firstName: "raju", lastName: "dad")
    ]
}





















