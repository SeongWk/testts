//
//  ViewController.swift
//  msg-noti
//
//  Created by seong_wook_lim on 2021/12/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dtp: UIDatePicker!
    @IBOutlet var msg: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func savebtn(_ sender: Any) {
        if #available(iOS 10.0, *)
        {
            UNUserNotificationCenter.current().getNotificationSettings{
                settings in if settings.authorizationStatus == UNAuthorizationStatus.authorized{
                    DispatchQueue.main.sync {
                        let nContent = UNMutableNotificationContent()
                        nContent.body = (self.msg.text)!
                        nContent.title = "early"
                        nContent.sound = UNNotificationSound.default
                        let time = self.dtp.date.timeIntervalSinceNow
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                        let request = UNNotificationRequest(identifier: "alarm", content: nContent, trigger: trigger)
                        UNUserNotificationCenter.current().add(request)
                    }
                    
                }else{
                    let date = self.dtp.date.addingTimeInterval(9*60*60)
                    let message = "\(date) continue"
                    
                    let alert = UIAlertController(title: "register", message: message, preferredStyle: .alert)
                    let ok = UIAlertAction(title: "confirm", style: .default)
                    alert.addAction(ok)
                    self.present(alert,animated: false)
                    return
                    
                }
            }
            
        }else{
            
        }
    }
    
}

