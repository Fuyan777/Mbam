//
//  ViewController.swift
//  gaya-music
//
//  Created by 山田楓也 on 2019/08/24.
//  Copyright © 2019 Fuuya Yamada. All rights reserved.
//

import UIKit
import AVFoundation

class musicPlayer: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer!
    
    @IBOutlet var button:UIButton!
    @IBOutlet weak var musicImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerButton.setImage(startImage, for: .normal)
        musicImage.layer.cornerRadius = musicImage.frame.width / 2.0
        music()
    }

    
    func music(){
        // 再生する audio ファイルのパスを取得
        let audioPath = Bundle.main.path(forResource: "sample", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
    }
    

    
    @IBOutlet weak var playerButton: UIButton!
    let stopImage = UIImage(named:"stopButton")
    let startImage = UIImage(named:"startButton")
    
    // ボタンがタップされた時の処理
    @IBAction func buttonTapped(_ sender : AnyObject) {
        if audioPlayer.isPlaying {
            audioPlayer.stop()
            playerButton.setImage(startImage, for: .normal)
        }
        else{
            audioPlayer.play()
            playerButton.setImage(stopImage, for: .normal)
        }
    }
}

