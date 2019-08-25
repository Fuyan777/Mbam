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
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateLabel.text = "2018/7/13"
        scroll()
    }
    
    var imageWidth: CGFloat = 300
    var imageHeight: CGFloat = 300
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        switch pageControl.currentPage {
        case 0:
            dateLabel.text = "2018/8/20"
        case 1:
            dateLabel.text = "2018/9/10"
        case 2:
            dateLabel.text = "2018/9/16"
        default:
            dateLabel.text = "2018/7/13"
        }
        
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    }
    
    func scroll(){
        
        scrollView.frame = CGRect(x: 58.0, y: 250.0, width: imageWidth, height: imageHeight)
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
        let thirdImageView = UIImageView(image: UIImage(named: "musicImage.png"))
        thirdImageView.frame = CGRect(x: imageWidth * 2.0, y: 0.0, width: imageWidth, height: imageHeight)
        thirdImageView.contentMode = UIView.ContentMode.scaleAspectFill
        scrollView.addSubview(thirdImageView)
        
        let fourthImageView = UIImageView(image: UIImage(named: "image4.png"))
        fourthImageView.frame = CGRect(x: imageWidth * 3.0, y: 0.0, width: imageWidth, height: imageHeight)
        fourthImageView.contentMode = UIView.ContentMode.scaleAspectFill
        scrollView.addSubview(fourthImageView)

    }
    
}

