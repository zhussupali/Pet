//
//  HomePresenter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 20.08.2022.
//

import Foundation

protocol HomePresenterInput {
    func didTapRoute()
    func didTapFetch()
}

final class HomePresenter {
    private weak var view: HomeViewControllerInput?
    private let repository: HomeRepository
    private let router: HomeRouterInput
    
    init(view: HomeViewControllerInput, repository: HomeRepository, router: HomeRouterInput) {
        self.view = view
        self.repository = repository
        self.router = router
    }
}

extension HomePresenter: HomePresenterInput {
    func didTapRoute() {
        router.showDetail()
    }
    
    func didTapFetch() {
        repository.getData()
            .then { [weak self] data in
                guard let self else { return }
                self.view?.updateLabel(text: data.shuffled().description)
            }
            .catch { error in
                print(error)
            }
    }
}
