//
//  HomeRouter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 20.08.2022.
//

import Foundation
import UIKit
import Providers

protocol HomeRouterInput {
    func showDetail()
}

final class HomeRouter {
    private var viewCtrl: UIViewController
    
    init(viewCtrl: UIViewController) {
        self.viewCtrl = viewCtrl
    }
    
    static func assemble() -> HomeViewController {
        let view = HomeViewController()
        let router = HomeRouter(viewCtrl: view)
        let repository = HomeRepository(provider: DependencyContainer.resolve(Provider.self))
        let presenter = HomePresenter(view: view, repository: repository, router: router)
        view.output = presenter
        return view
    }
}

// MARK: - HomeRouterInput

extension HomeRouter: HomeRouterInput {
    func showDetail() {
        let detail = DetailRouter.assemble()
        viewCtrl.navigationController?.pushViewController(detail, animated: true)
    }
}
