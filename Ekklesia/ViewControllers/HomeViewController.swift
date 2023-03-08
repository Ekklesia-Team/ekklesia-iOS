//
//  ViewController.swift
//  Ekklesia
//
//  Created by 이상준 on 2023/03/04.
//

import UIKit

class HomeViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    func configureUI() {
        collectionView.backgroundColor = .white
    }
}

