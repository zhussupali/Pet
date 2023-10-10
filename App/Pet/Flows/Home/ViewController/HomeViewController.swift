//
//  HomeViewController.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 20.08.2022.
//

import UIKit

protocol HomeViewControllerInput: AnyObject {
    func updateLabel(text: String)
}

final class HomeViewController: UIViewController {
    var presenter: HomePresenterInput?
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textColor = .black
        label.text = "Empty label..."
        return label
    }()
    
    private lazy var routeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Route", for: .normal)
        button.addTarget(self, action: #selector(routeButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    private lazy var fetchDataButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Fetch", for: .normal)
        button.addTarget(self, action: #selector(fetchButtonDidTap), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
    }
    
    @objc private func routeButtonDidTap() {
        presenter?.didTapRoute()
    }    
    
    @objc private func fetchButtonDidTap() {
        presenter?.didTapFetch()
    }
    
    private func setView() {
        view.backgroundColor = .white
        
        [label, routeButton, fetchDataButton].forEach(view.addSubview)
        
        label.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
            make.bottom.equalTo(routeButton.snp.top).inset(-16)
        }
        
        routeButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        fetchDataButton.snp.makeConstraints { make in
            make.centerX.equalTo(routeButton)
            make.top.equalTo(routeButton.snp.bottom).offset(16)
        }
    }
}

// MARK: - HomeViewControllerInput

extension HomeViewController: HomeViewControllerInput {
    func updateLabel(text: String) {
        label.text = text
    }
}
