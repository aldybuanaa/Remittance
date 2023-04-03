//
//  EwalletDataConfirmationViewController.swift
//  CobaLogin
//
//  Created by developer on 17/03/23.
//

import UIKit

class EwalletDataConfirmationViewController: UIViewController {
    
    @IBOutlet weak var titleDataConfirmationLabel: UILabel!
    @IBOutlet weak var makeSureAllLabel: UILabel!
    @IBOutlet weak var originCountryLabel: UILabel!
    @IBOutlet weak var destinationCountryLabel: UILabel!
    @IBOutlet weak var receivingMoneyMethodLabel: UILabel!
    @IBOutlet weak var recipientsNameLabel: UILabel!
    @IBOutlet weak var recipientsEwalletIdLabel: UILabel!
    @IBOutlet weak var amountOfTransferLabel: UILabel!
    @IBOutlet weak var currentRateLabel: UILabel!
    @IBOutlet weak var feeLabel: UILabel!
    @IBOutlet weak var convertedAmountLabel: UILabel!
    @IBOutlet weak var amountReceivedLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var nextButtonDataConfirmation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
        setTextLanguage()
//        borderBottomView()
        // Do any additional setup after loading the view.
    }
    
    private func setTextLanguage(){
        titleDataConfirmationLabel.text = "title_data_confirmation".localized()
        makeSureAllLabel.text = "make_sure_all_the_information".localized(using: "DataConfirmationRemittance")
        originCountryLabel.text = "origin_country".localized(using: "DataConfirmationRemittance")
        destinationCountryLabel.text = "destination_country".localized(using: "DataConfirmationRemittance")
        receivingMoneyMethodLabel.text = "receiving_money_method".localized(using: "DataConfirmationRemittance")
        recipientsNameLabel.text = "recipients_name".localized(using: "DataConfirmationRemittance")
        recipientsEwalletIdLabel.text = "recipients_ewallet_id".localized(using: "DataConfirmationRemittance")
        amountOfTransferLabel.text = "amount_of_transfer".localized(using: "DataConfirmationRemittance")
        currentRateLabel.text = "current_rate".localized(using: "DataConfirmationRemittance")
        feeLabel.text = "fee".localized(using: "DataConfirmationRemittance")
        convertedAmountLabel.text = "converted_amount".localized(using: "DataConfirmationRemittance")
        amountReceivedLabel.text = "amount_received".localized(using: "DataConfirmationRemittance")
        totalAmountLabel.text = "total_amount".localized(using: "DataConfirmationRemittance")
    }
    
    private func customButton() {
        nextButtonDataConfirmation.customNextButton()
    }
    
    private func borderBottomView() {
        bottomView.layer.borderWidth = 0.5
        bottomView.layer.borderColor = UIColor.lightGray.cgColor
    }

    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
