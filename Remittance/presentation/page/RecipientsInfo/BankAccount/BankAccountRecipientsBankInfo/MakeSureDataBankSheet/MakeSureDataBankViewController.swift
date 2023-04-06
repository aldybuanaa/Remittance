//
//  MakeSureDataBankViewController.swift
//  CobaLogin
//
//  Created by developer on 27/03/23.
//

import UIKit
import BottomSheetController

class MakeSureDataBankViewController: UIViewController {
    
    @IBOutlet weak var makeSureTheRecipientLabel: UILabel!
    @IBOutlet weak var theIncorrectDataLabel: UILabel!
    
    @IBOutlet weak var nextButtonMakeSure: UIButton!
    var onClick : (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
        setTextLanguage()
        // Do any additional setup after loading the view.
    }
    
    private func setTextLanguage(){
        makeSureTheRecipientLabel.text = "make_sure_the_recipient".localized(using: "RecipientsInfoStep1")
        theIncorrectDataLabel.text = "the_incorrect_data".localized(using: "RecipientsInfoStep1")
    }
    
    private func customButton() {
        nextButtonMakeSure.customNextButton()
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func nextButtonMakeSureTapped(_ sender: Any) {
        
        self.dismiss(animated: false) {
            let nib = BankAccountRecipientsInfoDetailViewController(nibName: "BankAccountRecipientsInfoDetail", bundle: nil)
            
            self.navigationController?.pushViewController(nib, animated: true)
        }
    }

}
