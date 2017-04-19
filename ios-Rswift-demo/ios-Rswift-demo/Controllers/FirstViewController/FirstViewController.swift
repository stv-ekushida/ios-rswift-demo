//
//  FirstViewController.swift
//  ios-Rswift-demo
//
//  Created by OkuderaYuki on 2017/04/13.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - file private
private extension FirstViewController {
    
    func setup() {
        setupNavigation()
        
        // imageViewにlionの画像をセット
        imageView.image = R.image.lion()
    }
    
    func setupNavigation() {
        self.navigationItem.title = NSLocalizedString("FirstVCNavigationTitle", comment: "")
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: R.image.next_64()?.withRenderingMode(.alwaysOriginal),
                                                                 style: .plain,
                                                                 target: self,
                                                                 action: .transitionToSecondVC)
    }
    
    /// SecondViewControllerに遷移する
    @objc func transitionToSecondVC() {
        if let secondVC = R.storyboard.secondViewController().instantiateInitialViewController() {
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}

// MARK: - Selector
private extension Selector {
    static let transitionToSecondVC = #selector(FirstViewController.transitionToSecondVC)
}
