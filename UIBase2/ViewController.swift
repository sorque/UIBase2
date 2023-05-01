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
        view.backgroundColor = .systemCyan
        view.layer.cornerRadius = 52
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    private let layer: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = UIColor.blue.cgColor
        layer.cornerRadius = 50
        layer.frame = CGRect(x: 140, y: 110, width: 100, height: 100)
        return layer
    } ()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setupUI()
        addText()
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
            uiView.widthAnchor.constraint(equalToConstant: 120)
        ])
    }

//    private let someText: UITextView = {
//        let text = UITextView()
//        text.textColor = .systemPurple
//        text.backgroundColor = .systemGreen
//        text.text = ("hello it's me")
//        text.translatesAutoresizingMaskIntoConstraints = false
//        return text
//    } ()
//
//    func addText() {
//        view.addSubview(someText)
//
//        NSLayoutConstraint.activate([
//            someText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            someText.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            someText.heightAnchor.constraint(equalToConstant: 40),
//            someText.widthAnchor.constraint(equalToConstant: 120),
//
//        ])
//    }
    
    private let someTextField: UITextField = {
        let textNew = UITextField()
        textNew.textColor = .systemPurple
        textNew.backgroundColor = .systemGreen
        textNew.text = ("hello it's me")
        textNew.translatesAutoresizingMaskIntoConstraints = false
        textNew.isEnabled = false
        return textNew
    } ()

    func addText() {
        view.addSubview(someTextField)

        NSLayoutConstraint.activate([
            someTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            someTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            someTextField.heightAnchor.constraint(equalToConstant: 40),
            someTextField.widthAnchor.constraint(equalToConstant: 120),

        ])
    }

 

    
    
    
    


}

