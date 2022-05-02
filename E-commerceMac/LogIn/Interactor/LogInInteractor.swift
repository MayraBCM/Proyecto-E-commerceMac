//
//  LogInInteractor.swift
//  E-commerceMac
//
//  Created by Mario Arceo on 02/05/22.
//  
//

import Foundation

class LogInInteractor: LogInInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: LogInInteractorOutputProtocol?
    var localDatamanager: LogInLocalDataManagerInputProtocol?
    var remoteDatamanager: LogInRemoteDataManagerInputProtocol?

}

extension LogInInteractor: LogInRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
