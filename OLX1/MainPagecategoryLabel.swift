//
//  MainPagecategoryLabel.swift
//  OLX1
//
//  Created by Abdulvoxid on 04/04/24.
//

import UIKit

final class MainPagecategoryLabel : UIViewController {
    
    let categoryLabelView = UIView()
    private let categoryLabel = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .red
        view.addSubview(categoryLabelView)
        categoryLabelView.backgroundColor = .red
        categoryLabelView.translatesAutoresizingMaskIntoConstraints = false
        categoryLabelView.topAnchor.constraint(equalTo: view.topAnchor, constant: 111).isActive = true
        categoryLabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        categoryLabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17).isActive = true
        categoryLabelView.heightAnchor.constraint(equalToConstant: 31).isActive = true
        
//                view.addSubview(categoryLabel)
//                categoryLabel.translatesAutoresizingMaskIntoConstraints = false
//                categoryLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 111).isActive = true
//                categoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
//                categoryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -324).isActive = true
//                categoryLabel.heightAnchor.constraint(equalToConstant: 19).isActive = true
//                categoryLabel.text = "Категории"
//                categoryLabel.font = .systemFont(ofSize: 16)
//                categoryLabel.textColor = .rgb(0, 0, 0)
    }
}
