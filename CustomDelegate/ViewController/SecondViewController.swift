//
//  SecondViewController.swift
//  CustomDelegate
//
//  Created by 최광호 on 2021/04/05.
//

import UIKit

protocol sendDelegate: AnyObject {
    func Text(data: String)
}

class SecondViewController : UIViewController {
    
    weak var sendDelegate: sendDelegate?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(pop))
    }
    
    @objc func pop() {
        let test: String = "되나?"
        sendDelegate?.Text(data: "되나")
        dismiss(animated: true, completion: nil)
    }
/*
    @objc func checking() {
        @objc optional func thisIsOptionFunc()
    }
*/
}
