//
//  MainRemittanceViewController.swift
//  CobaLogin
//
//  Created by developer on 10/03/23.
//

import UIKit
import Localize_Swift

class MainRemittanceViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var sixthView: UIView!
    
    @IBOutlet weak var amountOfTransferLabel: UILabel!
    @IBOutlet weak var amountYouSendLabel: UILabel!
    @IBOutlet weak var amountOfTransferTextField: UITextField!
    
    @IBOutlet weak var receivingMoneyMethodLabel: UILabel!
    @IBOutlet weak var bankAccountButton: UIButton!
    @IBOutlet weak var cheapestFeeLabel: UILabel!
    @IBOutlet weak var eWalletButton: UIButton!
    
    @IBOutlet weak var feeLabel: UILabel!
    @IBOutlet weak var amountWellConvertLabel: UILabel!
    @IBOutlet weak var currentRateLabel: UILabel!
   
    @IBOutlet weak var amountReceivedLabel: UILabel!
    @IBOutlet weak var amountReceivedTextField: UITextField!
    
    @IBOutlet weak var recipientsEwalletId: UILabel!
    @IBOutlet weak var makeSureTheEwallet: UILabel!
    
    @IBOutlet weak var informationLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var borderTextFieldViewSend: UIView!
    @IBOutlet weak var borderTextFieldViewReceive: UIView!
    @IBOutlet weak var borderTextFieldViewIdEwallet: UIView!
    
    @IBOutlet weak var shadowView: UIView!
    
    let availableLanguage = Localize.availableLanguages()
    var actionSheet: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigation()
        shadowBottomView()
        borderTextField()
        setTextLanguage()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(setTextLanguage), name: NSNotification.Name(LCLLanguageChangeNotification), object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    func shadowBottomView() {
        shadowView.bottomShadow()
    }
    
    func borderTextField() {
        borderTextFieldViewSend.borderTextFieldBox()
        borderTextFieldViewReceive.borderTextFieldBox()
        borderTextFieldViewIdEwallet.borderTextFieldBox()
    }
    
    @objc func setTextLanguage() {
        configureNavigation()
        customButton()
        
        amountOfTransferLabel.text = "amount_of_transfer".localized(using: "MainRemittance")
        amountYouSendLabel.text = "amount_you_send".localized(using: "MainRemittance")
        
        
        receivingMoneyMethodLabel.text = "receiving_money_method".localized(using: "MainRemittance")
        bankAccountButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        bankAccountButton.setTitle("button_bank_account_number".localized(), for: .normal)
        eWalletButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        eWalletButton.setTitle("button_ewallet".localized(), for: .normal)
        cheapestFeeLabel.text = "cheapest_fee".localized(using: "MainRemittance")
        
        feeLabel.text = "fee".localized(using: "MainRemittance")
        amountWellConvertLabel.text = "amount_well_convert".localized(using: "MainRemittance")
        currentRateLabel.text = "current_rate".localized(using: "MainRemittance")
        
        amountReceivedLabel.text = "amount_received".localized(using: "MainRemittance")
        
        recipientsEwalletId.text = "recipients_ewallet_id".localized(using: "MainRemittance")
        makeSureTheEwallet.text = "make_sure_the_ewallet".localized(using: "MainRemittance")
        
        informationLabel.text = "information".localized(using: "MainRemittance")
        
        totalAmountLabel.text = "total_amount".localized(using: "MainRemittance")
    }
    
    private func customButton() {
        nextButton.customNextButton()
    }
    
    func configureNavigation() {
        title = "title_remittance".localized()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.gray.cgColor
        self.navigationController?.navigationBar.layer.shadowOpacity = 0.2
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.navigationController?.navigationBar.layer.shadowRadius = 2
        
        let changeLanguage = UIButton(type: .system)
        changeLanguage.setImage(UIImage(named: "language"), for: .normal)
        changeLanguage.setTitle("button_language".localized(), for: .normal)
        changeLanguage.titleLabel?.font = UIFont.systemFont(ofSize: 12)
//        changeLanguage.sizeToFit()
        changeLanguage.addTarget(self, action: #selector(self.changeLanguage(sender:)), for: .touchUpInside)
        changeLanguage.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        changeLanguage.layer.borderWidth = 0.5
        changeLanguage.layer.borderColor = UIColor.lightGray.cgColor
        changeLanguage.layer.cornerRadius = 8
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: changeLanguage)
        
    }
    

    @objc private func changeLanguage(sender: UIButton) {
        actionSheet = UIAlertController(title: nil, message: "Switch Language", preferredStyle: UIAlertController.Style.actionSheet)
        for language in availableLanguage {
            let displayName = Localize.displayNameForLanguage(language)
            let languageAction = UIAlertAction(title: displayName, style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                Localize.setCurrentLanguage(language)
            })
            actionSheet.addAction(languageAction)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {
            (alert: UIAlertAction) -> Void in
        })
        actionSheet.addAction(cancelAction)
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let nib = BankAccountRecipientsBankInfoViewController(nibName: "BankAccountRecipientsBankInfo", bundle: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.pushViewController(nib, animated: true)
    }
    
    
}
