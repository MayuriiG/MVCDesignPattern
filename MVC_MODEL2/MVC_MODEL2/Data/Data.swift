//
//  Data.swift
//  MVC_MODEL2
//
//  Created by Mayurii Gajbhiye on 22/07/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import Foundation
import UIKit


class CustomData{
    
    //return data.............taking the data from the model.swift file
    static func getCustomData()-> [CustomeModel]{
  
        
        var arryOfData = [CustomeModel]()
                                    //data append
      arryOfData = [
        
        CustomeModel(img: #imageLiteral(resourceName: "co7"), title: "1"),
        CustomeModel(img: #imageLiteral(resourceName: "co12"), title: "2"),
        CustomeModel(img: #imageLiteral(resourceName: "co4"), title: "3"),
        CustomeModel(img: #imageLiteral(resourceName: "co13"), title: "4"),
        CustomeModel(img: #imageLiteral(resourceName: "co3"), title: "5"),
        CustomeModel(img: #imageLiteral(resourceName: "co5"), title: "6"),
        CustomeModel(img: #imageLiteral(resourceName: "co12"), title: "7"),
        CustomeModel(img: #imageLiteral(resourceName: "co8"), title: "8")
       
        ]
        
        return arryOfData
        
    }
    
    
}
