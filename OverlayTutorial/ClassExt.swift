/**
 * Copyright © SaigonMD, Inc - All Rights Reserved
 * Licensed under the MIT license.
 * Written by Tran Quan <tranquan221b@gmail.com>, Feb 2018
 */

import UIKit

extension CGRect {
  
  var centerPoint: CGPoint {
    return CGPoint(x: self.origin.x + self.size.width/2, y: self.origin.y + self.size.height/2)
  }
  
  var topCenterPoint: CGPoint {
    return CGPoint(x: self.origin.x + self.size.width/2, y: self.origin.y)
  }
  
  var bottomCenterPoint: CGPoint {
    return CGPoint(x: self.origin.x + self.size.width/2, y: self.origin.y + self.size.height)
  }
  
  var leftCenterPoint: CGPoint {
    return CGPoint(x: self.origin.x, y: self.origin.y + self.size.height/2)
  }
  
  var rightCenterPoint: CGPoint {
    return CGPoint(x: self.origin.x + self.size.width, y: self.origin.y + self.size.height/2)
  }
  
}

extension CGPoint {
  
  func moveX(_ xPos: CGFloat) -> CGPoint {
    return CGPoint(x: self.x + xPos, y: self.y)
  }
  
  func moveY(_ yPos: CGFloat) -> CGPoint {
    return CGPoint(x: self.x, y: self.y + yPos)
  }
  
  static func distanceOf(pt1: CGPoint, pt2: CGPoint) -> Double {
    let length = sqrt(Double((pt1.x - pt2.x)*(pt1.x - pt2.x) + (pt1.y - pt2.y)*(pt1.y - pt2.y)))
    return length
  }
  
  static func createVector(from pt1: CGPoint, to pt2: CGPoint, isUnit: Bool = false) -> CGPoint {
    let vector = CGPoint(x: pt2.x - pt1.x, y: pt2.y - pt1.y)
    return isUnit ? CGPoint.createUnitVectorWith(vector: vector) : vector
  }
  
  static func createUnitVectorWith(vector: CGPoint) -> CGPoint {
    var division = max(abs(vector.x), abs(vector.y))
    if division == 0 { division = 1 }
    division = CGFloat(abs(division))
    return CGPoint(x: vector.x/division, y: vector.y/division)
  }
  
  static func createReverseVectorWith(vector: CGPoint) -> CGPoint {
    return CGPoint(x: -vector.x, y: -vector.y)
  }
  
  static func createPerpendicularVectorWith(vector: CGPoint) -> CGPoint {
    return CGPoint(x: -vector.y, y: vector.x)
  }
}

extension UIFont {
  
  func sizeOf(string: String, constrainedToWidth width: CGFloat) -> CGSize {
    return NSString(string: string).boundingRect(with: CGSize(width: width, height: 99_999_999), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self], context: nil).size
  }
  
}
