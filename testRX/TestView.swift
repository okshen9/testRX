//
//  TestView.swift
//  testRX
//
//  Created by Artem Neshko on 07.12.2018.
//  Copyright © 2018 Artem Neshko. All rights reserved.
//

import UIKit

class TestView: UIView {
    
    @IBOutlet var ibContentView: UIView!
    @IBOutlet weak var ibСenterLabel: UILabel!
    @IBOutlet weak var ibLoginTF: UITextField!
    @IBOutlet weak var ibPasswordTF: UITextField!
    @IBOutlet weak var ibLoginButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        testInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        testInit()
    }
    
    private func testInit() {
        Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        self.addSubview(self.ibContentView)
        self.ibContentView.frame = self.bounds
        self.ibContentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}

extension UIView {
    /** Loads instance from nib with the same name. */
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
