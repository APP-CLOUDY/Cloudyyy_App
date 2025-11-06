//
//  ViewController.swift
//  Cloudyyy_App
//
//  Created by user@5 on 05/11/25.
// tegof

import UIKit

class ViewController: UIViewController {

    @IBAction func goToChildHome(_ sender: UIButton) {
        let childVC = childHome(nibName: "childHome", bundle: nil)
            childVC.modalPresentationStyle = .fullScreen
            present(childVC, animated: true, completion: nil)
            print("button clicked")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

