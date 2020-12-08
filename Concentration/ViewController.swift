//
//  ViewController.swift
//  Concentration
//
//  Created by wyn on 2020/12/8.
//

import UIKit

class ViewController: UIViewController {
    private var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: " + flipCount.description
        }
    }

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet var flipCountLabel: UILabel!
    private let emojiChoices = ["🐱","🐶","🐱","🐶"]

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card was not in cardButtons")
        }
    }

    private func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}

