//
//  RedViewController.swift
//  StoryboardDesignable
//
//  Created by Javan on 2017/6/12.
//  Copyright © 2017年 Javan. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Action
    
    @IBAction func didClickBarButton(_ barButton: UIBarButtonItem) {
        
        if barButton == cancelBarButton {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
