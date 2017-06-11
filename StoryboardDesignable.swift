//
//  StoryboardDesignable.swift
//
//  Created by Javan on 2017/6/11.
//  Copyright © 2017年 Javan. All rights reserved.
//

import UIKit

/// Add Your Storyboards Name Enum

enum Storyboard: String {
    
    case Main   = "Main"
    case Second = "Second"

}

/// The StoryboardDesignable protocol for UIViewController
///
/// How to use
/// Step 1: Edit your ViewController's 'Storyboard ID' is same the 'Class Name'
/// Step 2: let vc = YourViewController.instantiate(from .StoryboardName)

protocol StoryboardDesignable : class {}

extension StoryboardDesignable where Self : UIViewController {
    
    static func instantiate(from storyboard: Storyboard, bundle: Bundle? = nil) -> Self {
        
        let dynamicMetatype = Self.self
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: bundle)
        
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "\(dynamicMetatype)") as? Self else {
            fatalError("Couldn’t instantiate view controller with identifier \(dynamicMetatype)")
        }
        
        return viewController
    }
}

extension UIViewController : StoryboardDesignable {}
