//
//  PromotionViewController.swift
//  MyISProject
//
//  Created by Kamonpan Ketlue on 7/28/2560 BE.
//  Copyright © 2560 Kamonpan Ketlue. All rights reserved.
//

import UIKit

class PromotionViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
    
    var Promotion = ["air","samsung1","wash"]
    var Brand = [UIImage(named:"Canon"),UIImage(named:"aj"),UIImage(named:"lg"),UIImage(named:"powermall"),UIImage(named:"samsung")]
    
    @IBOutlet weak var PromoTableView: UITableView!
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // แสดงrowเท่ากับข้อมูลที่มี
        return Promotion.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewController
        
        cell.PromoImage.image = UIImage(named:(Promotion[indexPath.row]+".jpg"))
        return cell
    }
    //click เลือกสินค้า แล้วจะไปแสดงหน้ารายละเอียด
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ProductIndex = indexPath.row
        performSegue(withIdentifier: "GoToWebViewSegue", sender: self)
    }
    
    
    //collectionview brand
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Brand.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.BrandImage.image = Brand[indexPath.row]
        return cell
    
}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
