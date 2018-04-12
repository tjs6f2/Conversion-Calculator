//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Thomas Schultz on 4/11/18.
//  Copyright © 2018 array. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    var inputVal: String = ""
    var outputVal: String = ""
    
    var converters = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                      Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                      Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                      Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    var currentConverter: Converter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputVal = ""
        outputVal = ""
        inputDisplay.text = converters[0].inputUnit
        outputDisplay.text = converters[0].outputUnit
        currentConverter = converters[0]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func converterButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: UIAlertControllerStyle.actionSheet)
        for conv in converters {
            alert.addAction(UIAlertAction(title: conv.label, style: UIAlertActionStyle.default, handler: { (alertAction) in
                self.inputDisplay.text = conv.inputUnit
                self.outputDisplay.text = conv.outputUnit
                self.currentConverter = conv
            }))
        }
        
        self.present(alert, animated:true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
