//
//  MyEmotionsViewController.swift
//  FaceIt
//
//  Created by Maciej Jastrzębski on 9/11/20.
//  Copyright © 2020 SKY.NET. All rights reserved.
//

import UIKit

class MyEmotionsViewController: UIViewController {
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination
        if let navigationController = destinationViewController as? UINavigationController {
            destinationViewController = navigationController.visibleViewController ?? destinationViewController
        }
        if let faceViewController = destinationViewController as? FaceViewController {
            if let identifier = segue.identifier {
                if let expression = emotionalFaces[identifier] {
                    faceViewController.expression = expression
                    faceViewController.navigationItem.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
    
    private let emotionalFaces: Dictionary<String, FacialExpression> = [
        "sad" : FacialExpression(eyes: .closed, mouth: .frown),
        "happy" : FacialExpression(eyes: .open, mouth: .smile),
        "worried" : FacialExpression(eyes: .open, mouth: .smirk),
    ]
}
