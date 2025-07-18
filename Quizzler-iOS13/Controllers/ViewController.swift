//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var trueButton: UIButton = {
        var button = UIButton()
        button.setTitle("True", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setBackgroundImage(UIImage(named: "Rectangle"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var falseButton: UIButton = {
        var button = UIButton()
        button.setTitle("False", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setBackgroundImage(UIImage(named: "Rectangle"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var progressBar: UIProgressView = {
        var progressView = UIProgressView()
        progressView.progress = 0.5
        progressView.tintColor = UIColor(red: 0.255, green: 0.117, blue: 0.168, alpha: 1)
        progressView.trackTintColor = .white
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var questionLabel: UILabel = {
        var label = UILabel()
        label.text = "Question"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var scoreLabel: UILabel = {
        var label = UILabel()
        label.text = "Score"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var bubbleImage: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "Background-Bubbles")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.37, green: 0.44, blue: 0.74, alpha: 1)
        [trueButton, falseButton, progressBar, questionLabel, scoreLabel, bubbleImage].forEach { view.addSubview($0) }
        setupConstrains()
    }

    private func setupConstrains() {
        NSLayoutConstraint.activate([
            bubbleImage.heightAnchor.constraint(equalToConstant: 102),
            bubbleImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            progressBar.heightAnchor.constraint(equalToConstant: 10),
            progressBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            progressBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            progressBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            falseButton.heightAnchor.constraint(equalToConstant: 80),
            falseButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            falseButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            falseButton.bottomAnchor.constraint(equalTo: progressBar.topAnchor, constant: -10),
            trueButton.heightAnchor.constraint(equalToConstant: 80),
            trueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            trueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            trueButton.bottomAnchor.constraint(equalTo: falseButton.topAnchor, constant: -10),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            questionLabel.bottomAnchor.constraint(equalTo: trueButton.topAnchor, constant: 0),
            questionLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 0),
            scoreLabel.heightAnchor.constraint(equalToConstant: 10),
            scoreLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0)
        ])
    }
}

