//
//  ViewController.swift
//  FScalendar-setting
//
//  Created by 木元健太郎 on 2021/03/21.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    fileprivate weak var calendar: FSCalendar!
    
    @IBOutlet weak var photo: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//    //カメラ機能
//    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
//        let picker = UIImagePickerController()
//            picker.sourceType = .camera
//            picker.delegate = self
//            // UIImagePickerController カメラを起動する
//            present(picker, animated: true, completion: nil)
        }
    /// シャッターボタンを押下した際、確認メニューに切り替わる
    /// - Parameters:
    ///   - picker: ピッカー
    ///   - info: 写真情報
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let image = info[.originalImage] as? UIImage {
//            self.photo.image = image as? UIImage
//        // "写真を使用"を押下した際、写真アプリに保存する
//        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
//        // UIImagePickerController カメラが閉じる
//        self.dismiss(animated: true, completion: nil)
//        }
//    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//
//        if let image = info[UIImagePickerController.InfoKey.editedImage.rawValue] {
//            self.photo.image = image as? UIImage
//               }
//
//               picker.dismiss(animated: true, completion: nil)
//}
//    override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//            // Dispose of any resources that can be recreated.
//        }


