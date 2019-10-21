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
        button.setBackgroundImage(UIImage(named: "rectangle"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var falseButton: UIButton = {
        var button = UIButton()
        button.setTitle("False", for: .normal)
        button.setBackgroundImage(UIImage(named: "rectangle"), for: .normal)
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

