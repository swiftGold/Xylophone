//
//  MainView.swift
//  Xylophone2023
//
//  Created by Сергей Золотухин on 23.01.2023.
//

import UIKit
import AVFoundation

final class MainView: UIView {
    
    private lazy var cButton = make(UIButton(type: .system)) {
        $0.setTitle("C", for: .normal)
        $0.addTarget(self, action: #selector(cButtonTapped), for: .touchUpInside)
        $0.layer.cornerRadius = 16
        $0.titleLabel?.font = .systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemRed
    }
    
    private lazy var dButton = make(UIButton(type: .system)) {
        $0.setTitle("D", for: .normal)
        $0.addTarget(self, action: #selector(dButtonTapped), for: .touchUpInside)
        $0.layer.cornerRadius = 16
        $0.titleLabel?.font = .systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemOrange
    }
    
    private lazy var eButton = make(UIButton(type: .system)) {
        $0.setTitle("E", for: .normal)
        $0.addTarget(self, action: #selector(eButtonTapped), for: .touchUpInside)
        $0.layer.cornerRadius = 16
        $0.titleLabel?.font = .systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemYellow
    }
    
    private lazy var fButton = make(UIButton(type: .system)) {
        $0.setTitle("F", for: .normal)
        $0.addTarget(self, action: #selector(fButtonTapped), for: .touchUpInside)
        $0.layer.cornerRadius = 16
        $0.titleLabel?.font = .systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemGreen
    }
    
    private lazy var gButton = make(UIButton(type: .system)) {
        $0.setTitle("G", for: .normal)
        $0.addTarget(self, action: #selector(gButtonTapped), for: .touchUpInside)
        $0.layer.cornerRadius = 16
        $0.titleLabel?.font = .systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemIndigo
    }
    
    private lazy var aButton = make(UIButton(type: .system)) {
        $0.setTitle("A", for: .normal)
        $0.addTarget(self, action: #selector(aButtonTapped), for: .touchUpInside)
        $0.layer.cornerRadius = 16
        $0.titleLabel?.font = .systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemBlue
    }
    
    private lazy var bButton = make(UIButton(type: .system)) {
        $0.setTitle("B", for: .normal)
        $0.addTarget(self, action: #selector(bButtonTapped), for: .touchUpInside)
        $0.layer.cornerRadius = 16
        $0.titleLabel?.font = .systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemPurple
    }
    
    private let stackView = make(UIStackView()) {
        $0.spacing = 8
        $0.distribution = .fillEqually
        $0.axis = .vertical
    }
    
    private var player: AVAudioPlayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func cButtonTapped() {
        playSound("C")
    }
    
    @objc
    private func dButtonTapped() {
        playSound("D")
    }
    
    @objc
    private func eButtonTapped() {
        playSound("E")
    }
    
    @objc
    private func fButtonTapped() {
        playSound("F")
    }
    
    @objc
    private func gButtonTapped() {
        playSound("G")
    }
    
    @objc
    private func aButtonTapped() {
        playSound("A")
    }
    
    @objc
    private func bButtonTapped() {
        playSound("B")
    }
}

private extension MainView {
    func playSound(_ forResource: String) {
        guard let path = Bundle.main.path(forResource: forResource, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func setupView() {
        
        stackView.addArrangedSubview(cButton)
        stackView.addArrangedSubview(dButton)
        stackView.addArrangedSubview(eButton)
        stackView.addArrangedSubview(fButton)
        stackView.addArrangedSubview(gButton)
        stackView.addArrangedSubview(aButton)
        stackView.addArrangedSubview(bButton)
        
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        myAddSubView(stackView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            cButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 5),
            cButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -5),
            
            dButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 10),
            dButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -10),
            
            eButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 15),
            eButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -15),
            
            fButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20),
            fButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -20),
            
            gButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 25),
            gButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -25),
            
            cButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 30),
            cButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -30),
            
            aButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 35),
            aButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -35),
            
            bButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            bButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -40)
        ])
    }
}
