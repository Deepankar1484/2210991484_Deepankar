//
//  Model.swift
//  1484_test2
//
//  Created by Deepankar Garg on 23/11/24.
//

import Foundation
import UIKit


struct Recipe{
    let name: String
    let calories: Int
    let preparationTime: Int
    let image: UIImage?
}

struct Meal {
    let breakfast: [Recipe]
    let lunch: [Recipe]
    let snacks: [Recipe]
    let dinner: [Recipe]
}


var meals: [Meal] = [
    Meal(
        breakfast: [Recipe(name: "Oatmeal", calories: 150, preparationTime: 10, image: UIImage(named: "oatMeal"))],
        lunch: [Recipe(name: "Grilled Chicken", calories: 350, preparationTime: 25, image: UIImage(named: "grilledchicken")),
                Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))
               ],
        snacks: [Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))],
        dinner: []
    ),
    Meal(
        breakfast: [Recipe(name: "Oatmeal", calories: 150, preparationTime: 10, image: UIImage(named: "oatMeal"))],
        lunch: [Recipe(name: "Grilled Chicken", calories: 350, preparationTime: 25, image: UIImage(named: "grilledchicken")),
                Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))
               ],
        snacks: [Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))],
        dinner: []
    ),
    Meal(
        breakfast: [Recipe(name: "Oatmeal", calories: 150, preparationTime: 10, image: UIImage(named: "oatMeal"))],
        lunch: [Recipe(name: "Grilled Chicken", calories: 350, preparationTime: 25, image: UIImage(named: "grilledchicken")),
                Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))
               ],
        snacks: [Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))],
        dinner: []
    ),
    Meal(
        breakfast: [Recipe(name: "Oatmeal", calories: 150, preparationTime: 10, image: UIImage(named: "oatMeal"))],
        lunch: [Recipe(name: "Grilled Chicken", calories: 350, preparationTime: 25, image: UIImage(named: "grilledchicken")),
                Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))
               ],
        snacks: [Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))],
        dinner: []
    ),
    Meal(
        breakfast: [Recipe(name: "Oatmeal", calories: 150, preparationTime: 10, image: UIImage(named: "oatMeal"))],
        lunch: [Recipe(name: "Grilled Chicken", calories: 350, preparationTime: 25, image: UIImage(named: "grilledchicken")),
                Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))
               ],
        snacks: [Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))],
        dinner: []
    ),
    Meal(
        breakfast: [Recipe(name: "Oatmeal", calories: 150, preparationTime: 10, image: UIImage(named: "oatMeal"))],
        lunch: [Recipe(name: "Grilled Chicken", calories: 350, preparationTime: 25, image: UIImage(named: "grilledchicken")),
                Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))
               ],
        snacks: [Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))],
        dinner: []
    ),
    Meal(
        breakfast: [Recipe(name: "Oatmeal", calories: 150, preparationTime: 10, image: UIImage(named: "oatMeal"))],
        lunch: [Recipe(name: "Grilled Chicken", calories: 350, preparationTime: 25, image: UIImage(named: "grilledchicken")),
                Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))
               ],
        snacks: [Recipe(name: "Salad", calories: 120, preparationTime: 15, image: UIImage(named: "salad"))],
        dinner: []
    )
]
