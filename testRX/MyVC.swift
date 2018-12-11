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
    var testTF = UITextField()
    var testTF2 = UITextField()
    var testTF3 = UITextField()
    var mainCell = TestView()//.loadNib() as! TestView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor.blue
        let frame = self.view.bounds
        let tempView = UIView()
        tempView.backgroundColor = UIColor.red
        tempView.frame = self.view.frame
        //        self.view.addSubview(tempView)
        self.mainCell.frame = CGRect(x: 100, y: 100, width: frame.width / 2.0, height: frame.height / 2.0)
        self.view.addSubview(mainCell)
        
        self.testTF.text = "ujdyj"
        self.testTF2.text = "ujdyj"
        self.testTF3.text = "ujdyj"
        self.setObserver()
    }
    
    func setObserver() {
        Observable.combineLatest(
            mainCell.ibPasswordTF.rx.text,
            mainCell.ibLoginTF.rx.text
            ).map { text1, text2 in
                return text1 == text2
            }.bind { isTrue in
                self.mainCell.ibСenterLabel.text = "\(isTrue)"
        }
        
        let observabel = Observable.just(self.mainCell.ibСenterLabel.text)
        observabel.subscribe({ event in
//            self.mainCell.ibLoginButton.titleLabel = event
            print(event)
//            if event. == "false" {
//                self.mainCell.ibLoginButton.backgroundColor = UIColor.green
//            } else {
//                self.mainCell.ibLoginButton.backgroundColor = UIColor.red
//            }
        })
    }
    
    
    func setupButton(button: UIButton) {
        button.backgroundColor = UIColor.red
        button.titleLabel?.text = "TestButton"
        button.frame = CGRect(x: 100, y: 200, width: 100, height: 50)
    }
    
}
