//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Lennox Mwabonje on 01/10/2024.
//

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor                                    = .systemBackground
        title                                                   = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles  = true
        setupButton()
    }

    private func setupButton() {
        view.addSubview(nextButton)
        
        nextButton.backgroundColor = .systemBlue
        nextButton.setTitle("Next", for: .normal)
        nextButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    @objc private func tapButton() {
        let secondScreen = SecondScreen()
        secondScreen.title  = "Second Screen"
        navigationController?.pushViewController(secondScreen, animated: true)
    }

}

