//
//  ViewController.swift
//  UIBase2
//
//  Created by m.korovin on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let uiView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        view.layer.cornerRadius = 50
        view.layer.borderWidth = 7
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    private let layer: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = UIColor.blue.cgColor
        layer.cornerRadius = 50
        layer.frame = CGRect(x: 80, y: 110, width: 100, height: 100)
        return layer
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setupUI()
    }
    
    func setupUI() {
        setupConstrains()
        view.layer.addSublayer(layer)
    }
    
    func setupConstrains() {
        view.addSubview(uiView)
        
        NSLayoutConstraint.activate([
            uiView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            uiView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            uiView.heightAnchor.constraint(equalToConstant: 120),
            uiView.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    


}

