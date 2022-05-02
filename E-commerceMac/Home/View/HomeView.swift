//
//  HomeView.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

class HomeView: UIViewController {

    // MARK: Properties
    var presenter: HomePresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //Cambio de vista
    //presenter?.showViewX(with: data)
    
}

extension HomeView: HomeViewProtocol {
    // TODO: implement view output methods
}
