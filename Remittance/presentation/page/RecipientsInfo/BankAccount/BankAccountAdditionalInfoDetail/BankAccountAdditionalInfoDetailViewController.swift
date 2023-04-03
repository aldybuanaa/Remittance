//
//  BankAccountAdditionalInfoDetailViewController.swift
//  CobaLogin
//
//  Created by developer on 30/03/23.
//

import UIKit
import BottomSheetController
import iOSDropDown

class BankAccountAdditionalInfoDetailViewController: UIViewController {

    @IBOutlet weak var stepRecipientsBankDetailsLabel: UILabel!
    @IBOutlet weak var stepRecipientsInfoDetailsLabel: UILabel!
    @IBOutlet weak var stepAdditionalInfoDetailsLabel: UILabel!
    @IBOutlet weak var additionalInfoDetailsLabel: UILabel!
    @IBOutlet weak var sourceOfFundsLabel: UILabel!
    @IBOutlet weak var purposeOfSendingMoneyLabel: UILabel!
    @IBOutlet weak var supportingDocumentLabel: UILabel!
    @IBOutlet weak var changeFileLabel: UILabel!
    @IBOutlet weak var addFileLabel: UILabel!
    @IBOutlet weak var supportingDocumentIsLabel: UILabel!
    
    @IBOutlet var optionSourceOfFunds: DropDown!
    @IBOutlet var optionPurposeOfSending: DropDown!
    
    @IBOutlet weak var shadowStepperView: UIView!
    @IBOutlet weak var shadowBottomView: UIView!
    
    @IBOutlet weak var borderAddFileView: UIView!
    @IBOutlet weak var borderDocumentView: UIView!
    @IBOutlet weak var borderSourceView: UIView!
    @IBOutlet weak var borderPurposeView: UIView!
    
    @IBOutlet weak var nextButtonInfoDetail: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        borderTextField()
        customButton()
        shadowView()
        configureNavigation()
        setTextLanguage()
        optionDropDown()
        
        // Do any additional setup after loading the view.
    }
    
    private func setTextLanguage(){
        stepRecipientsBankDetailsLabel.text = "recipients_bank_details".localized(using: "RecipientsInfoStep1")
        stepRecipientsInfoDetailsLabel.text = "recipients_info_details".localized(using: "RecipientsInfoStep2")
        stepAdditionalInfoDetailsLabel.text = "additional_info_details".localized(using: "RecipientsInfoStep3")
        additionalInfoDetailsLabel.text = "additional_info_details".localized(using: "RecipientsInfoStep3")
        sourceOfFundsLabel.text = "source_of_funds".localized(using: "RecipientsInfoStep3")
        purposeOfSendingMoneyLabel.text = "purpose_of_sending_money".localized(using: "RecipientsInfoStep3")
        supportingDocumentLabel.text = "supporting_document".localized(using: "RecipientsInfoStep3")
        addFileLabel.text = "add_file".localized(using: "RecipientsInfoStep3")
        changeFileLabel.text = "change_file".localized(using: "RecipientsInfoStep3")
        supportingDocumentIsLabel.text = "supporting_document_is".localized(using: "RecipientsInfoStep3")
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
    
    private func customButton() {
        nextButtonInfoDetail.customNextButton()
    }
    
    private func shadowView() {
        shadowStepperView.dropShadow()
        shadowBottomView.bottomShadow()
    }
    
    private func borderTextField() {
        borderAddFileView.borderTextFieldBox()
        borderDocumentView.borderTextFieldBox()
        borderSourceView.borderTextFieldBox()
        borderPurposeView.borderTextFieldBox()
    }
    
    private func optionDropDown(){
        optionSourceOfFunds.placeholder = "choose_source_of".localized(using: "RecipientsInfoStep3")
        optionSourceOfFunds.optionArray = ["option 1"]
        optionSourceOfFunds.optionIds = [1]
        optionSourceOfFunds.checkMarkEnabled = false
        optionSourceOfFunds.semanticContentAttribute = .forceLeftToRight
        optionSourceOfFunds.arrowSize = 10
        
        optionPurposeOfSending.placeholder = "choose_purpose_of".localized(using: "RecipientsInfoStep3")
        optionPurposeOfSending.optionArray = ["option 1"]
        optionPurposeOfSending.optionIds = [1]
        optionPurposeOfSending.checkMarkEnabled = false
        optionPurposeOfSending.semanticContentAttribute = .forceLeftToRight
        optionPurposeOfSending.arrowSize = 10
    }
    
    @IBAction func nextButtonAdditionalDetailTapped(_ sender: Any) {
        
        let nib = BankAccountDataConfirmationViewController(nibName: "BankAccountDataConfirmation", bundle: nil)
        nib.modalPresentationStyle = .overFullScreen
        let bottomSheetController = BottomSheetController(contentViewController: nib)
        
        
        present(bottomSheetController, animated: true)
    }

}
