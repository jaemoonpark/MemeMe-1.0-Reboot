//
//  ViewController.swift
//  MemeMe 1.0 Reboot
//
//  Created by Jaemoon Park on 11/5/16.
//
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var btmCamera: UIBarButtonItem!
    @IBOutlet weak var btmAlbum: UIBarButtonItem!
    @IBOutlet weak var btmShare: UIBarButtonItem!
    @IBOutlet weak var btmCancel: UIBarButtonItem!
    @IBOutlet weak var txtFieldTop: UITextField!
    @IBOutlet weak var txtFieldBtm: UITextField!
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var barNavigation: UINavigationBar!
    @IBOutlet weak var barTool: UIToolbar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func pickImage(selector: AnyObject){
        let controllerImagePick = UIImagePickerController()
        controllerImagePick.delegate = self
        present(controllerImagePick, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            viewImage.image = image
        }
        dismiss(animated: true, completion: nil)
    }


}

