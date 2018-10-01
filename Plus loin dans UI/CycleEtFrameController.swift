//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by Quentin Honerchick on 01/10/2018.
//  Copyright © 2018 Quentin Honerchick. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {
    @IBOutlet weak var VueFrameEtBounds: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("View didload appelé")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View Disappear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Did Appear")
        print("Frame -> \(VueFrameEtBounds.frame)")
        print("Bounds -> \(VueFrameEtBounds.bounds)")
        UIView.animate(withDuration: 2, animations: {
            self.VueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 12)
        }) {( success) in
            print("Frame -> \(self.VueFrameEtBounds.frame)")
            print("Bounds -> \(self.VueFrameEtBounds.bounds)")
        }
            
        }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Will Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Did Disappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
