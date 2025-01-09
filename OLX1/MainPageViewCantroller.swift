//
//  MainPageViewCantroller.swift
//  OLX1
//
//  Created by Abdulvoxid on 30/03/24.
//

import UIKit

final class MainPageViewCantroller: UIViewController {
    
    private let categoryLabel = UILabel()
    private let showAllCategoryButton = UIButton()
    private let recommendLabel = UILabel()
  
    
    private lazy var categoryCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 82, height: 115)
        layout.minimumLineSpacing = 28
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
       
        let collectionView = UICollectionView(
            frame: CGRect(x: 0, y: 105, width: UIScreen.main.bounds.width, height: 160)  ,
            collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MainPageCategoryCell.self, forCellWithReuseIdentifier: "cell")
        
        return collectionView
    }()
    
    
    private lazy var recomendationCollectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.itemSize = .init(width: (UIScreen.main.bounds.width - 52) / 2 , height: 207)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
       
        let collectionView = UICollectionView(
            frame: CGRect(x: 0, y: 280, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 370)  ,
            collectionViewLayout: layout)
        collectionView.backgroundColor = .rgb(243, 243, 243)
        collectionView.allowsSelection = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MainPageRecomendationCell.self, forCellWithReuseIdentifier: "cell1")
        
        return collectionView
    }()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSearchBar()
        setCategoryLabel()
        setshowAllCategoryButton()
        setRecommendLabel()
        
        view.addSubview(categoryCollectionView)
        view.addSubview(recomendationCollectionView)
        view.backgroundColor = .rgb(243, 243, 243)
    }
}


extension MainPageViewCantroller {
    func setUpSearchBar() {
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
    
    func setCategoryLabel() {
        categoryCollectionView.addSubview(categoryLabel)
        categoryLabel.frame = CGRect(x: 15, y: 10, width: 90, height: 19)
        categoryLabel.text = "Категории"
        categoryLabel.font = .systemFont(ofSize: 16)
        categoryLabel.textColor = .rgb(0, 0, 0)
    }
    
    func setshowAllCategoryButton() {
        categoryCollectionView.addSubview(showAllCategoryButton)
        showAllCategoryButton.frame = CGRect(x: 280, y: 10, width: 85, height: 14)
        showAllCategoryButton.setTitle("Смотреть все", for: .normal)
        showAllCategoryButton.setTitleColor(.rgb(116, 116, 116), for: .normal)
        showAllCategoryButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        showAllCategoryButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(showAllCategoryTapped)))

    }
    
    func setRecommendLabel() {
        recomendationCollectionView.addSubview(recommendLabel)
        recommendLabel.frame = CGRect(x: 15, y: 0, width: 186, height: 16)
        recommendLabel.text = "Рекомендованое вам"
        //recommendLabel.font = .systemFont(ofSize: 18)
        recommendLabel.font = .boldSystemFont(ofSize: 16)
        recommendLabel.textColor = .rgb(0, 0, 0)
    }
    

}



extension MainPageViewCantroller: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == categoryCollectionView {
            return 10
        } else {
            return 20
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == categoryCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainPageCategoryCell
            
            if indexPath.row == 0 {
                cell.imageView.image = UIImage(named: "olx")
                cell.titleLable.text = "Все обявления"
                cell.titleLable.numberOfLines = 2
                cell.titleLable.textAlignment = .center
                cell.titleLable.font = .systemFont(ofSize: 12)
            } else {
                cell.imageView.image = UIImage(named: "kalyaska")
                cell.titleLable.text = "Десткий мир"
                cell.imageView.layer.cornerRadius = 40
                cell.imageView.backgroundColor = .rgb(255, 206, 50)
                cell.titleLable.numberOfLines = 2
                cell.titleLable.textAlignment = .center
                cell.titleLable.font = .systemFont(ofSize: 12)
            }
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! MainPageRecomendationCell
            cell.backgroundColor = .white
            cell.layer.cornerRadius = 10
            cell.clipsToBounds = true
            cell.imageView.image = UIImage(named: "masterPhoto")
            return cell
        }
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView,
         layout collectionViewLayout: UICollectionViewLayout,
         insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == categoryCollectionView {
            return UIEdgeInsets(top: 22, left: 10, bottom: 22, right: 10)
        } else {
            return UIEdgeInsets(top: 20, left: 16, bottom: 0, right: 16)
        }
    }
    
    
    @objc func showAllCategoryTapped(_ sender: UITapGestureRecognizer) {
        navigationController?.pushViewController(MainPageCategoryListView(), animated: true)
    }

}

