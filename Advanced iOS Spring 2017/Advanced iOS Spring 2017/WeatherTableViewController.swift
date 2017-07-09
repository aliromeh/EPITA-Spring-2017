//
//  WeatherTableViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by AliRomeh on 7/9/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {
    
    // initialaize an array of objects
    var weatherArray = [Weather]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        weatherArray.append(Weather(cityName: "Beirut", citytemperature: 32, cityPicture: UIImage(named: "beirut_picture"))!)
        weatherArray.append(Weather(cityName: "Barcelona", citytemperature: 33, cityPicture: UIImage(named: "barcelona_picture"))!)
        weatherArray.append(Weather(cityName: "Paris", citytemperature: 12, cityPicture: UIImage(named: "paris_picture"))!)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "weatherTableViewCell", for: indexPath) as? WeatherTableViewCell else {
            fatalError("error")
        }
        
        cell.lblCityName.text = weatherArray[indexPath.row].sCity
        cell.lblCityTemp.text = String(weatherArray[indexPath.row].iCitytemperature)
        cell.uiImageView.image = weatherArray[indexPath.row].UiPicture

        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        destination.getcity_image = weatherArray[indexPath.row].UiPicture!
        destination.getcity_name = weatherArray[indexPath.row].sCity
        destination.getcity_temp = weatherArray[indexPath.row].iCitytemperature
        
        self.navigationController?.pushViewController(destination, animated: true)
    }
    
    @IBAction func unwindToWeatherList(sender: UIStoryboardSegue){
        if let sourceViewController = sender.source as? AddWeatherViewController, let weather = sourceViewController.weather {
            let newIndexPath = IndexPath(row: weatherArray.count, section: 0)
            weatherArray.append(weather)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
