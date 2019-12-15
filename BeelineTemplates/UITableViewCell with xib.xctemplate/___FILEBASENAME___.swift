//
//  TableViewCell.swift
//  MyBeeline
//
//  Created by Vladimir on 03/08/2019.
//  Copyright © 2019 Beeline. All rights reserved.
//

import MBUIKit
import UICoreKit

final class ___FILEBASENAME___: UITableViewCell, ResetableView, TableViewRegisterable, NibLoadable {

    override func awakeFromNib() {
        super.awakeFromNib()
        resetToEmptyState()
        initialSetup()
    }
    
    func resetToEmptyState() {}
}

extension ___FILEBASENAME___ {
    private func initialSetup() {}
}
