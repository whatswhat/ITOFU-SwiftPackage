//
//  EmojiView.swift
//  
//
//  Created by Diego on 2021/4/13.
//

import Foundation
import UIKit
import Emojier

class EmojiView: UIView {
    @IBOutlet public weak var contentView: UIView!
    @IBOutlet public weak var emojiLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.module.loadNibNamed("EmojiView", owner: self, options: nil)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(contentView)
    }
 
    public func setEmoji(_ keyword: String) {
        
        
        
//        self.text = Emojier().searchEmoji(keyword)
//
//        let path = Bundle.module.path(forResource: "Logo", ofType: "png")
//
//        let image = UIImage(named: "Logo", in: .module)
        
    }
    
}
