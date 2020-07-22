//
//  CustomeCell.swift
//  MVC_MODEL2
//
//  Created by Mayurii Gajbhiye on 22/07/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit


//put the name same as the name given to the cell clas
//identifier - CustomCell

class CustomCell:UICollectionViewCell{
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    
    
    
    //computed property......
    
    var dataa: CustomeModel?{
        didSet{
            img.image = dataa?.img
            lbl.text = dataa?.title
        }
    }
    
}
