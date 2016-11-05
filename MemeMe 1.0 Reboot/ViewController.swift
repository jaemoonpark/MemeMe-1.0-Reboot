//
//  ViewController.swift
//  MemeMe 1.0 Reboot
//
//  Created by Jaemoon Park on 11/5/16.
//
//

import UIKit

class ViewController: UIViewController {
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

