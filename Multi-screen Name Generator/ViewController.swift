//
//  ViewController.swift
//  Multi-screen Name Generator
//
//  Created by Yukai Ma on 15/03/2016.
//  Copyright © 2016 Yukai Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet var firstname: UITextField!
    
    @IBOutlet var surname: UITextField!
    
    @IBOutlet var maidenname: UITextField!

    @IBOutlet var favouritebrand: UITextField!
    
    @IBOutlet var birthplace: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "generateStarswarName") {
        let fn = deleteWhiteSpace(self.firstname.text!);
        let sn = deleteWhiteSpace(self.surname.text!);
        let mn = deleteWhiteSpace(self.maidenname.text!);
        let fb = deleteWhiteSpace(self.favouritebrand.text!);
        let bp = deleteWhiteSpace(self.birthplace.text!);

        if (fn.characters.count < 3||sn.characters.count < 2||bp.characters.count < 3||mn.characters.count<2)
        {
            let alertController = UIAlertController(title:"Alert", message: "FirstName at least 3 char "+"\n"+"Surname at least 2 char"+"\n"+"birthplace at least 3 char"+"\n"+"maidenname at least 2 char", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil)); self.presentViewController(alertController, animated: true, completion: nil)
            
        }else{
        let swn: StarWarsName = StarWarsName(FirstName: fn,SurName: sn,
            MothersMaidenName: mn,BirthPlace:bp,FavouriteBrand: fb)
        if let destinationVC = segue.destinationViewController as?
            ViewStarWarController{ destinationVC.currentSWN = swn
            }
            } }
    }
    
    func deleteWhiteSpace(aString: String)->String{
        //delete whiteSpaces before and after the string
        let whitespace = NSCharacterSet.whitespaceAndNewlineCharacterSet()
        var str = aString.stringByTrimmingCharactersInSet(whitespace)
        //delete whiteSpaces between characters of a string
        var tempArray = str.componentsSeparatedByCharactersInSet(whitespace)
        tempArray = tempArray.filter{
            $0 != ""
        }
        str = tempArray.joinWithSeparator("")
        return str;
    }

}

