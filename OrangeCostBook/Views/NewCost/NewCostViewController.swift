//
//  NewCostViewController.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/30.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import UIKit
import SwiftUI
import SnapKit

class NewCostViewController: UIViewController {

    var longPressGR: UILongPressGestureRecognizer!
    @IBOutlet weak var backgroundMask: UIView!
    @IBOutlet weak var modalWindow: UIView!
    @IBOutlet weak var modalGestureView: UIView!
    @IBOutlet weak var modalWindowBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var costAmountTextField: UITextField!
    
    // 下滑关闭手势
    var lpgrStartPoint = CGPoint(x: 0, y: 0)
    var lpgrEndPoint = CGPoint(x: 0, y: 0)
    var lpgrLastPoint = CGPoint(x: 0, y: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .clear
        self.view.isOpaque = false
        
        self.costAmountTextField.becomeFirstResponder()
        
        longPressGR = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
        longPressGR.minimumPressDuration = 0.01
        modalGestureView.addGestureRecognizer(longPressGR)
        modalGestureView.backgroundColor = .clear
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.costAmountTextField.becomeFirstResponder()
    }
    
    @objc func longPress(recognizer: UILongPressGestureRecognizer) {
        
        let point = recognizer.location(in: self.view)
        let swipeOffset = point.y - lpgrStartPoint.y
        let currentSwipeOffset = point.y - lpgrLastPoint.y
        
        // let currentSwipeOffset =
        switch recognizer.state {
        case .began:
            lpgrStartPoint = point
            break
        case .ended:
            lpgrEndPoint = point
            
            if swipeOffset < 120 {
                UIView.animate(withDuration: 0.2) {
                    self.modalWindowBottomConstraint.constant = -25
                    self.view.layoutIfNeeded()
                }
            }
            break
        case .changed:
            if swipeOffset >= 0 {
                // 向下滑动
                modalWindowBottomConstraint.constant -= currentSwipeOffset
            } else {
                // 向上滑动
                
                var resistance: CGFloat = 0.00
                
                resistance = 0.5 - (-swipeOffset * 0.009)
                resistance = resistance < 0 ? 0.02 : resistance
                
                modalWindowBottomConstraint.constant += -(currentSwipeOffset * resistance)
            }
            if swipeOffset >= 120 {
                self.dismiss(animated: true)
            }
        default:
            break
        }
        
        lpgrLastPoint = point
    }
    
    /*
     
     - (void)setUpLongPress
     {
         // 长按
         UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPress:)];

         [self.imageView addGestureRecognizer:longPress];
     }

     // 长按图片的时候就会触发长按手势
     - (void)longPress:(UILongPressGestureRecognizer *)longPress
     {
         // 一般开发中,长按操作只会做一次
         // 假设在一开始长按的时候就做一次操作

         if (longPress.state == UIGestureRecognizerStateBegan) {

             NSLog(@"%ld",longPress.state);
         }
     }
     */
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        HomeView.ncvCallback()
        super.dismiss(animated: flag, completion: completion)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectType(_ sender: Any) {
        let hostingView = UIHostingController(rootView: CostTypeSelectView())
        CostTypeSelectViewHostingVC = hostingView
        hostingView.modalPresentationStyle = .currentContext
        self.present(hostingView, animated: true)
        
        hostingView.view.backgroundColor = .clear
        hostingView.view.isOpaque = false
        
    }
    
    @IBAction func selectPhoto(_ sender: Any) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "添加附件", style: .default, handler: { (action) in
            
        }))
        alert.addAction(UIAlertAction(title: "识别导入", style: .default, handler: { (action) in
            
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    
}
