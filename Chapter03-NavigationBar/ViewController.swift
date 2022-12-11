//
//  ViewController.swift
//  Chapter03-NavigationBar
//
//  Created by nakrlove on 2022/12/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.initTitle()
//        self.initTitleNew()
//        self.initTitleImage()
        self.initTitleInput()
    }

    
    func initTitleInput() {
        let ft = UITextField()
        ft.frame = CGRect(x: 0, y: 0, width: 400, height: 35)
        ft.backgroundColor = .white
        ft.font = UIFont.systemFont(ofSize: 13)
        ft.autocapitalizationType = .none
        ft.autocorrectionType = .no
        ft.spellCheckingType = .no
        ft.keyboardType = .URL
        ft.keyboardAppearance = .dark
        ft.layer.borderWidth = 0.3
        ft.layer.borderColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
        
        self.navigationItem.titleView = ft
        
        
//        let v = UIView()
//        v.frame = CGRect(x: 0, y: 0, width: 50, height: 37)
//        v.backgroundColor = .brown
//        let leftitem = UIBarButtonItem(customView: v)

        let back = UIImage(named: "arrow-back")
        let leftitem = UIBarButtonItem(image: back, style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = leftitem
        
        let rv = UIView()
        rv.frame = CGRect(x: 0, y: 0, width: 70, height: 37)
//        rv.backgroundColor = .red
        let cnt = UILabel()
        cnt.frame = CGRect(x: 10, y: 8, width: 20, height: 20)
        cnt.font = UIFont.boldSystemFont(ofSize: 10)
        cnt.textColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0)
        cnt.text = "12"
        cnt.textAlignment = .center
        cnt.layer.cornerRadius = 3
        cnt.layer.borderWidth = 2
        cnt.layer.borderColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
        rv.addSubview(cnt)
        
        let more = UIButton(type: .system)
        more.frame = CGRect(x: 50, y: 10, width: 16, height: 16)
        more.setImage(UIImage(named: "more"), for: .normal)
        
        rv.addSubview(more)
        
        let rightitem = UIBarButtonItem(customView: rv)
        self.navigationItem.rightBarButtonItem = rightitem
        
    }
    
    func initTitleImage(){
        
        let image = UIImage(named: "swift_logo")
        let imageV = UIImageView(image: image)
        self.navigationItem.titleView = imageV
    
    }
    
    func initTitleNew(){
        
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 56))
        
        
        let image = UIImage(named: "swift_logo")
        let imageV = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageV.image = image
//        imageV.al
        
        
        let topTitle = UILabel(frame: CGRect(x: (image?.size.width) ?? 0, y: 0, width: 200, height: 18))
        topTitle.numberOfLines = 1
        topTitle.textAlignment = .center
        topTitle.font = UIFont.systemFont(ofSize: 15)
        topTitle.textColor = .white
        topTitle.text = "58개 숙소"
        
        let subTitle = UILabel(frame: CGRect(x: (image?.size.width) ?? 0, y: 18, width: 200, height: 18))
        subTitle.numberOfLines = 1
        subTitle.textAlignment = .center
        subTitle.font = UIFont.systemFont(ofSize: 12)
        subTitle.textColor = .white
        subTitle.text = "1박(1월 10일 ~ 1월 11일)"
        
        
    
//        let imageV = UIImageView(image: image)
        
        containerView.addSubview(topTitle)
        containerView.addSubview(subTitle)
        containerView.addSubview(imageV)
        self.navigationItem.titleView = containerView
        
        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = color
    }
    
    func initTitle() {
        let nTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        nTitle.numberOfLines = 2
        nTitle.textAlignment = .center
        nTitle.textColor = .white
        nTitle.font = UIFont.systemFont(ofSize: 15)
        nTitle.text = "58개소 \n 1박(1월 10일 ~ 1월 11일)"
        
        self.navigationItem.titleView = nTitle
        
        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = color
    }
}

