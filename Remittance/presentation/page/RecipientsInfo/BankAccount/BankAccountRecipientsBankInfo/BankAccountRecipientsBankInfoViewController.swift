//
//  RecipientsBankInfoViewController.swift
//  CobaLogin
//
//  Created by developer on 24/03/23.
//

import UIKit
import BottomSheetController
import iOSDropDown

class BankAccountRecipientsBankInfoViewController: UIViewController {
    
    @IBOutlet weak var stepRecipientsBankDetailsLabel: UILabel!
    @IBOutlet weak var stepRecipientsInfoDetailsLabel: UILabel!
    @IBOutlet weak var stepAdditionalInfoDetailsLabel: UILabel!
    @IBOutlet weak var recipientsBankDetailsLabel: UILabel!
    @IBOutlet weak var recipientsBankNameLabel: UILabel!
    @IBOutlet weak var accountNumberLabel: UILabel!
    @IBOutlet weak var bankAccountOwnersNameLabel: UILabel!
    @IBOutlet weak var pleaseMakeSureLabel: UILabel!
    
    @IBOutlet var optionBank: DropDown!
    
    @IBOutlet weak var enterAccountNumberTextField: UITextField!
    @IBOutlet weak var enterBankAccountOwnersTextField: UITextField!
    
    @IBOutlet weak var stepperView: UIView!
    @IBOutlet weak var shadowBottomView: UIView!
    
    @IBOutlet weak var borderTextFieldViewBankName: UIView!
    @IBOutlet weak var borderTextFieldViewAccountNumber: UIView!
    @IBOutlet weak var borderTextFieldViewBankAccountOwners: UIView!
    
    @IBOutlet weak var nextButtonBankInfo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
        configureNavigation()
        shadowView()
        borderTextField()
        borderTextField()
        optionDropDown()
        setTextLanguage()
        // Do any additional setup after loading the view.
    }
    
    private func setTextLanguage(){
        stepRecipientsBankDetailsLabel.text = "recipients_bank_details".localized(using: "RecipientsInfoStep1")
        stepRecipientsInfoDetailsLabel.text = "recipients_info_details".localized(using: "RecipientsInfoStep2")
        stepAdditionalInfoDetailsLabel.text = "additional_info_details".localized(using: "RecipientsInfoStep3")
        recipientsBankDetailsLabel.text = "recipients_bank_details".localized(using: "RecipientsInfoStep1")
        recipientsBankNameLabel.text = "recipients_bank_name".localized(using: "RecipientsInfoStep1")
        accountNumberLabel.text = "account_number".localized(using: "RecipientsInfoStep1")
        bankAccountOwnersNameLabel.text = "bank_account_owners_name".localized(using: "RecipientsInfoStep1")
        pleaseMakeSureLabel.text = "please_make_sure".localized(using: "RecipientsInfoStep1")
        
        enterAccountNumberTextField.placeholder = "enter_account_number".localized(using: "RecipientsInfoStep1")
        enterBankAccountOwnersTextField.placeholder = "enter_bank_account_owners_name".localized(using: "RecipientsInfoStep1")
        
    }
    
    private func shadowView() {
        stepperView.dropShadow()
        shadowBottomView.bottomShadow()
    }
    
    private func configureNavigation() {
        title = "title_recipients_info".localized()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.white.cgColor
        self.navigationController?.navigationBar.layer.shadowOpacity = 0
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.navigationController?.navigationBar.layer.shadowRadius = 2
    }
    
    private func optionDropDown(){
        optionBank.placeholder = "choose_bank".localized(using: "RecipientsInfoStep1")
        optionBank.optionArray = ["option 1"]
        optionBank.optionIds = [1]
        optionBank.checkMarkEnabled = false
        optionBank.semanticContentAttribute = .forceLeftToRight
        optionBank.arrowSize = 10
    }
    
    private func customButton() {
        nextButtonBankInfo.customNextButton()
    }
    
    private func borderTextField() {
        borderTextFieldViewBankName.borderTextFieldBox()
        borderTextFieldViewAccountNumber.borderTextFieldBox()
        borderTextFieldViewBankAccountOwners.borderTextFieldBox()
    }
    
    
    
    @IBAction func nextButtonBankInfoTapped(_ sender: Any) {
        
//        let nib = BankAccountRecipientsInfoDetailViewController(nibName: "BankAccountRecipientsInfoDetail", bundle: nil)
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
//
//        navigationController?.pushViewController(nib, animated: true)
        
        let nib = MakeSureDataBankViewController(nibName: "MakeSureDataBank", bundle: nil)
        nib.modalPresentationStyle = .overFullScreen
//        nib.onClick = {
//            let nib = BankAccountRecipientsInfoDetailViewController(nibName: "BankAccountRecipientsInfoDetail", bundle: nil)
//
//            self.navigationController?.pushViewController(nib, animated: true)
//        }
        let bottomSheetController = BottomSheetController(contentViewController: nib)
        
        
        self.present(bottomSheetController, animated: true)
    }


}
