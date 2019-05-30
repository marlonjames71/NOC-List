//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Marlon Raskin on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {

	@IBOutlet weak var coverNameLabel: UILabel!
	@IBOutlet weak var realNameLabel: UILabel!
	@IBOutlet weak var accessLevelLabel: UILabel!
	
	var agents: (coverName: String, realName: String, accessLevel: Int, compromised: Bool)!
	
    override func viewDidLoad() {
        super.viewDidLoad()

		coverNameLabel?.text = agents.coverName
		realNameLabel?.text = agents.realName
		accessLevelLabel?.text = String(agents.accessLevel)
		
		if agents.compromised {
			view.backgroundColor = UIColor.init(hue: 0, saturation: 0.4, brightness: 0.9, alpha: 1)
		}
    }
}
