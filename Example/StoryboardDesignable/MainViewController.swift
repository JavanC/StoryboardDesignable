//
//  ViewController.swift
//  StoryboardDesignable
//
//  Created by Javan on 2017/6/11.
//  Copyright © 2017年 Javan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Action
    
    @IBAction func didClickButton(_ button: UIButton) {
        
        // Push Main Storyboard - BlueViewController
        if button == blueButton {
            let vc = BlueViewController.instantiate(from: .Main)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        // Present Second Storyboard RedViewController
        else if button == redButton {
            let vc = RedViewController.instantiate(from: .Second)
            let nvc = UINavigationController(rootViewController: vc)
            self.present(nvc, animated: true, completion: nil)
        }
        
        // Push Second Storyboard YellowViewController
        else if button == yellowButton {
            let vc = YellowViewController.instantiate(from: .Second)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
