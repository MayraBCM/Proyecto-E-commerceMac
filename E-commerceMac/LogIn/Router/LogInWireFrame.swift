//
//  LogInWireFrame.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation
import UIKit

class LogInWireFrame: LogInWireFrameProtocol {

    class func createLogInModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "LogInView")
        if let view = navController.children.first as? LogInView {
            let presenter: LogInPresenterProtocol & LogInInteractorOutputProtocol = LogInPresenter()
            let interactor: LogInInteractorInputProtocol & LogInRemoteDataManagerOutputProtocol = LogInInteractor()
            let localDataManager: LogInLocalDataManagerInputProtocol = LogInLocalDataManager()
            let remoteDataManager: LogInRemoteDataManagerInputProtocol = LogInRemoteDataManager()
            let wireFrame: LogInWireFrameProtocol = LogInWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.localDatamanager = localDataManager
            interactor.remoteDatamanager = remoteDataManager
            remoteDataManager.remoteRequestHandler = interactor
            
            return navController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "LogInView", bundle: Bundle.main)
    }
    
    //ir a otra vista
    /*
     func presentNewViewX(from view: HomeViewProtocol) {            //crear nuevo modulo e instanciarlo
        let newViewX = DetalleWireFrame.createDetalleModule(with: withData)
        if let newView = view as? UIViewController{
            newView.navigationController?.pushViewController(newViewX, animated: true)
            }
    }
    */
}
