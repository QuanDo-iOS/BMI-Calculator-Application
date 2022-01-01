//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Quan's Macbook on 01/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(h : Float , w : Float) -> Void {
        if h == 0 || w == 0 {
            bmi = BMI(value: -1 , advice: "Error , Try again !!", color: UIColor.gray)
        } else {
            let bmiValue = w / (h * h)
            let color : UIColor
            if bmiValue < 18.5 {
                color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
                bmi = BMI(value: bmiValue, advice: "Eat more pies", color: color)
            } else if bmiValue <= 24.9  {
                color = #colorLiteral(red: 0.4335865974, green: 0.9735177159, blue: 0.4655787349, alpha: 1)
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle ", color: color)
            } else {
                color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
                bmi = BMI(value: bmiValue, advice: "Eat less pies", color: color)
            }
        }
    }
    
    func getBMI() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return self.bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
