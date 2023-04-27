//
//  DessertDetailViewController.swift
//  fetch-assessment
//
//  Created by Musub Omair on 4/25/23.
//

import UIKit

class DessertDetailViewController: UIViewController {
    @IBOutlet weak var dessertImageView: UIImageView!
    @IBOutlet weak var dessertNameLabel: UILabel!
    @IBOutlet weak var instructionsTextView: UITextView!
    @IBOutlet weak var ingredientsTextView: UITextView!
    
    var dessertImageURL = ""
    var dessertName = ""
    var instructionsText = ""
    var ingredientsText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        // mapping pushed values to UI objects 
        let url = URL(string: dessertImageURL)
        dessertImageView.kf.setImage(with: url)
        dessertNameLabel.text = dessertName.uppercased()
        instructionsTextView.text = instructionsText
        ingredientsTextView.text = ingredientsText
    }
    
    @IBAction func backButtonTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
