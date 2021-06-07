//
//  CalendarCell.swift
//  FScalendar-setting
//
//  Created by 木元健太郎 on 2021/06/06.
//

import UIKit
import FSCalendar

class CalendarCell: FSCalendarCell {

    @IBOutlet private weak var Label: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        Label?.text = nil
    }
    
  
    func configure(user: Model) {
        Label?.text = user.text
    }
    
}
