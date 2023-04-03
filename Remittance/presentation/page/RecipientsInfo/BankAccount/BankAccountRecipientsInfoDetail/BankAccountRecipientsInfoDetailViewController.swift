//
//  BankAccountRecipientsInfoDetailViewController.swift
//  CobaLogin
//
//  Created by developer on 30/03/23.
//

import UIKit
import BottomSheetController
import iOSDropDown

class BankAccountRecipientsInfoDetailViewController: UIViewController {

    @IBOutlet weak var stepRecipientsBankDetailsLabel: UILabel!
    @IBOutlet weak var stepRecipientsInfoDetailsLabel: UILabel!
    @IBOutlet weak var stepAdditionalInfoDetailsLabel: UILabel!
    @IBOutlet weak var recipientsInfoDetailsLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var relationshipLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var makeSureThePhoneLabel: UILabel!
    @IBOutlet weak var recipientAddressLabel: UILabel!
    @IBOutlet weak var recipientAddressDetailsLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var saveRecipientsDataLabel: UILabel!

    @IBOutlet weak var enterFullNameTextField: UITextField!
    @IBOutlet weak var enterPhoneNumberTextField: UITextField!
    
    @IBOutlet var optionRelationship: DropDown!
    @IBOutlet var optionCity: DropDown!
    
    @IBOutlet weak var shadowBottomView: UIView!
    @IBOutlet weak var shadowStepperView: UIView!
    
    @IBOutlet weak var borderTextFieldViewFullName: UIView!
    @IBOutlet weak var borderTextFieldViewRelationship: UIView!
    @IBOutlet weak var borderTextFieldViewPhoneNumber: UIView!
    @IBOutlet weak var borderTextFieldViewAddress: UIView!
    @IBOutlet weak var borderTextFieldViewCity: UIView!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var nextButtonRecipients: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
        borderTextField()
        configureNavigation()
        shadowView()
        setTextLanguage()
        optionDropDown()
        // Do any additional setup after loading the view.
    }
    
    private func setTextLanguage(){
        stepRecipientsBankDetailsLabel.text = "recipients_bank_details".localized(using: "RecipientsInfoStep1")
        stepRecipientsInfoDetailsLabel.text = "recipients_info_details".localized(using: "RecipientsInfoStep2")
        stepAdditionalInfoDetailsLabel.text = "additional_info_details".localized(using: "RecipientsInfoStep3")
        recipientsInfoDetailsLabel.text = "recipients_info_details".localized(using: "RecipientsInfoStep2")
        fullNameLabel.text = "full_name".localized(using: "RecipientsInfoStep2")
        relationshipLabel.text = "relationship".localized(using: "RecipientsInfoStep2")
        phoneNumberLabel.text = "phone_number".localized(using: "RecipientsInfoStep2")
        makeSureThePhoneLabel.text = "make_sure_the_phone".localized(using: "RecipientsInfoStep2")
        recipientAddressLabel.text = "recipient_address".localized(using: "RecipientsInfoStep2")
        recipientAddressDetailsLabel.text = "recipient_address_details".localized(using: "RecipientsInfoStep2")
        cityLabel.text = "city".localized(using: "RecipientsInfoStep2")
        saveRecipientsDataLabel.text = "save_recipients_data".localized(using: "RecipientsInfoStep2")
        
        enterFullNameTextField.placeholder = "enter_full_name".localized(using: "RecipientsInfoStep2")
        enterPhoneNumberTextField.placeholder = "enter_phone_number".localized(using: "RecipientsInfoStep2")
        
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
        optionRelationship.placeholder = "choose_relationship".localized(using: "RecipientsInfoStep2")
        optionRelationship.optionArray = ["option 1"]
        optionRelationship.optionIds = [1]
        optionRelationship.checkMarkEnabled = false
        optionRelationship.semanticContentAttribute = .forceLeftToRight
        optionRelationship.arrowSize = 10
        
        optionCity.placeholder = "choose_city".localized(using: "RecipientsInfoStep2")
        optionCity.optionArray = ["option 1", "option 1", "option 1", "option 1", "option 1", ]
        optionCity.optionIds = [1]
        optionCity.checkMarkEnabled = false
        optionCity.semanticContentAttribute = .forceLeftToRight
        optionCity.arrowSize = 10
    }
    
    private func shadowView() {
        shadowStepperView.dropShadow()
        shadowBottomView.bottomShadow()
    }
    
    private func customButton() {
        nextButtonRecipients.customNextButton()
        
        checkButton.setImage(UIImage(named:"ICuncheckedbox"), for: .normal)
        checkButton.setImage(UIImage(named:"ICcheckedbox"), for: .selected)
    }
    
    private func borderTextField() {
        borderTextFieldViewFullName.borderTextFieldBox()
        borderTextFieldViewRelationship.borderTextFieldBox()
        borderTextFieldViewPhoneNumber.borderTextFieldBox()
        borderTextFieldViewAddress.borderTextFieldBox()
        borderTextFieldViewCity.borderTextFieldBox()
    }
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
            }, completion: nil)
        }
    }
    
    
    @IBAction func nextButtonRecipientsTapped(_ sender: Any) {
        
        let nib = BankAccountAdditionalInfoDetailViewController(nibName: "BankAccountAdditionalInfoDetail", bundle: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        navigationController?.pushViewController(nib, animated: true)
    }

}
