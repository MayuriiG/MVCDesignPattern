//
//  ViewController.swift
//  MVC_MODEL2
//
//  Created by Mayurii Gajbhiye on 22/07/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var arrdata = [CustomeModel]()//.....Access to model data
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrdata = CustomData.getCustomData()
    
    
    }
}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
//
        
        //Check the customCell.swift......................................!!!
//        cell.img.image = arrdata[indexPath.row].img
//        cell.lbl.text = arrdata[indexPath.row].title
        
        
        
        cell.dataa = arrdata[indexPath.row]
        return cell
    }
    
    
    

}
    

    
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let collectionWidth  = collectionView.bounds.width
//
//        return CGSize(width: collectionWidth/1, height: collectionWidth/1)
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//
    
//    }

