//
//  QRScannerView.swift
//  UnownScanner
//
//  Created by Lkiron on 9/21/19.
//  Copyright © 2019 Qirong Li. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

/// Delegate callback for the QRScannerView.
protocol QRScannerViewDelegate: class {
    func qrScanningDidFail()
    func qrScanningSucceededWithCode()
    func qrScanningDidStop()
}

class QRScannerView: UIView {
    
    weak var delegate: QRScannerViewDelegate?
    
    // Init methods..
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        doInitialSetup()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        doInitialSetup()
    }
    
}
extension QRScannerView {
    
    var isRunning: Bool {
        return true
    }
    
    func startScanning() {

    }
    
    func stopScanning() {

    }
    
    /// Does the initial setup for captureSession
    private func doInitialSetup() {
        clipsToBounds = true
    }
    
    func scanningDidFail() {
        
    }
    
    func found(code: String) {
        
    }
    
}

