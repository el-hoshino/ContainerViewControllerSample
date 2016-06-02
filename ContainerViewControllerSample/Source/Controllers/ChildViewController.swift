//
//  ChildViewController.swift
//  ContainerViewControllerSample
//
//  Created by 史　翔新 on 2016/06/02.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {
	
	private lazy var subview: Subview = {
		let view = Subview(frame: self.view.bounds)
		return view
	}()
	
	override func didMoveToParentViewController(parent: UIViewController?) {
		super.didMoveToParentViewController(parent)
		self.loadView()
	}
	
	override func loadView() {
		super.loadView()
		self.view = self.subview
		self.viewDidLoad()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
		print("Touches ended on child view controller")
	}
	
}
