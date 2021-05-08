//
//  ViewController.swift
//  page-control
//
//  Created by Hüseyin Murat Gezer on 8.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myPageController: UIPageControl!
    @IBAction func changePage(_ sender: UIPageControl) {
        myLabel.text = "Page \(sender.currentPage + 1)"
        
        switch sender.currentPage {
        case 0:
            sender.backgroundColor = UIColor.cyan
        case 1:
            sender.backgroundColor = UIColor.magenta
        case 2:
            sender.backgroundColor = UIColor.green
        default:
            sender.backgroundColor = UIColor.gray
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPageController.numberOfPages = 4
        myPageController.pageIndicatorTintColor = UIColor.white
        myPageController.currentPageIndicatorTintColor = UIColor.blue
        myPageController.backgroundColor = UIColor.brown
    }
}

