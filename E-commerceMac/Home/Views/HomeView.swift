//
//  HomeView.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 28/04/22.
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
}

extension HomeView: HomeViewProtocol {
    // TODO: implement view output methods
}
