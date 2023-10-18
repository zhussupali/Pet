//
//  HomePresenter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 20.08.2022.
//

import Foundation

final class HomePresenter {
    private weak var view: HomeViewInput?
    private let repository: HomeRepository
    private let router: HomeRouterInput
    
    init(view: HomeViewInput, repository: HomeRepository, router: HomeRouterInput) {
        self.view = view
        self.repository = repository
        self.router = router
    }
}

// MARK: - HomeViewOutput

extension HomePresenter: HomeViewOutput {
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
