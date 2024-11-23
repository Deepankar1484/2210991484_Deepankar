//
//  MealDetailsViewController.swift
//  1484_test2
//
//  Created by Deepankar Garg on 23/11/24.
//

import UIKit

class MealDetailsViewController: UIViewController {

    var recipe: Recipe?
    
    @IBOutlet weak var PreparationTime: UILabel!
    @IBOutlet weak var calorieLabel: UILabel!
    @IBOutlet weak var recipeNameTextField: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let recipe = recipe {
            PreparationTime.text = "Preparation Time: \(recipe.preparationTime) mins"
            calorieLabel.text = "Calories: \(recipe.calories)"
            recipeNameTextField.text = recipe.name
            dishImageView.image = recipe.image ?? UIImage(named: "placeholder")
        }
    }
}
