//
//  SkillVC.swift
//  SwooshApp
//
//  Created by Pedro Antonio Ruiz Cuesta on 17/03/2019.
//  Copyright © 2019 Pedro Antonio Ruiz Cuesta. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player : Player!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let desiredLeague = player.desiredLeague {
            print(desiredLeague)
        }   
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
