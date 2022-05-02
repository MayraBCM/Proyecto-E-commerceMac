//
//  LogInProtocols.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

protocol LogInViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: LogInPresenterProtocol? { get set }
}

protocol LogInWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createLogInModule() -> UIViewController
    //func presentNewViewDetail(from view: HomeViewProtocol, withData: Descripciones)
}

protocol LogInPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: LogInViewProtocol? { get set }
    var interactor: LogInInteractorInputProtocol? { get set }
    var wireFrame: LogInWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol LogInInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol LogInInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: LogInInteractorOutputProtocol? { get set }
    var localDatamanager: LogInLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: LogInRemoteDataManagerInputProtocol? { get set }
}

protocol LogInDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol LogInRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: LogInRemoteDataManagerOutputProtocol? { get set }
}

protocol LogInRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol LogInLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
