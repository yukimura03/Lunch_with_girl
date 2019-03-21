//
//  ViewController.swift
//  Lunch_with_girl
//
//  Created by minagi on 2019/03/21.
//  Copyright © 2019 minagi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var girlImage: UIImageView!
    @IBOutlet weak var frame: UIImageView!
    @IBOutlet weak var serifLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var numberOfText = 0
    var random = 0
    var girlVoice : AVAudioPlayer!
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        //セリフの内容
        var serif = [
            "タップしてスタート！",
            "おつかれさま。\nお昼、何食べましょうか。",
            "えっ、わたしが決めるんですか？",
            "えーと・・・じゃあ・・・",
            "サンドイッチの気分です。\nタマゴサンド、好きなんですよ。",
            //selectLunch[random],
            "ほらほら、時間なくなっちゃいますよ。\n早く食べに行きましょう！"]
        
        numberOfText += 1
        
        if numberOfText > 5 {
            numberOfText = 0
        }
        
        serifLabel.numberOfLines = 0
        serifLabel.text = serif[numberOfText]
        
        switch numberOfText {
        case 0...2:
            girlImage.image = UIImage(named: "girl_nomal")
            
        case 3:
            girlImage.image = UIImage(named: "girl_think")
            
        case 4, 5:
            girlImage.image = UIImage(named: "girl_smile")
            
        default:
            fatalError()
        }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
    }

    func setup() {
        numberOfText = 0
        serifLabel.text = "タップしてスタート！"
        girlImage.image = UIImage(named: "girl_nomal")
    }

}

