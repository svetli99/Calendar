//
//  Cells.swift
//  Calendar
//
//  Created by Svetoslav Kanchev on 23.04.21.
//

import UIKit

class LabelCell: UITableViewCell {
    @IBOutlet var label: UILabel!
}

class SecondaryLabelCell: UITableViewCell {
    @IBOutlet var label: UILabel!
}

class SwitchCell: UITableViewCell {
    @IBOutlet var label: UILabel!
    
}

class DateHoursCell: UITableViewCell {
    @IBOutlet var label: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var hoursLabel: UILabel!
}

class HoursCell: UITableViewCell {
    @IBOutlet var label: UILabel!
    @IBOutlet var hoursLabel: UILabel!
}

class AccessoryCell: UITableViewCell {
    @IBOutlet var label: UILabel!
    @IBOutlet var accessoryLabel: UILabel!
}
