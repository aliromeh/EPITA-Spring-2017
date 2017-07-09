//
//  Weather.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 7/9/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation
import UIKit

class Weather{
    
    var sCity : String
    var iCitytemperature : Int
    var UiPicture : UIImage? // stored property which is a variable ..
    //the questionmark basically tells the program that
    //this variable is optional .. it can be there or it can be null
    
    //we use "let" for a constant
    
    //we initialize the class
    init?(cityName : String, citytemperature : Int, cityPicture : UIImage?){
        self.sCity = cityName
        self.iCitytemperature = citytemperature
        self.UiPicture = cityPicture
        if(cityName.isEmpty){
            return nil
        }
    }
}
