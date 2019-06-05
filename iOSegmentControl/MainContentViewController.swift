//
//  MainContentViewController.swift
//  iOSegmentControl
//
//  Created by Tony Rivera on 6/5/19.
//

import UIKit

class MainContentViewController: UIViewController {

    @IBOutlet weak var options: UISegmentedControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contView: UIView!
    
    var currentViewController: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapSelection(_ sender: Any) {
        
        var selectedVC = UIViewController()
        
        if (self.currentViewController != nil) {
            self.currentViewController?.view.removeFromSuperview()
            self.currentViewController?.removeFromParent()
        }
        
        if options.selectedSegmentIndex == 0 {
            selectedVC = tab1ViewController(nibName: "tab1", bundle: nil)
        } else if options.selectedSegmentIndex == 1 {
            selectedVC = tab1ViewController(nibName: "tab2", bundle: nil)
        }
        
        selectedVC.view.frame = self.contView.bounds
        
        self.contView.addSubview(selectedVC.view)
        
        self.currentViewController = selectedVC
    }

}
