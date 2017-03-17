//
//  MinionModeViewModel.swift
//  testProtocol
//
//  Created by loannes on 2017. 3. 18..
//  Copyright © 2017년 com.example. All rights reserved.
//

import UIKit

struct MinionModeViewModel: TextPresentable {
    var text: String
    var textColor: UIColor
    var font: UIFont
    
    init(text: String) {
        self.text = text
        self.textColor = .yellow
        self.font = .systemFont(ofSize: 15)
    }
    
}

//extension MinionModeViewModel: TextPresentable {
//    var text: String { return "Minion Mode" }
//    var textColor: UIColor { return .black }
//    var font: UIFont { return .systemFont(ofSize: 17.0) }
//}

extension MinionModeViewModel: SwitchPresentable {
    var switchOn: Bool { return false }
    var switchColor: UIColor { return .yellow }
    
    func onSwitchToggleOn(on: Bool) {
        if on {
            print("The Minions are here to stay!")
        } else {
            print("The Minions went out to play!")
        }
    }
}

extension MinionModeViewModel: ImagePresentable {
    var imageName: String { return "minionParty.png" }
}
