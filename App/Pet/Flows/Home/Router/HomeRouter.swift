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
    static func assemble() -> HomeViewController
    func showDetail()
}

class HomeRouter: HomeRouterInput {
    var viewCtrl: UIViewController
    
    init(viewCtrl: UIViewController) {
        self.viewCtrl = viewCtrl
    }
    
    static func assemble() -> HomeViewController {
        let view = HomeViewController()
        let router = HomeRouter(viewCtrl: view)
        let repository = HomeRepository(provider: Dependency.resolver.resolve(Provider.self)!)
        let presenter = HomePresenter(view: view, repository: repository, router: router)
        view.presenter = presenter
        return view
    }
    
    func showDetail() {
        let detail = DetailRouter.assemble()
        viewCtrl.navigationController?.pushViewController(detail, animated: true)
    }
}
