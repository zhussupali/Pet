//
//  DetailView.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import UIKit

protocol DetailViewInput: AnyObject {
    
}

final class DetailView: UIViewController {
    var presenter: DetailPresenterInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

extension DetailView: DetailViewInput {
    
}
