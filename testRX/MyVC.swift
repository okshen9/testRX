//
//  MyVC.swift
//  testRX
//
//  Created by Artem Neshko on 10.12.2018.
//  Copyright © 2018 Artem Neshko. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MyVC: UIViewController {
    
    var button = UIButton()
    var mainCell = TestView()//.loadNib() as! TestView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let frame = self.view.bounds
        self.mainCell.frame = CGRect(x: frame.width / 2.0, y: 0, width: frame.width / 2.0, height: frame.width / 2.0)
        self.view.addSubview(mainCell)
    }
    
    func setObserver() {
//                Observable.combineLatest(
//
//        )
    }
    
    
    func setupButton(button: UIButton) {
        button.backgroundColor = UIColor.red
        button.titleLabel?.text = "TestButton"
        button.frame = CGRect(x: 100, y: 200, width: 100, height: 50)
    }
    
}
