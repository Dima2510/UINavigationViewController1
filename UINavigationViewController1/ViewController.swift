//
//  ViewController.swift
//  UINavigationViewController1
//
//  Created by Дмитрий Процак on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var seccondButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .systemGreen
        navigationItem.title = "FirstVC"
        
        seccondButton = UIButton(type: .system)
        seccondButton.setTitle("SecondVC", for: .normal)
        seccondButton.sizeToFit()
        seccondButton.center = view.center
        seccondButton.addTarget(self, action: #selector(performSecondButton(paramater:)), for: .touchUpInside)
        view.addSubview(seccondButton)
    }
    
    
    @objc func performSecondButton(paramater: Any) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
        
    }


}

