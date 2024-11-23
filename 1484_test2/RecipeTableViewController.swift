//
//  RecipeTableViewController.swift
//  1484_test2
//
//  Created by Deepankar Garg on 23/11/24.
//

import UIKit

class RecipeTableViewController: UITableViewController {
    
    var mealType: Int = 0
    var mealsForToday: [Recipe] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let today = Calendar.current.component(.weekday, from: Date()) - 1
        let meal = meals[today]
        switch mealType {
        case 0:
            mealsForToday = meal.breakfast
            title = "Breakfast"
        case 1:
            mealsForToday = meal.lunch
            title = "Lunch"
        case 2:
            mealsForToday = meal.snacks
            title = "Snacks"
        case 3:
            mealsForToday = meal.dinner
            title = "Dinner"
        default:
            break
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if mealsForToday.isEmpty {
            let label = UILabel()
            label.text = "No recipes available for this meal."
            label.textAlignment = .center
            label.textColor = .gray
            tableView.backgroundView = label
            tableView.separatorStyle = .none
        } else {
            tableView.backgroundView = nil
            tableView.separatorStyle = .singleLine
        }
        return mealsForToday.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeTableViewCell else {
            return UITableViewCell()
        }
        let recipe = mealsForToday[indexPath.row]
        cell.recipeNameLabel.text = recipe.name
        cell.calorieCountLabel.text = "\(recipe.calories)"
        cell.preparationTimeLabel.text = "\(recipe.preparationTime)"
        cell.thumbnailImageView.image = recipe.image ?? UIImage(named: "placeholder")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRecipe = mealsForToday[indexPath.row]
        performSegue(withIdentifier: "toMealDetails", sender: selectedRecipe)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMealDetails" {
            let destination = segue.destination as! MealDetailsViewController
            if let selectedRecipe = sender as? Recipe {
                destination.recipe = selectedRecipe
            }
        }
    }

}
