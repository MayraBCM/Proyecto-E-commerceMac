//
//  LogInView.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

class LogInView: UIViewController {

    // MARK: Properties
    var presenter: LogInPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //Cambio de vista
    //presenter?.showViewX(with: data)
    
}

extension LogInView: LogInViewProtocol {
    // TODO: implement view output methods
}
