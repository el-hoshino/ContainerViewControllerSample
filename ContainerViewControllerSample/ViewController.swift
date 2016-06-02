//
//  ViewController.swift
//  ContainerViewControllerSample
//
//  Created by 史　翔新 on 2016/06/02.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		
		let controller = ContainerViewController()
		self.presentViewController(controller, animated: false, completion: nil)
	}
	
}

