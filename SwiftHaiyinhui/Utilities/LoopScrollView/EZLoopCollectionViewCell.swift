//
//  EZLoopCollectionViewCell.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/11/22.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit

class EZLoopCollectionViewCell: UICollectionViewCell {
    
    var cycleImage: UIImage! {
        didSet {
            imgView.image = cycleImage
        }
    }
    
    lazy var imgView: UIImageView = {
        let imgView: UIImageView = UIImageView(frame:self.bounds)
        imgView.contentMode = .scaleAspectFill
        
        return imgView
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) has not been implemention")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imgView.frame = bounds
    }
}


extension EZLoopCollectionViewCell {
    func setup() {
        addSubview(imgView)
    }
}
