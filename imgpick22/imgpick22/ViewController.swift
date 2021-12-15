//
//  ViewController.swift
//  imgpick22
//
//  Created by seong_wook_lim on 2021/12/15.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    @IBOutlet var imgview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
}
    @IBAction func pick(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker, animated: false)}
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: false)
        {
            () in
            
            let alert = UIAlertController(title: "", message: "Cancel Image choice", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "confirm", style: .cancel))
            self.present(alert, animated: false)
            
        }
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: false)
        {
            () in
            let img = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            self.imgview.image = img
        }
    }
    
}

