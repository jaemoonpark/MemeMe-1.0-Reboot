//
//  ViewController.swift
//  MemeMe 1.0 Reboot
//
//  Created by Jaemoon Park on 11/5/16.
//
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
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
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //clearing text if selected & default text
        if(textField == txtFieldTop && txtFieldTop.text == "TOP"){
            txtFieldTop.text = ""
        }
        if(textField == txtFieldBtm && txtFieldBtm.text == "BOTTOM"){
            txtFieldBtm.text = ""
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        btmCamera.isEnabled = UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)
        let txtFieldAttributes = [NSStrokeColorAttributeName: UIColor.black,
            NSStrokeWidthAttributeName: 5.0,
            NSForegroundColorAttributeName: UIColor.white,
            NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!] as [String : Any]
        
        
        txtFieldTop.defaultTextAttributes = txtFieldAttributes
        txtFieldBtm.defaultTextAttributes = txtFieldAttributes
        
        txtFieldTop.textAlignment = NSTextAlignment.center
        txtFieldBtm.textAlignment = NSTextAlignment.center
        
        txtFieldTop.delegate = self
        txtFieldBtm.delegate = self
    }


    @IBAction func pickImage(selector: AnyObject){
        let controllerImagePick = UIImagePickerController()
        controllerImagePick.delegate = self
        controllerImagePick.sourceType = UIImagePickerControllerSourceType.savedPhotosAlbum
        present(controllerImagePick, animated: true, completion: nil)
    }
    
    @IBAction func pickCamera(selector: AnyObject){
        let controllerCameraCapture = UIImagePickerController()
        controllerCameraCapture.delegate = self
        controllerCameraCapture.sourceType = UIImagePickerControllerSourceType.camera
        present(controllerCameraCapture, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            viewImage.image = image
        }
        dismiss(animated: true, completion: nil)
    }


}

