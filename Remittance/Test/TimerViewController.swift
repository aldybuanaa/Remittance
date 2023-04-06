//
//  ViewController.swift
//  Remittance
//
//  Created by developer on 04/04/23.
//

import UIKit
import BottomSheetController

class TimerViewController: UIViewController {
    
    @IBOutlet weak var countDownLabel: UILabel!
    
    var timeRemaining: Int = 5
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func halamanBTapped(_ sender: Any) {
        let nib = MainRemittanceViewController(nibName: "MainRemittance", bundle: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.pushViewController(nib, animated: true)
    }
    
    
    @IBAction func startTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if timeRemaining > 0 {
            timeRemaining -= 1
        } else {
            timer.invalidate()
            let nib = EwalletDataConfirmationViewController(nibName: "EwalletDataConfirmation", bundle: nil)
            nib.modalPresentationStyle = .overFullScreen
            let bottomSheetController = BottomSheetController(contentViewController: nib)
            
            
            present(bottomSheetController, animated: true)
        }
        countDownLabel.text = "\(timeRemaining)"
    }

}
