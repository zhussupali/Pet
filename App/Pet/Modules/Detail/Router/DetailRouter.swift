//
//  DetailRouter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation
import UIKit

protocol DetailRouterInput { }

final class DetailRouter {
    private var viewCtrl: UIViewController
    
    init(viewCtrl: UIViewController) {
        self.viewCtrl = viewCtrl
    }
    
    static func assemble() -> DetailViewController {
        let view = DetailViewController()
        let router = DetailRouter(viewCtrl: view)
        let presenter = DetailPresenter(view: view, router: router)
        view.output = presenter
        return view
    }
}

// MARK: - DetailRouterInput

extension DetailRouter: DetailRouterInput {}
