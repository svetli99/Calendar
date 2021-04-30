//
//  ViewController.swift
//  Calendar
//
//  Created by Svetoslav Kanchev on 23.04.21.
//

import UIKit

class EditEventViewController: UITableViewController {
    let cellIdentifires = [
        "Label",
        "Secondary Label",
        "Switch",
        "Date and Hours",
        "Hours",
        "Accessory",
        "Accessory",
        "Accessory",
        "Accessory",
        "Accessory",
        "Accessory",
        "Accessory"
    ]
    
    var cellIndex = 0
    
    let sectionCounts = [2,5,2,3]
    
    let labelsTitle = [
        "Dentist",
        "Location",
        "All-day",
        "Starts",
        "Ends",
        "Repeat",
        "Travel Time",
        "Calendar",
        "Invitees",
        "Alert",
        "Second Alert",
        "Show As"
    ]
    
//    let dateFormatterDate: DateFormatter = {
//       let formatter = DateFormatter()
//        formatter.dateFormat = ""
//    }()

    override func viewWillAppear(_ animated: Bool) {
        cellIndex = 0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        sectionCounts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sectionCounts[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        switch cellIdentifires[cellIndex] {
        case "Label":
            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifires[cellIndex], for: indexPath)
            let labelCell = cell as! LabelCell
            labelCell.label.text = labelsTitle[cellIndex]
        case "Secondary Label":
            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifires[cellIndex], for: indexPath) as! SecondaryLabelCell
            cell.label.text = labelsTitle[cellIndex]
        case "Switch":
            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifires[cellIndex], for: indexPath) as! SwitchCell
            cell.label.text = labelsTitle[cellIndex]
        case "Date and Hours":
            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifires[cellIndex], for: indexPath) as! DateHoursCell
            cell.label.text = labelsTitle[cellIndex]
        case "Hours":
            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifires[cellIndex], for: indexPath) as! HoursCell
            cell.label.text = labelsTitle[cellIndex]
        case "Accessory":
            cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifires[cellIndex], for: indexPath) as! AccessoryCell
            cell.label.text = labelsTitle[cellIndex]
        default:
            cell = UITableViewCell()
            print("Uknown Identifier")
        }
        
        return cell
    }

}

