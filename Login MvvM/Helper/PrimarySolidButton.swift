//
//  PrimarySolidButton.swift
//  Login MvvM
//
//  Created by Mohamed Khaled on 06/08/2023.
//

import Foundation
import UIKit

public class PrimarySolidButton: UIButton {
    
    public var title: String? {
        didSet {
            self.setTitle(title, for: .normal)
        }
    }
    
    public override var isEnabled: Bool {
        didSet {
            backgroundColor = isEnabled ? .orange : .systemMint
        }
    }
    
    required public init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        layer.cornerRadius = 10
        clipsToBounds = true
        setTitleColor(.white, for: .normal)
        backgroundColor = .orange
        titleLabel?.font = .boldSystemFont(ofSize: 16)
    }
}
 
