//
//  ViewController.swift
//  AppNationCase
//
//  Created by cem on 30.01.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var flightNoLabel: UILabel!
    @IBOutlet weak var flightScheduleLabel: UILabel!
    @IBOutlet weak var patchImage: UIImageView!
    @IBOutlet weak var statementLabel: UILabel!
    @IBOutlet weak var detailsText: UITextView!
    
    var viewModel = ViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.owned = self
        viewModel.fetch()
    }

    func setupUI() {
        
        nameLabel.text = viewModel.flightDetails?.name
        flightNoLabel.text = "\(viewModel.flightDetails?.flightNumber ?? 0)"
        flightScheduleLabel.text = viewModel.flightDetails?.dateUTC
        
        if viewModel.flightDetails?.success != false {
            statementLabel.text = "Success"
            statementLabel.textColor  = UIColor.green
        }else{
            statementLabel.text = "Faild"
            statementLabel.textColor = UIColor.red
        }
        detailsText.text = viewModel.flightDetails?.details
        
        
    }

}

