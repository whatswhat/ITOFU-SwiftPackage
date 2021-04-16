//
//  EmojiView.swift
//  
//
//  Created by Diego on 2021/4/13.
//

import Foundation
import UIKit
import Emojier

public class EmojiView: UIView {
    @IBOutlet public weak var contentView: UIView!
    @IBOutlet public weak var emojiLabel: UILabel!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.module.loadNibNamed("EmojiView", owner: self, options: nil)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(contentView)
        
        
        emojiLabel.text = NSLocalizedString("Text", bundle: .module, comment: "標題")
    }
 
    public func setEmoji(_ keyword: String) {
        
//        self.text = Emojier().searchEmoji(keyword)
//
//        let path = Bundle.module.path(forResource: "Logo", ofType: "png")
//
//        let image = UIImage(named: "Logo", in: .module)
        
    }
    
}
