//
//  MainMenuViewController.swift
//  Remittance
//
//  Created by developer on 03/04/23.
//

import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func remittanceButtonTapped(_ sender: Any) {
        let nib = MainRemittanceViewController(nibName: "MainRemittance", bundle: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.pushViewController(nib, animated: true)
    }
    

}
