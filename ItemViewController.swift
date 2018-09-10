//
//  ItemViewController.swift
//  Shopping_List
//
//  Created by Manali Rami on 2018-09-09.
//  Copyright © 2018 Manali Rami. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemCount: UILabel!
    
    var name = ""
    var image = ""
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.itemName.text = name
       self.itemImage.image = UIImage(named: image)
       self.itemCount.text = "Count: \(count)"
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
