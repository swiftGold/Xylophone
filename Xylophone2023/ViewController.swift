//
//  ViewController.swift
//  Xylophone2023
//
//  Created by Сергей Золотухин on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
}

private extension ViewController {
    func setupViewController() {
        view.backgroundColor = .systemBackground
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.myAddSubView(mainView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5)
        ])
    }
}

