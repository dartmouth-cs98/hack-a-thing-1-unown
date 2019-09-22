//
//  QRScannerViewController.swift
//  UnownScanner
//
//  Created by Lkiron on 9/21/19.
//  Copyright © 2019 Qirong Li. All rights reserved.
//

import UIKit

class QRScannerViewController: UIViewController {
    
    @IBOutlet weak var scannerView: QRScannerView! {
        didSet {
            scannerView.delegate = self
        }
    }
    @IBOutlet weak var scanButton: UIButton! {
        didSet {
            scanButton.setTitle("STOP", for: .normal)
        }
    }
    
    var qrData: QRData? = nil {
        didSet {
            if qrData != nil {
                self.performSegue(withIdentifier: "detailSeuge", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if !scannerView.isRunning {
            scannerView.startScanning()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if !scannerView.isRunning {
            scannerView.stopScanning()
        }
    }

    @IBAction func scanButtonAction(_ sender: UIButton) {
        scannerView.isRunning ? scannerView.stopScanning() : scannerView.startScanning()
    }
}


extension QRScannerViewController: QRScannerViewDelegate {
    
    func qrScanningDidStop() {

    }
    
    func qrScanningDidFail() {

    }
    
    func qrScanningSucceededWithCode() {
        
    }
    
    
    
}
