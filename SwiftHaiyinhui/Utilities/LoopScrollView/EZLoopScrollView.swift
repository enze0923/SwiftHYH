//
//  EZLoopScrollView.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/11/22.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit


class EZLoopScrollView: UIView {

    //MARK: -
    //MARK: 初始化
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    
    //MARK:-
    //MARK:绘制视图
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
    //MARK:-
    //MARK:变量
    public var images:[UIImage] = [] {
        didSet {
            
        }
    }
    
    public var imageUrls:[String] = [] {
        didSet{
            
        }
    }
    
    public var timeInterval: TimeInterval = 0
    
    public var pageScale: CGFloat! {
        didSet{

        }
    }
    
    fileprivate var timer: Timer!
    
    private lazy var flowLayout: UICollectionViewFlowLayout = {
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        return flowLayout
    }()
    
   fileprivate lazy var collectionView: UICollectionView = {
        let collectionV: UICollectionView = UICollectionView(frame:self.bounds, collectionViewLayout:self.flowLayout)
        collectionV.delegate = self
        collectionV.dataSource = self
        collectionV.isPagingEnabled = true
        collectionV.showsHorizontalScrollIndicator = false
        collectionV.register(EZLoopCollectionViewCell.self, forCellWithReuseIdentifier: "loopscrollview")
        collectionV.backgroundColor = UIColor.clear
        return collectionV
    }()
    
    fileprivate lazy var pageControl: UIPageControl = {
        let pageCtrl: UIPageControl = UIPageControl()
        pageCtrl.center = CGPoint(x: self.bounds.size.width/2,y:self.bounds.size.height-12)
        
        return pageCtrl
    }()
}

extension EZLoopScrollView {
    
    func setup() {
        addSubview(collectionView)
        addSubview(pageControl)
    }
    
    func startTimer() {
        timer = Timer.init(timeInterval: self.timeInterval, repeats: true, block: { [weak self] (timer) in
            guard let strongSelf = self else {
                return
            }
            
            let offsetX = strongSelf.collectionView.contentOffset.x
            let width = strongSelf.collectionView.bounds.size.width
            let index = offsetX/width
            
            strongSelf.collectionView.setContentOffset(CGPoint(x: strongSelf.collectionView.bounds.width * CGFloat(index + 1), y: 0), animated: true)
            
        })
        
        RunLoop.main.add(timer, forMode: .commonModes)
        timer?.fire()
    }
    
    func restartTimer() {
        guard images.count>1 else {
            return
        }
        
        timer?.invalidate()
        
        if timeInterval != 0 {
            startTimer()
        }
    }
    
}


extension EZLoopScrollView: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension EZLoopScrollView: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "loopscrollview", for: indexPath)
        
        return cell
    }
}

extension EZLoopScrollView: UIScrollViewDelegate {
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }
    public func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        
    }
    
    public func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        
    }
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}




