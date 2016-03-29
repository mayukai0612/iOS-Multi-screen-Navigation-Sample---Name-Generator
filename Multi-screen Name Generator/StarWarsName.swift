//
//  StarWarsName.swift
//  Multi-screen Name Generator
//
//  Created by Yukai Ma on 15/03/2016.
//  Copyright © 2016 Yukai Ma. All rights reserved.
//

import UIKit

class StarWarsName: NSObject {

    var FirstName: String?
    var SurName: String?
    var MothersMaidenName: String?
    var BirthPlace :String?
    var FavouriteBrand: String?
    
    override init() {
        self.FirstName = "unknown"
        self.SurName = "unknown"
        self.MothersMaidenName = "unknown"
        self.BirthPlace = "unknown"
        self.FavouriteBrand = "unknown"
    }
    init(FirstName: String,SurName: String,MothersMaidenName: String,BirthPlace:String,FavouriteBrand: String) {
        self.FirstName = FirstName
        self.SurName = SurName
        self.MothersMaidenName = MothersMaidenName
        self.BirthPlace = BirthPlace
        self.FavouriteBrand = FavouriteBrand
    }
    
    func getFirstname() ->String{
    
      return self.FirstName!
    }
    
    func getSurname() ->String{
        
        return self.SurName!
    }
    
    func getMaidenName() ->String{
        
        return self.MothersMaidenName!
    }
    func getBirthPlace() ->String{
        
        return self.BirthPlace!
    }
    
    func getFavouriteBrand() ->String{
        
        return self.FavouriteBrand!
    }
    
}
