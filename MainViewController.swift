//
//  MainViewController.swift
//  图形
//
//  Created by 方瑾 on 2019/1/23.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var displayLable: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    var tuXing = ["正三角形","倒三角形","正方形","长方形","菱形"]
    var tuXingPickerView = UIPickerView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tuXingPickerView.delegate = self
        tuXingPickerView.dataSource = self
        inputTextField.inputView = tuXingPickerView
        
        
        
        
    }
    
    
}
extension MainViewController : UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tuXing.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tuXing[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //正三角形
        let long = 5
        let wide = long * 2 - 1
        var fix = ""
        if tuXing[row] == "正三角形" {
            for i in 1...long {
                for j in 1...wide {
                    if j <= long - i || j > wide - (long - i) {
                        fix += " "
                    } else {
                        fix += " * "
                    }
                }
                fix += "\n"
            }
            displayLable.text = fix
            
        } else if tuXing[row] == "倒三角形" {
            for i in 1...long {
                for j in 1...wide {
                    if j <= i-1 || j > wide-(i-1) {
                        fix += " "
                    } else {
                        fix += " * "
                    }
                }
                fix += "\n"
            }
            displayLable.text = fix
        } else if tuXing[row] == "正方形" {
            for i in 1...wide {
                for j in 1...wide {
                    fix += "*"
                }
                fix += "\n"
            }
            displayLable.text = fix
        } else if tuXing[row] == "长方形" {
            for i in 1...long {
                for j in 1...wide {
                    fix += "*"
                }
                fix += "\n"
            }
            displayLable.text = fix
        } else if tuXing[row] == "菱形" {
            for i in 1...long {
                for j in 1...wide {
                    if j <= long - i || j > wide - (long - i) {
                        fix += " "
                    } else {
                        fix += " * "
                    }
                }
                fix += "\n"
            }
            for i in 2...long  {
                for j in 1...wide {
                    if j <= i-1 || j > wide-(i-1) {
                        fix += " "
                    } else {
                        fix += " * "
                    }
                }
                fix += "\n"
            }
        }
        displayLable.text = fix
        
    }
    
}



