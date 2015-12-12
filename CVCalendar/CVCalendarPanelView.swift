//
//  CVCalendarPanelView.swift
//  SmartCalendar
//
//  Created by Jiangyu Mao on 12/10/15.
//  Copyright © 2015 CornellMeng. All rights reserved.
//

import UIKit

public final class CVCalendarPanelView: UIView {
	
	var currentCircle: CAShapeLayer!
	
	public func drawCircle(location: CGPoint){
		if(self.currentCircle != nil){
			self.currentCircle.removeFromSuperlayer()
		}
		
		currentCircle = CAShapeLayer()
		let radius: CGFloat = 10
		
		currentCircle.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 2.0 * radius, height: 2.0 * radius)  , cornerRadius: radius).CGPath
		
		currentCircle.position = CGPoint(x: location.x - radius, y: location.y - radius)
		
		currentCircle.fillColor = UIColor.redColor().CGColor
		currentCircle.lineWidth = 2;
		
		self.layer.addSublayer(currentCircle)
	}
	
}
