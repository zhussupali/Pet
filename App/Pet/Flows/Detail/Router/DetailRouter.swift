//
//  DetailRouter.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation
import UIKit

protocol DetailRouterInput {
    static func assemble() -> DetailView
}

class DetailRouter: DetailRouterInput {
    var viewCtrl: UIViewController
    
    init(viewCtrl: UIViewController) {
        self.viewCtrl = viewCtrl
    }
    
    static func assemble() -> DetailView {
        let view = DetailView()
        let router = DetailRouter(viewCtrl: view)
        let presenter = DetailPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
}
