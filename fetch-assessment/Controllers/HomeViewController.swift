//
//  HomeViewController.swift
//  fetch-assessment
//
//  Created by Musub Omair on 4/24/23.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate {
    
    @IBOutlet weak var dessertTableView: UITableView!
    var dessertList = [Desserts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        getDessertList()
    }
    
    func getDessertList() {
        APIHandler.sharedInstance.getDesserts(completion: { (dessertList) in
            self.dessertList = dessertList.sorted{ $0.strMeal < $1.strMeal} // sorting dessertList alphabetically
            self.dessertTableView.reloadData() // reloading tableview after getting the required data
        })
    }
    
    func setupTableView() {
        // registering tableview for use
        dessertTableView.register(UINib(nibName: "DessertTableViewCell", bundle: nil), forCellReuseIdentifier: "DessertTableViewCell")
        dessertTableView.delegate = self
        dessertTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.dessertList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dessertTableView.dequeueReusableCell(withIdentifier: "DessertTableViewCell", for: indexPath) as! DessertTableViewCell
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 15.0
        cell.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        // using kingfisher to cache and display images
        let url = URL(string: self.dessertList[indexPath.section].strMealThumb)
        cell.dessertThumbnail.kf.setImage(with: url)
        cell.dessertName.text = self.dessertList[indexPath.section].strMeal.capitalized
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // height of tableview cell
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // creating a view that acts as a separator between cells to show spacing
        let header = UIView()
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        // height of header / spacing between cells
        return 5.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let dessertDetailViewController = storyBoard.instantiateViewController(withIdentifier: "DessertDetailViewController") as! DessertDetailViewController
        
        // calling dessert detail API on cell tap
        // and then pushing and passing required data to DessertDetail screen
        APIHandler.sharedInstance.getDessertDetail(dessertID: self.dessertList[indexPath.section].idMeal, completion: { (dessertDetail) in
            dessertDetailViewController.dessertName = self.dessertList[indexPath.section].strMeal
            dessertDetailViewController.dessertImageURL = self.dessertList[indexPath.section].strMealThumb
            dessertDetailViewController.instructionsText = dessertDetail[0].strInstructions
            dessertDetailViewController.ingredientsText = NilAndEmptyValueRemover.sharedInstance.removeValues(dessertDetail: dessertDetail[0]) // ignoring nil and "" values from the DessertDetail object
            // and then returning a string containing the desired ingredients / measurements
            self.navigationController?.pushViewController(dessertDetailViewController, animated: true)
        })
        
    }
    
}

