//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Greg Swan on 10/18/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
     
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Looking good!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer cookies!", color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        }
        
        //bmi = BMI(value: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
        //color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        // edit - format - show colors - this brings up color wheel, select color and drag into project, place after color:
    }
}
