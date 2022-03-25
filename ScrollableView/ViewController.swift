//
//  ViewController.swift
//  ScrollableView
//
//  Created by Seunghun Yang on 2022/03/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .red
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private let navigationBar: UIView = {
        let navigationBar = UIView()
        navigationBar.backgroundColor = .cyan
        return navigationBar
    }()

    private let cancelButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        return button
    }()
    
    private let someView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private let someImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "heart.fill")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(navigationBar)
        navigationBar.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(44)
        }
        
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom)
            make.bottom.leading.trailing.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.edges.equalToSuperview()
        }
        
        contentView.addSubview(someView)
        someView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(1200)
            make.leading.trailing.equalToSuperview()
        }
        
        contentView.addSubview(someImageView)
        someImageView.snp.makeConstraints { make in
            make.top.equalTo(someView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(someImageView.snp.width)
            make.bottom.equalToSuperview()
        }
        
        navigationBar.addSubview(cancelButton)
        cancelButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(21.2)
        }
    }
}

