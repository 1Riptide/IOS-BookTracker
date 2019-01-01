//
//  RatingControl.swift
//  BookTracker
//
//  Created by Casey Stalnaker on 1/1/19.
//  Copyright © 2019 Casey Stalnaker. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 0, y:0, width: 84, height: 44))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(ratingButtonTapped(_:)), for: .touchUpInside)
        addSubview(button)
    }
    
    @objc func ratingButtonTapped(_ button: UIButton){
        print("button tapped")
    }
    
    
}
