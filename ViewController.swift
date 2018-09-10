//
//  ViewController.swift
//  Shopping_List
//
//  Created by Manali Rami on 2018-09-08.
//  Copyright © 2018 Manali Rami. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
   
    
}

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let itemName = ["Apple", "Strawberries", "Oranges"]
    let itemCount = [2, 4, 2]
    let itemImage = ["apple.jpg", "Strawberries.jpg", "oranges.jpg"]
    
    var selectedIndex = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil) , forCellReuseIdentifier: "custom")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomTableViewCell
        
        cell.itemName.text = itemName[indexPath.row]
        cell.itemCount.text = "Count: \(itemCount[indexPath.row])"
        cell.itemImage.image = UIImage(named: itemImage[indexPath.row])
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedIndex = indexPath.row
        
        performSegue(withIdentifier: "item", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "item" {
       
            var vc : ItemViewController = segue.destination as! ItemViewController
           
            vc.name = itemName[selectedIndex]
            vc.count = itemCount[selectedIndex]
            vc.image = itemImage[selectedIndex]
        }
    }
}


