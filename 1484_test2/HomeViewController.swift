//
//  HomeViewController.swift
//  1484_test2
//
//  Created by Deepankar Garg on 23/11/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showBreakfast(_ sender: Any) {
        navigateToMealDetail(mealType: 0)
    }
    @IBAction func showLunch(_ sender: Any) {
        navigateToMealDetail(mealType: 1)
    }
    @IBAction func showSnacks(_ sender: Any) {
        navigateToMealDetail(mealType: 2)
    }
    @IBAction func showDinner(_ sender: Any) {
        navigateToMealDetail(mealType: 3)
    }
    
    private func navigateToMealDetail(mealType: Int) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let tableVC = storyboard.instantiateViewController(withIdentifier: "RecipeTableViewController") as? RecipeTableViewController {
            tableVC.mealType = mealType
            navigationController?.pushViewController(tableVC, animated: true)
        }
    }
}
