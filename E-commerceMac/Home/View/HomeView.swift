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
    @IBOutlet weak var login: UIButton!
    
    @IBAction func logIn(_ sender: Any) {
        
        
    }
    
    //Cambio de vista
    //presenter?.showViewX(with: data)
    
    
    
    
    
    
    
    //Formato
    login.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
    login.layer.cornerRadius = 65
    
    
}

extension HomeView: HomeViewProtocol {
    // TODO: implement view output methods
}
