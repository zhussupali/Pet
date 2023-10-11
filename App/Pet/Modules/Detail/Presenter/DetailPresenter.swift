//
//  DetailPresenter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation

protocol DetailPresenterInput { }

final class DetailPresenter {
    private weak var view: DetailViewControllerInput?
    private let router: DetailRouterInput
    
    init(view: DetailViewControllerInput, router: DetailRouterInput) {
        self.view = view
        self.router = router
    }
}

// MARK: - DetailPresenterInput

extension DetailPresenter: DetailPresenterInput { }
