//
//  WeatherTableController.swift
//  weatherClientSwift
//
//  Created by Maxim on 06/08/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

import UIKit

class WeatherTableController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 1
        }
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            tableView.register(UINib(nibName: "DescriptionTableCell", bundle: nil), forCellReuseIdentifier: "desc")
            let cell = tableView.dequeueReusableCell( withIdentifier: "desc",
                                                                 for: indexPath) as?
                                                                 DescriptionTableCell ?? DescriptionTableCell()
            if indexPath.row == 0 {
                //weather description
                cell.descName.text = "Описание"
                cell.fullDiscr.text = "Облачно"
            }
            if indexPath.row == 1 {
                //weather clouds
                cell.descName.text = "Облачность"
                cell.fullDiscr.text = "10%"
            }
            if indexPath.row == 2 {
                //weather pressure
                    cell.descName.text = "Давление"
                cell.fullDiscr.text = "1000"
            }
            if indexPath.row == 3 {
                //weather wind
                cell.descName.text = "Ветер"
                cell.fullDiscr.text = "2 м/с"
            }
            if indexPath.row == 4 {
                //weather humidity
                cell.descName.text = "Влажность"
                cell.fullDiscr.text = "20%"
            }
            return cell
        }
        // Configure the cell...
        tableView.register(UINib(nibName: "TemperatureTableCell", bundle: nil), forCellReuseIdentifier: "temp")
        let cell = tableView.dequeueReusableCell( withIdentifier: "temp",
                                                             for: indexPath) as?
                                                             TemperatureTableCell ?? TemperatureTableCell()
        cell.temperature.text = "25 C"
        cell.minTemperature.text = "20 C"
        cell.maxTemperature.text = "30 C"
        return cell
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
    //override func tableView(_ tableView: UITableView, commit editingStyle:UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
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

    

}
