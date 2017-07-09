//
//  DetailViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 7/9/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var getcity_name = String()
    var getcity_temp = Int()
    var getcity_image = UIImage()
    
    @IBOutlet weak var uiCityImage: UIImageView!
    @IBOutlet weak var lblCityName: UILabel!
    @IBOutlet weak var lblCityTemp: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        uiCityImage.image = getcity_image
        lblCityName.text = getcity_name
        lblCityTemp.text = String(getcity_temp)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
