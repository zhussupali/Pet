//
//  DetailViewController.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import UIKit

protocol DetailViewInput: AnyObject { }

protocol DetailViewOutput { }

final class DetailViewController: UIViewController {
    var output: DetailViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

// MARK: - DetailViewControllerInput

extension DetailViewController: DetailViewInput { }
