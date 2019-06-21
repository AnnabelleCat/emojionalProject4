//
//  ViewController.swift
//  emojionalProject4
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Anika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
     let emojis = ["🥭🥥" : "mango coconut", "🍓🍌" : "strawberry banana", "🍈" : "melon", "🍎🥬": "apple spinach", "🍑🥑": "peach avacado", "🍉" : "watermelon" ]
    
    let customMessages = ["mango coconut": ["Good choice, this smoothie has a lot of Vitamin C", "Coconut is good for your skin!", "Copy this link: https://www.foodnetwork.com/recipes/food-network-kitchen/mango-coconut-and-chia-smoothie-3363058"], "strawberry banana": ["Bananas have a lot of potassium!", "This smoothie is rich in antioxidants!", "Copy this link: https://www.gimmesomeoven.com/strawberry-banana-smoothie-recipe/"], "melon": ["Honeydew is in season from August to October", "Honeydew has a high water content", "Copy this link:https://www.gimmesomeoven.com/strawberry-banana-smoothie-recipe/"], "apple spinach": ["Healthy choice!", "Spinach is a superfood!", "Copy this link: https://www.eatingonadime.com/apple-spinach-green-smoothie-recipe/"], "peach avacado": ["Avocados are a good source of fat", "Good choice!", "Copy this link:https://www.homemadenutrition.com/2016/05/19/green-avocado-peach-smoothie/"], "watermelon": ["This drink is very hydrating", "This is a refreshing summer drink!", "Copy this link: https://frommybowl.com/watermelon-slushie-recipe/"] ]
    
    
    @IBAction func showMessage(_sender: UIButton) {
        let selectedEmotion = _sender.titleLabel!.text!
        let emojiMessage = customMessages[emojis[selectedEmotion]!]?[Int.random(in: 0..<3)]
        
        let alertController = UIAlertController(title: "Smoothie Tip", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
   
    
}

