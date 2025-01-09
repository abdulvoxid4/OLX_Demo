//
//  MainPageViewCantroller.swift
//  OLX1
//
//  Created by Abdulvoxid on 30/03/24.
//

import UIKit

final class MainPageViewCantroller: UIViewController, ui UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 82, height: 115)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        
        let collectionViiew = UICollectionView(
            frame:CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 205),
            collectionViewLayout: layout)
        collectionViiew.backgroundColor = .green
        collectionViiew.delegate = self
        collectionViiew.dataSource = self
        collectionViiew.register(UICollectionView.self, forCellWithReuseIdentifier: "cell")
        return collectionViiew
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNaBar()
        view.addSubview(collectionView)
        
        view.backgroundColor = .rgb(243, 243, 243)
    }
}

extension MainPageViewCantroller {
    func setUpNaBar() {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 32, height: 36))
        let leftPadding = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        leftPadding.tintColor = .gray
        leftPadding.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        leftPadding.widthAnchor.constraint(equalToConstant: 25).isActive = true
        textField.backgroundColor = .white
        textField.placeholder = "Поиск"
        textField.leftView = leftPadding
        textField.layer.cornerRadius = 8
        textField.leftViewMode = .always
        navigationItem.titleView = textField
        navigationController?.navigationBar.backgroundColor = .rgb(243, 243, 243)
        
    }
}

//extension ViewController : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        10
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        
//        return cell
//   }
//    
//    
//}
