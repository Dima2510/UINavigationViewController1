//
//  SecondViewController.swift
//  UINavigationViewController1
//
//  Created by Дмитрий Процак on 27.07.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      title = "SecondVc"
        view.backgroundColor = .systemPink
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }

    //метод возвращяющий нас обратно к first через 3 сек
    @objc func goBack() {
      //  navigationController?.popViewController(animated: true)
      
        
      //Получаем текущий массив контроллеров
      var currentControlArray = navigationController?.viewControllers
        
     //Удаляем посдедний контроллер
     currentControlArray?.removeLast()
        
    //Присвоим
    if let newController = currentControlArray {
        navigationController?.viewControllers = newController
        }
        
        
    }

}
