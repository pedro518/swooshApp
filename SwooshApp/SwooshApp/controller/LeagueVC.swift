//
//  LeagueVCViewController.swift
//  SwooshApp
//
//  Created by Pedro Antonio Ruiz Cuesta on 17/03/2019.
//  Copyright © 2019 Pedro Antonio Ruiz Cuesta. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!

    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague("mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague("womens")
        
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague("coed")
    }
    
    private func selectLeague(_ league : String){
        player.desiredLeague = league
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
		
