//
//  ContainerViewController.swift
//  ContainerViewControllerSample
//
//  Created by 史　翔新 on 2016/06/02.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
	
	lazy var childViewController: ChildViewController = {
		let controller = ChildViewController()
		return controller
	}()
	
	private lazy var baseView: View = {
		let view = View(frame: self.view.bounds)
		return view
	}()
	
	override func loadView() {
		super.loadView()
		self.view = self.baseView
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.addChildViewController(self.childViewController)
		self.baseView.subview = self.childViewController.view as? Subview
		self.childViewController.didMoveToParentViewController(self)
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
}
