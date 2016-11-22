//
//  NextViewController.swift
//  LayerTest2
//
//  Created by rxj on 2016/11/21.
//  Copyright © 2016年 renxiaojian. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        tableView.addExRefresh {
            self.perform(#selector(self.afterMethod), with: nil, afterDelay: 2, inModes: [RunLoopMode.commonModes])
        }
    }
    func afterMethod() {
        tableView.header?.endRefresh()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
