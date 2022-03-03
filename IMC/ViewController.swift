//
//  ViewController.swift
//  IMC
//
//  Created by user212279 on 12/16/21.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    
    @IBOutlet weak var viewResult: UIView!
    var imc: Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!){
            imc = weight/(height * height)
            showResult()
        }
    }
    
    
    func showResult() {
        var result: String = ""
        var image: String = ""
        
        switch imc {
        case 0..<16:
            result = "Magreza"
            image = "abaixo"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "abaixo"
        case 18.5..<25:
            result = "Peso ideal"
            image = "ideal"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
            
        }
        
        lbResult.text = "\(Int(imc)): \(result)"
        ivResult.image = UIImage(named: image)
        viewResult.isHidden = false
        view.endEditing(true)
        
    }
    
        
}
