//
//  ViewController.swift
//  DemoUICollectionView
//
//  Created by Muhammad Abdullah Al Mamun on 13/7/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
 
    @IBOutlet weak var collectionView: UICollectionView!
    
    //var itemindex_forload = 0
    //let defaults = UserDefaults.standard
    
    var iDnumber = [String]()
    var email = [String]()
    var firstName = [String]()
    var lastName = [String]()
    
    //https://api.myjson.com/bins/m8a1r
    
    var item = ["item1", "item2", "item3", "item4", "item5", "item6", "item7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib.init(nibName: "customCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        
        getdatafromServer()
        
       
    }
    
    let layout = UICollectionViewFlowLayout()
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iDnumber.count
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       
 
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! customCell
        //This creates the shadows and modifies the cards a little bit
       cell.contentView.layer.cornerRadius = 4.0
       cell.contentView.layer.borderWidth = 1.0
//        //cell.contentView.layer.borderColor = UIColor.clear.cgColor
//        //cell.contentView.layer.masksToBounds = false
//        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
//        cell.layer.shadowOpacity = 1.0
//        cell.layer.masksToBounds = false
//        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        cell.userID.text = iDnumber[indexPath.row]
        cell.firstName.text = firstName[indexPath.row]
        cell.lastName.text = lastName[indexPath.row]
        cell.email.text = email[indexPath.row]
      
        return cell
 
    }
    
    
  
    
  
    
    
    
    
    
    //this is the second task
    func getdatafromServer(){
        
        let jsonUrlString = "https://api.myjson.com/bins/65v51"
        guard let url = URL(string: jsonUrlString) else { return }
        
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            
            // save data as string
            //let dataAsString = String(data: data!, encoding: .utf8)
            
           
            //print(dataAsString)
            
           // self.defaults.set(dataAsString, forKey: "savedString")
            
            
            
            //let stringdata = self.defaults.string(forKey: "savedString")?.data(using: .utf8)
           // print(stringdata)
            
            do{
                let jsondata = try JSONDecoder().decode(Base.self, from:data!)
                
                //print(jsondata)
               
                
                DispatchQueue.main.async() {
                    
                    for initval in 0..<jsondata.data!.count
                    {
                        //self.titleNumber.append(String(describing:jsondata.male!)+"K")
                        self.iDnumber.append(String(describing:jsondata.data![initval].id!))
                        self.email.append(String(describing:jsondata.data![initval].email!))
                        print(String(describing:jsondata.data![initval].email!))
                        self.firstName.append(String(describing:jsondata.data![initval].first_name!))
                        self.lastName.append(String(describing:jsondata.data![initval].last_name!))
                    }
                    
                    print(self.iDnumber.count)
                    if self.iDnumber.count > 0{
                        self.collectionView.reloadData()
                       // self.collectionView.collectionViewLayout = self.layout
                    }
                 
                 
                }
                
              
            }catch let jsonErr{
                print(jsonErr)
                
            }
            
            }.resume()
        
        
    }
    
    func anotherPostmethoddatafinding(){
        
            
            //declare parameter as a dictionary which contains string as key and value combination. considering inputs are valid
            
            let parameters = ["id": 13, "name": "jack"] as [String : Any]
            
            //create the url with URL
            let url = URL(string: "www.thisismylink.com/postName.php")! //change the url
            
            //create the session object
            let session = URLSession.shared
            
            //now create the URLRequest object using the url object
            var request = URLRequest(url: url)
            request.httpMethod = "POST" //set http method as POST
            
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
            } catch let error {
                print(error.localizedDescription)
            }
            
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            
            //create dataTask using the session object to send data to the server
            let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
                
                guard error == nil else {
                    return
                }
                
                guard let data = data else {
                    return
                }
                //let dataAsString = String(data: data, encoding: .utf8)
                /*
                do {
                    //create json object from data
                    
                    if let myjson = try JSONDecoder().decode(Base.self, from:data){
                        
                        print(myjson)
                        // handle json...
                    }
                } catch let error {
                    print(error.localizedDescription)
                }
 */
                
                do {
                    //create json object from data
                    
                    if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                        print(json)
                        // handle json...
                    }
                } catch let error {
                    print(error.localizedDescription)
                }
                
                
            })
            task.resume()
        }
    
    
    
    
    
    
    func getpostmethodData(){
        let url = URL(string: "http://www.thisismylink.com/postName.php")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let parameters: [String: Any] = [
            "id": 13,
            "name": "Jack & Jill"
        ]
        request.httpBody = parameters.percentEscaped().data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data,
                let response = response as? HTTPURLResponse,
                error == nil else {                                              // check for fundamental networking error
                    print("error", error ?? "Unknown error")
                    return
            }
            
            guard (200 ... 299) ~= response.statusCode else {                    // check for http errors
                print("statusCode should be 2xx, but is \(response.statusCode)")
                print("response = \(response)")
                return
            }
            
            let responseString = String(data: data, encoding: .utf8)
            //print("responseString = \(responseString)")
        }
        
        task.resume()
    }
    
    

    

    


}


extension Dictionary {
    func percentEscaped() -> String {
        return map { (key, value) in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            return escapedKey + "=" + escapedValue
            }
            .joined(separator: "&")
    }
}

extension CharacterSet {
    static let urlQueryValueAllowed: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="
        
        var allowed = CharacterSet.urlQueryAllowed
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
}

