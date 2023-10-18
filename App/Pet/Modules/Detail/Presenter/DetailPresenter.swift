//
//  DetailPresenter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation

final class DetailPresenter {
    private weak var view: DetailViewInput?
    private let router: DetailRouterInput
    
    init(view: DetailViewInput, router: DetailRouterInput) {
        self.view = view
        self.router = router
    }
}

// MARK: - DetailViewOutput

extension DetailPresenter: DetailViewOutput { }
