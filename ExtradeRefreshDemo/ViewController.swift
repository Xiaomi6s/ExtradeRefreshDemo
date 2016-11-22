//
//  ViewController.swift
//  LayerTest2
//
//  Created by rxj on 2016/11/18.
//  Copyright © 2016年 renxiaojian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        table.addExRefresh {
           self.perform(#selector(self.afterMethod), with: nil, afterDelay: 2, inModes: [RunLoopMode.commonModes])
        }
        
    }
    
    func afterMethod() {
        table.header?.endRefresh()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

