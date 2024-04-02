//
//  RecurringViewController.swift
//  DXCDemo
//
//  Created by Suraj Sagare on 02/04/24.
//

import UIKit

class RecurringViewController: UIViewController {

    private var triangleView = TriangleView()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        triangleView = TriangleView()
        // We get number of recursions by changing this numbers
        triangleView.numberOfInstances = 5
        view.addSubview(triangleView)

        triangleView.anchorDimension(width: triangleView.widthAnchor,
                                     height: triangleView.heightAnchor,
                                     inset: UIEdgeInsets(top: 0, left: 0, bottom: self.view.frame.size.width, right: self.view.frame.size.width))
        triangleView.anchorCenter(centerX: view.safeAreaLayoutGuide.centerXAnchor)
        triangleView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                            inset: UIEdgeInsets(top: self.view.center.y-(self.view.frame.size.height/3), left: 0, bottom: 0, right: 0))
    }
}
