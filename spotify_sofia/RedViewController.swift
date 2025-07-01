//
//  RedViewController.swift
//  spotify_leticia
//
//  Created by COTEMIG on 03/06/25.
//

import UIKit

class RedViewController: UIViewController {

    var time = 0
    var pause = false;
    
       override func viewDidLoad() {
           super.viewDidLoad()

           // Do any additional setup after loading the view.
       }
       
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var sliderTimer: UISlider!
    @IBAction func TimerStop(_ sender: Any) {
        
        myButton.setImage(UIImage(systemName: "pause"), for: .normal)
        
                
          self.pause.toggle()
                
        sliderTimer.maximumValue = 100.0
                
                Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true){timer in
                    self.time += 5
                    
                    self.sliderTimer.value = Float(self.time)
                    
                    if self.time >= 100 {
                                    timer.invalidate()
                                    print("Timer finalizado!")
                    }
                    if (self.pause == false){
                        timer.invalidate()
                    }
                
                      }
                       
                   }
                   
               }
    
   

    
  
