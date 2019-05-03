//
//  firstPage.swift
//  LifeCycle
//
//  Created by Yusuf DEMİRKOPARAN on 3.05.2019.
//  Copyright © 2019 Yusuf DEMİRKOPARAN. All rights reserved.
//

import UIKit
import TinyConstraints

class firstPage : UIViewController {
    
    var btn : UIButton =  {
        let b2 = UIButton()
        b2.setTitle("Kullanılan", for: .normal)
        b2.setTitleColor(.black, for: .normal)
        b2.backgroundColor = .lightGray
        return b2
    }()
    
    var label : UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.textColor = .white
        return lbl
    }()
    var didAppear : UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.textColor = .white
        return lbl
    }()
    
    var lbl2 : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.numberOfLines = 0
        return lbl
    }()
    var lbl3 : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.numberOfLines = 0
        return lbl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(btn)
        view.addSubview(label)
        view.addSubview(didAppear)
        view.addSubview(lbl2)
        view.addSubview(lbl3)
        
        btn.center(in: view)
        btn.width(100)
        btn.height(35)
        btn.addTarget(self, action: #selector(goSecond), for: .touchUpInside)
        
        label.topToBottom(of: btn)
        label.width(UIScreen.main.bounds.width)
        label.height(50)
        
        didAppear.topToBottom(of: label)
        didAppear.width(UIScreen.main.bounds.width)
        didAppear.height(50)
        
        lbl2.topToBottom(of: didAppear)
        lbl2.width(UIScreen.main.bounds.width)
        lbl2.height(50)
        
        lbl3.topToBottom(of: lbl2)
        lbl3.width(UIScreen.main.bounds.width)
        lbl3.height(50)
        
        
        print(0)
        label.isHidden      = true
        didAppear.isHidden  = true
        lbl2.isHidden       = true
        lbl3.isHidden       = true
        
        print("viewDidLoad = 0. Aşama Ekran yüklenmeden önce çalışır")
    }
    override func viewWillAppear(_ animated: Bool) {
        label.text = "viewWillAppear = 1. Aşama Ekran yüklenmeden önce Çalışır"
        label.isHidden = false
        print( "viewWillAppear = 1. Aşama Ekran yüklenmeden önce Çalışır")
        print(1)
    }
    override func viewDidAppear(_ animated: Bool) {
        didAppear.text = "viewDidAppear = 2. Aşama Ekran Yüklendikten Sonra Çalışır"
        didAppear.isHidden = false
        print( "viewDidAppear = 2. Aşama Ekran Yüklendikten Sonra Çalışır")
        print(2)
    }
    override func viewWillDisappear(_ animated: Bool) {
        lbl2.text = "viewWillDisappear = 3. Ekran kaybolmadan önce devreye girdi"
        lbl2.isHidden = false
        print( "viewWillDisappear = 3. Ekran kaybolmadan önce devreye girdi")
        print(3)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        lbl3.text = "viewDidDisappear = 4. Ekran Kayboldu devreye girdi "
        lbl3.isHidden = false
        print("viewDidDisappear = 4. Ekran Kayboldu devreye girdi ")
        print(4)
    }
    @objc func goSecond () {
        navigationController?.pushViewController(seconPage(), animated: true)
    }
}
