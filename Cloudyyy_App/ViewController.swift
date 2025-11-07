//
//  ViewController.swift
//  Cloudyyy_App
//
//  Created by user@5 on 05/11/25.
// hi hello

import UIKit

class ViewController: UIViewController {
    @IBAction func ParentDashboard(_ sender: UIButton) {
        let parentdash = ParentDashboardViewController(nibName: "ParentDashboardViewController", bundle: nil)
        parentdash.modalPresentationStyle = .fullScreen
        present(parentdash, animated: true, completion: nil)

            print("button clicked")
            }

            override func viewDidLoad() {
                super.viewDidLoad()
            }

    @IBAction func NewTask(_ sender: UIButton) {
        let newTaskVC = NewTaskViewController(nibName: "NewTaskViewController", bundle: nil)
            newTaskVC.modalPresentationStyle = .fullScreen
            present(newTaskVC, animated: true, completion: nil)
            print("New Task button clicked")
        }
        
    @IBAction func Rewards(_ sender: UIButton) {
      
            let rewardsVC = RewardHomeViewController(nibName: "RewardHomeViewController", bundle: nil)
            rewardsVC.modalPresentationStyle = .fullScreen
            present(rewardsVC, animated: true, completion: nil)
            print("Rewards button clicked")
        }

        

}

    
    


