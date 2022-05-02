//
//  HomePresenter.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation

class HomePresenter  {
    
    // MARK: Properties
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorInputProtocol?
    var wireFrame: HomeWireFrameProtocol?
    
}

extension HomePresenter: HomePresenterProtocol {
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

extension HomePresenter: HomeInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
