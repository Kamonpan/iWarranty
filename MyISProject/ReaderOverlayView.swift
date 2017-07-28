//
//  ReaderOverlayView.swift
//  MyISProject
//
//  Created by Kamonpan Ketlue on 7/18/2560 BE.
//  Copyright © 2560 Kamonpan Ketlue. All rights reserved.
//

import UIKit

/// Overlay over the camera view to display the area (a square) where to scan the code.
public final class ReaderOverlayView: UIView {
    private var overlay: CAShapeLayer = {
        var overlay             = CAShapeLayer()
        overlay.backgroundColor = UIColor.clear.cgColor
        overlay.fillColor       = UIColor.clear.cgColor
        overlay.strokeColor     = UIColor.white.cgColor
        overlay.lineWidth       = 3
        overlay.lineDashPattern = [7.0, 7.0]
        overlay.lineDashPhase   = 0
        
        return overlay
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupOverlay()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupOverlay()
    }
    
    private func setupOverlay() {
        layer.addSublayer(overlay)
    }
    
    var overlayColor: UIColor = UIColor.white {
        didSet {
            self.overlay.strokeColor = overlayColor.cgColor
            self.setNeedsDisplay()
        }
    }
    
    public override func draw(_ rect: CGRect) {
        var innerRect = rect.insetBy(dx: 50, dy: 50)
        let minSize   = min(innerRect.width, innerRect.height)
        
        if innerRect.width != minSize {
            innerRect.origin.x   += (innerRect.width - minSize) / 2
            innerRect.size.width = minSize
        }
        else if innerRect.height != minSize {
            innerRect.origin.y    += (innerRect.height - minSize) / 2
            innerRect.size.height = minSize
        }
        
        let offsetRect = innerRect.offsetBy(dx: 0, dy: 15)
        
        overlay.path  = UIBezierPath(roundedRect: offsetRect, cornerRadius: 5).cgPath
    }
}