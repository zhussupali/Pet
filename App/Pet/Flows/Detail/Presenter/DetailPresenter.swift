//
//  DetailPresenter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation

protocol DetailPresenterInput {
    
}

class DetailPresenter: DetailPresenterInput {
    weak var view: DetailViewInput?
    var router: DetailRouterInput?
    
    init(view: DetailViewInput, router: DetailRouterInput) {
        self.view = view
        self.router = router
    }
}
