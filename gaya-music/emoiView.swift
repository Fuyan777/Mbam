//
//  emoiView.swift
//  gaya-music
//
//  Created by 山田楓也 on 2019/08/24.
//  Copyright © 2019 Fuuya Yamada. All rights reserved.
//

import UIKit

class emoiView: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll()
        // Do any additional setup after loading the view.
    }
    
    var imageWidth: CGFloat = 370
    var imageHeight: CGFloat = 370
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    }
    
    func scroll(){
        
        scrollView.frame = CGRect(x: 25.0, y: 225.0, width: imageWidth, height: imageHeight)
        scrollView.contentSize = CGSize(width: imageWidth * 4, height: imageHeight)
        scrollView.isPagingEnabled = true
        
        // 1枚目の画像
        let firstImageView = UIImageView(image: UIImage(named: "image1.png"))
        firstImageView.frame = CGRect(x: imageWidth * 0.0, y: 0.0, width: imageWidth, height: imageHeight)
        firstImageView.contentMode = UIView.ContentMode.scaleAspectFill
        scrollView.addSubview(firstImageView)
        
        // 2枚目の画像
        let secondImageView = UIImageView(image: UIImage(named: "image2.png"))
        secondImageView.frame = CGRect(x: imageWidth * 1.0, y: 0.0, width: imageWidth, height: imageHeight)
        secondImageView.contentMode = UIView.ContentMode.scaleAspectFill
        scrollView.addSubview(secondImageView)
        
        // 3枚目の画像
        let thirdImageView = UIImageView(image: UIImage(named: "fuya.jpg"))
        thirdImageView.frame = CGRect(x: imageWidth * 2.0, y: 0.0, width: imageWidth, height: imageHeight)
        thirdImageView.contentMode = UIView.ContentMode.scaleAspectFill
        scrollView.addSubview(thirdImageView)
        
        let fourthImageView = UIImageView(image: UIImage(named: "image4.png"))
        fourthImageView.frame = CGRect(x: imageWidth * 3.0, y: 0.0, width: imageWidth, height: imageHeight)
        fourthImageView.contentMode = UIView.ContentMode.scaleAspectFill
        scrollView.addSubview(fourthImageView)

    }
    
}

