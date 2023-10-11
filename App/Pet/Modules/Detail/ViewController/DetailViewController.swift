//
//  DetailViewController.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import UIKit

protocol DetailViewControllerInput: AnyObject { }

final class DetailViewController: UIViewController {
    var presenter: DetailPresenterInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

// MARK: - DetailViewControllerInput

extension DetailViewController: DetailViewControllerInput { }
