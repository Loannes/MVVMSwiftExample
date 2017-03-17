//
//  SwitchWithTextTableViewCell.swift
//  testProtocol
//
//  Created by dev_sinu on 2017. 3. 9..
//  Copyright © 2017년 com.example. All rights reserved.
//  https://www.natashatherobot.com/swift-protocol-composition/

import UIKit

protocol TextPresentable {
    var text: String { get }
    var textColor: UIColor { get }
    var font: UIFont { get }
}

protocol SwitchPresentable {
    var switchOn: Bool { get }
    var switchColor: UIColor { get }
    
    func onSwitchToggleOn(on: Bool)
}

protocol ImagePresentable {
    var imageName: String { get }
}

protocol TextFieldPresentable {
    var placeholder: String { get }
    var text: String { get }
    
    func onTextFieldDidEndEditing(textField: UITextField)
}

extension TextPresentable {
    var textColor: UIColor {
        return .black
    }
    
    var font: UIFont {
        return .systemFont(ofSize: 17)
    }
}

typealias SwitchWithTextViewPresentable = TextPresentable & SwitchPresentable & ImagePresentable

class SwitchWithTextTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var switchh: UISwitch!

    func configure(presenter: SwitchWithTextViewPresentable) {
    
        title.text = presenter.text
        switchh.isOn = presenter.switchOn
    }
}
