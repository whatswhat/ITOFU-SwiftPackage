//
//  File.swift
//  
//
//  Created by Diego on 2021/4/15.
//

import Foundation
import UIKit

class EmojiViewController: UIViewController {
    public static func createInstance() -> UIViewController {
        return UIStoryboard(name: "Emoji", bundle: .module).instantiateViewController(withIdentifier: "EmojiViewController")
    }
    
    @IBOutlet public weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(backBtnPressed(_:)), for: .touchUpInside)
    }
    
    @objc private func backBtnPressed(_ sneder: UIButton) {
        self.dismiss(animated: true)
    }
}
