//
//  AddWarrantyViewController.swift
//  MyISProject
//
//  Created by Kamonpan Ketlue on 7/15/2560 BE.
//  Copyright © 2560 Kamonpan Ketlue. All rights reserved.
//

import UIKit

var Products = ["ทีวี","ตู้เย็น","ไมโครเวฟ","มือถือ"]
var Price = [12000,8500,2500,25000]
var ProductIndex = 0
class AddWarrantyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // แสดงrowเท่ากับข้อมูลที่มี
        return Products.count
    }
    //ดึงข้อมูลมาแสดงที่  table view
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AddWarrantyTableViewController
        
        cell.ProductImage.image = UIImage(named:(Products[indexPath.row]+".jpg"))
        cell.ProductNameLbl.text = Products[indexPath.row]
        cell.PriceLbl.text = "สินค้าราคา \(Price[indexPath.row]) บาท"
        return cell
    }
    
    //click เลือกสินค้า แล้วจะไปแสดงหน้ารายละเอียด
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ProductIndex = indexPath.row
        performSegue(withIdentifier: "GoToDetailProductSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
