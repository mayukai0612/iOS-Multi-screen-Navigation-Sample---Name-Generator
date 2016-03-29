//
//  ViewStarWarController.swift
//  Multi-screen Name Generator
//
//  Created by Yukai Ma on 15/03/2016.
//  Copyright © 2016 Yukai Ma. All rights reserved.
//

import UIKit

class ViewStarWarController: UIViewController {

    var currentSWN:StarWarsName?
    
    @IBOutlet var shownname: UILabel!
    
    override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
        
        let fn = currentSWN?.getFirstname()
        let sn = currentSWN?.getSurname()
        let mn = currentSWN?.getMaidenName()
        
        let surnameLength = currentSWN!.getSurname().characters.count

        let index = fn!.startIndex.advancedBy(0)//fn index0
        let index2 = mn!.startIndex.advancedBy(0)// mn index0
        let index3 = mn!.startIndex.advancedBy(1)// mn index1
        let index4 = sn!.startIndex.advancedBy(surnameLength-2)
        let index5 = sn!.startIndex.advancedBy(surnameLength-1)
        
        
        let s1 = String(currentSWN!.getFirstname()[index]).uppercaseString

        
        
        let s2 = currentSWN!.getFirstname()[1...2].lowercaseString;
        let s3 = currentSWN!.getSurname()[0...1].lowercaseString;
        let s4 = String(currentSWN!.getMaidenName()[index2]).uppercaseString
        let s5 = String(currentSWN!.getMaidenName()[index3]).lowercaseString
        let s6 = currentSWN!.getBirthPlace()[0...2].lowercaseString
        
        let s7 = String(currentSWN!.getSurname()[index4]).uppercaseString
        let s8 = String(currentSWN!.getSurname()[index5]).lowercaseString
     
        let s9 = currentSWN!.getFavouriteBrand().lowercaseString
        print("1\(s1)")
        print("2\(s2)")
        print("3\(s3)")
        print("4\(s4)")
        print("5\(s5)")
        print("6\(s6)")
        print("7\(s7)")
        print("8\(s8)")
        print("9\(s9)")
        self.shownname.text = "\(s1)\(s2)\(s3)  \(s4)\(s5)\(s6) of \(s7)\(s8)\(s9)"
        
        
        
    
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension String {
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.startIndex.advancedBy(r.startIndex)
            let endIndex = self.startIndex.advancedBy(r.endIndex)
            
            return self[Range(start: startIndex, end: endIndex)]
        }
    }
}