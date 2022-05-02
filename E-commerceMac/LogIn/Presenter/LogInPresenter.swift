//
//  LogInPresenter.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation

class LogInPresenter  {
    
    // MARK: Properties
    weak var view: LogInViewProtocol?
    var interactor: LogInInteractorInputProtocol?
    var wireFrame: LogInWireFrameProtocol?
    
}

extension LogInPresenter: LogInPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
     //llamamos al wireframe
    /*
    func showViewX(with data: Descripciones) {
        wireFrame?.presentNewViewX(from: view! , withData: data)
    }
    */
}

extension LogInPresenter: LogInInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
