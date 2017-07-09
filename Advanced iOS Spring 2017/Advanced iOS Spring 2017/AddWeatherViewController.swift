//
//  AddWeatherViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 7/9/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit
import os.log

class AddWeatherViewController: UIViewController {
    
    var weather : Weather?

    @IBOutlet weak var txtCityName: UITextField!
    @IBOutlet weak var txtCityTemp: UITextField!
    @IBOutlet weak var btnSaveCity: UIBarButtonItem!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelNew(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIBarButtonItem, button === btnSaveCity else {
            os_log("Save Button Not Pressed", log: OSLog.default, type: .debug)
            return
        }
        
        let city = txtCityName.text
        let temp = txtCityTemp.text
        
        
        let image = UIImage(named: "picture\(arc4random_uniform(3) + 1).png")
        
        
        weather = Weather(cityName: city!, citytemperature: Int(temp!)!, cityPicture: image)
        
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
