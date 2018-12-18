//
//  ViewController.swift
//  5
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 QY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.orange
        
        let label = UILabel(frame: CGRect(x: 150,y: 150,width: 100,height: 50))
        label.text = "Hello world!"
        label.backgroundColor = UIColor.yellow
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 20))
        button.setTitle("Click me~", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.title = "主页"
    }
    
    @IBAction func btnClicked() {
        if let label = view.subviews.first as? UILabel {
            label.text = "I am Clicked!"
        }
        self.navigationController?.pushViewController(MyViewController(), animated: true)
    }


}

