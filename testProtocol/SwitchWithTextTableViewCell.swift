//
//  SwitchWithTextTableViewCell.swift
//  testProtocol
//
//  Created by dev_sinu on 2017. 3. 9..
//  Copyright © 2017년 com.example. All rights reserved.
//

import UIKit

protocol SwitchwithTextCellDataSource {
    var title: String { get }
    var switchOn: Bool { get }
}

protocol SwitchWithTextCellDelegate {
    func onSwitchToggleOn(on: Bool)
    
    var switchColor: UIColor { get }
    var textColor: UIColor { get }
    var font: UIFont { get }
}

struct MinionModelViewModel: SwitchwithTextCellDataSource {
    var title: String = " wow! good protocol!"
    var switchOn: Bool = false
}

extension MinionModelViewModel: SwitchWithTextCellDelegate {
    var font: UIFont {
        return .systemFont(ofSize: 15)
    }

    var textColor: UIColor {
        return .red
    }

    var switchColor: UIColor {
        return .purple
    }
    
    func onSwitchToggleOn(on: Bool) {
        if on {
            print("the monions are here to stay!")
        } else {
            print("the minions went out to play!")
        }
    }
}

class SwitchWithTextTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var switchh: UISwitch!
    
    func configure(withDataSource dataSource: SwitchwithTextCellDataSource, delegate: SwitchWithTextCellDelegate?) {
        title.text = dataSource.title
        title.font = delegate?.font
        title.textColor = delegate?.textColor

        switchh.isOn = dataSource.switchOn
        switchh.onTintColor = delegate?.switchColor
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
