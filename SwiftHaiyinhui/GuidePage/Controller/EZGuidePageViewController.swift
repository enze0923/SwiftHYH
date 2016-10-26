//
//  GuidePageViewController.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/10/26.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit

class EZGuidePageViewController: UIViewController {
    
    private var pageScrollView: UIScrollView!
    var pageControl: UIPageControl!
    var startBtn: UIButton!
    let numberOfPages = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        initView()

    }

    func initView(){
        pageScrollView = UIScrollView.init(frame: CGRect.init(x: 0, y: 0, width: Int(ScreenWidth), height: Int(ScreenHeight)))
        
        pageScrollView.isPagingEnabled = true
        pageScrollView.showsVerticalScrollIndicator = false
        pageScrollView.showsHorizontalScrollIndicator = false
        pageScrollView.scrollsToTop = false
        pageScrollView.bounces = false
        pageScrollView.contentOffset = CGPoint.zero
        pageScrollView.contentSize = CGSize.init(width: ScreenWidth*CGFloat(numberOfPages), height: ScreenHeight)
        pageScrollView.delegate = self
        pageScrollView.backgroundColor = UIColor.brown;
        view.addSubview(pageScrollView)
        
        for index in 0..<numberOfPages {
            let imageView = UIImageView.init(image: UIImage.init(named: "GuideImage\(index+1)"))
            
            imageView.frame = CGRect.init(x: ScreenWidth*CGFloat(index), y: 0, width: ScreenWidth, height: ScreenHeight)
            
            pageScrollView.addSubview(imageView)
        }
        
        
        pageControl = UIPageControl.init(frame: CGRect.init(x: (ScreenWidth-100)/2, y: ScreenHeight-20-30, width: 100, height: 20))
        pageControl.numberOfPages = numberOfPages
        view.addSubview(pageControl)
        
        startBtn = UIButton.init(type: UIButtonType.custom)
        startBtn.frame = CGRect.init(x: (ScreenWidth-100)/2, y: ScreenHeight-100, width: 100, height: 30)
        startBtn.setTitleColor(UIColor.black, for: UIControlState.normal)
        startBtn.backgroundColor = UIColor.white
        startBtn.setTitle("立即体验", for: UIControlState.normal)
        startBtn.addTarget(self, action: #selector(startInvest), for: UIControlEvents.touchUpInside)
        startBtn.layer.cornerRadius = 5;
        startBtn.layer.masksToBounds = true
        startBtn.alpha = 0.0
        view .addSubview(startBtn)
        
    }
    
    func startInvest() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

}



extension EZGuidePageViewController: UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset
        
        //修改pagecontrol的页面指示
        pageControl.currentPage = Int(offset.x/ScreenWidth)
        
        if pageControl.currentPage == numberOfPages-1 {
            UIView.animate(withDuration: 0.5, animations: {
                self.startBtn.alpha = 1.0
            })
        } else {
            UIView.animate(withDuration: 0.5, animations: { 
                self.startBtn.alpha = 0.0
            })
        }
        
    }
}
