//
//  MainPageCategoryListView.swift
//  OLX1
//
//  Created by Abdulvoxid on 08/04/24.
//

import UIKit

final class MainPageCategoryListView : UIViewController {
    
    private let imageView = UIImageView()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        navigationController?.navigationBar.backgroundColor = .white
        title = "Категории"
        
        setImageView()
    }
}

extension MainPageCategoryListView {
    func setImageView() {
        view.addSubview(imageView)
        imageView.image = UIImage(named: "olx")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -326).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
