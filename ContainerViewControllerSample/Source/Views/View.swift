//
//  View.swift
//  ContainerViewControllerSample
//
//  Created by 史　翔新 on 2016/06/02.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import UIKit

class View: UIView {
	
	weak var subview: Subview? {
		didSet {
			oldValue?.removeFromSuperview()
			
			if let view = self.subview {
				self.addSubview(view)
			}
		}
	}
	
	override func didMoveToSuperview() {
		super.didMoveToSuperview()
		self.backgroundColor = .whiteColor()
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		if let view = self.subview {
			let length = min(self.frame.width, self.frame.height) / 2
			view.frame.size.width = length
			view.frame.size.height = length
			view.frame.origin.x = (self.frame.width - view.frame.width) / 2
			view.frame.origin.y = (self.frame.height - view.frame.height) / 2
			view.layer.cornerRadius = length / 2
		}
	}
	
}
