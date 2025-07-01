//
//  ViewController.swift
//  spotify_leticia
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func colorTransition(_ sender: Any) {
        self.view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
                UIView.animate(withDuration: 5, animations: {
                    self.view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
                })
    }
    
}

