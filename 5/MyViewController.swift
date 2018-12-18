//
//  MyViewController.swift
//  5
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 QY. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.blue
        let imageView = UIImageView(frame: CGRect(x: 10, y: 200, width: 400, height: 400))
        imageView.image = UIImage(named: "timg")
        view.addSubview(imageView)
        let button = UIButton(frame:CGRect(x:100,y:100,width:200,height:10))
        button.setTitle("Close", for: .normal)
        button.setTitleColor(UIColor.brown, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.title = "返回"
    }
    
    @IBAction func btnClicked() {
        //        presentingViewController?.dismiss(animated: true, completion: nil)
        navigationController?.pushViewController(ViewController(), animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
