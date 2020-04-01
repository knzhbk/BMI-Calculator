//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sultan Abilda on 3/29/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
var bmi: BMI?
struct CalculatorBrain {
    
    func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
             bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue > 25 {
             bmi = BMI(value: bmiValue, advice: "Eat more salat", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        } else {
             bmi = BMI(value: bmiValue, advice: "You doing good", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
            
        }
        
    }
    
    func getBMIValue() -> String {
        let formatedBmi = String(format:"%.1f",bmi?.value ?? 0.0)
        return formatedBmi
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "No advice"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return color
    }
    
}
