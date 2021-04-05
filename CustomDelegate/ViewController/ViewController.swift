//
//  ViewController.swift
//  CustomDelegate
//
//  Created by 최광호 on 2021/04/05.
//

import UIKit

class ViewController: UIViewController {
    
    let btn : UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .gray
        return btn
    }()
    
    let lblTest : UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .green
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let SecondVC = SecondViewController()
        SecondVC.sendDelegate = self
        
        view.addSubview(btn)
        view.addSubview(lblTest)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 100).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        btn.addTarget(self, action: #selector(GoToSecVC), for: .touchUpInside)
        btn.setTitle("두번쨰로 넘어가기", for: .normal)
        
        lblTest.translatesAutoresizingMaskIntoConstraints = false
        lblTest.widthAnchor.constraint(equalToConstant: 200).isActive = true
        lblTest.heightAnchor.constraint(equalToConstant: 100).isActive = true
        lblTest.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTest.topAnchor.constraint(equalTo: btn.bottomAnchor).isActive = true
    }

    @objc func GoToSecVC() {
        let NV = UINavigationController(rootViewController: SecondViewController())
        NV.modalPresentationStyle = .fullScreen
        present(NV, animated: true, completion: nil)
    }

}

extension ViewController : sendDelegate {
    
    func Text(data: String) {
        lblTest.text = data
    }
    
}
