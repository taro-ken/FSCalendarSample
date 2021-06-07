//
//  ViewController.swift
//  FScalendar-setting
//
//  Created by 木元健太郎 on 2021/03/21.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate, FSCalendarDelegateAppearance {
    
    private let cellClassName = "CalendarCell"
    private let reuseId = "CalendarCell"
    
    private var texts:[Model] = []
    

    fileprivate let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    @IBOutlet weak var calendar: FSCalendar!
    {
        didSet{
            let cellNib = UINib(nibName: cellClassName, bundle: nil)
            calendar.register(cellNib.classForCoder, forCellReuseIdentifier: reuseId)
           
            calendar.delegate = self
            calendar.dataSource = self
        }
    }
    
    @IBAction func addButton(_ sender: Any) {
        var textField = UITextField()
                let alert = UIAlertController(title: "新しいアイテムを追加", message: "", preferredStyle: .alert)

                let action = UIAlertAction(title: "リストに追加", style: .default) { (action) in
                    // 「リストに追加」を押された時に実行される処理

                    let newItem: Model = Model(text: textField.text!)

                    // アイテム追加処理
                    self.texts.append(newItem)
                    self.calendar?.reloadData()

                }

                alert.addTextField { (alertTextField) in
                    alertTextField.placeholder = "新しいアイテム"
                    textField = alertTextField
                }

                alert.addAction(action)
                present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FSCalendar"
    
    }
    
   
    
    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
        guard let cell = calendar.dequeueReusableCell(withIdentifier: reuseId, for: date, at: position) as?
                CalendarCell else {
            return FSCalendarCell()
        }
        let data = texts[date.hashValue]
        cell.subtitle = data.text
        cell.configure(user: data)
        return cell
       
    }
    
    func calendar(_ calendar: FSCalendar, subtitleFor date: Date) -> String? {
        return self.calendar(calendar, subtitleFor: date)
    }
    
    func calendar(_ calendar: FSCalendar, willDisplay cell: FSCalendarCell, for date: Date, at position: FSCalendarMonthPosition) {
        
    }
    
    func calendar(_ calendar: FSCalendar, titleFor date: Date) -> String? {
       
        return "ima"
    }
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
        return 2
    }
    

    
    
    
}

