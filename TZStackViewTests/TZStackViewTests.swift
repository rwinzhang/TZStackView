//
//  TZStackViewTests.swift
//  TZStackViewTests
//
//  Created by Tom van Zummeren on 10/06/15.
//  Copyright (c) 2015 Tom van Zummeren. All rights reserved.
//

import UIKit
import XCTest

import TZStackView

class TZStackViewTests: TZStackViewTestCase {
    
    override func createTestViews() -> [UIView] {
        var views = [UIView]()
        for i in 0 ..< 5 {
            views.append(TestView(index: i, size: CGSize(width: 100 * (i + 1), height: 100 * (i + 1))))
        }
//        views[0].hidden = true
//        views[1].hidden = true
//        views[2].hidden = true
//        views[3].hidden = true
//        views[4].hidden = true
        return views
    }
    
    // Be careful to configure the same thing on the UIStackView as on the TZStackView, otherwise the test is unfair
    override func configureStackViews(_ uiStackView: UIStackView, _ tzStackView: TZStackView) {
        uiStackView.isLayoutMarginsRelativeArrangement = false
        tzStackView.layoutMarginsRelativeArrangement = false
    }

    func testFillHorizontalFillEqually() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .fill
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Fill

        uiStackView.spacing = 10
        tzStackView.spacing = 10

        verifyConstraints()
    }
    
    func testFillVerticalFillEqually() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .fill
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10

        verifyConstraints()
    }

    func testFillHorizontalFill() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fill
        uiStackView.alignment = .fill
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Fill

        uiStackView.spacing = 10
        tzStackView.spacing = 10

        verifyConstraints()
    }
    
    func testFillVerticalFill() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fill
        uiStackView.alignment = .fill
        tzStackView.axis = .Vertical
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFillHorizontalFillProportionally() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .fill
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testFillVerticalFillProportionally() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .fill
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFillHorizontalEqualSpacing() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .fill
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFillVerticalEqualSpacing() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .fill
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFillHorizontalEqualCentering() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .fill
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFillVerticalEqualCentering() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .fill
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Fill
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testCenterHorizontalFillEqually() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .center
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testCenterVerticalFillEqually() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .center
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testCenterHorizontalFill() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fill
        uiStackView.alignment = .center
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testCenterVerticalFill() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fill
        uiStackView.alignment = .center
        tzStackView.axis = .Vertical
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testCenterHorizontalFillProportionally() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .center
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testCenterVetricalFillProportionally() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .center
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testCenterHorizontalEqualSpacing() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .center
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testCenterVerticalEqualSpacing() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .center
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testCenterHorizontalEqualCentering() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .center
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testCenterVerticalEqualCentering() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .center
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Center
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testLeadingHorizontalFillEqually() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .leading
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testLeadingHorizontalFill() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fill
        uiStackView.alignment = .leading
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testLeadingHorizontalFillProportionally() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .leading
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testLeadingHorizontalEqualSpacing() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .leading
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testLeadingHorizontalEqualCentering() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .leading
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testLeadingVerticalFillEqually() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .leading
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testLeadingVerticalFill() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fill
        uiStackView.alignment = .leading
        tzStackView.axis = .Vertical
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testLeadingVerticalFillProportionally() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .leading
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testLeadingVerticalEqualSpacing() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .leading
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testLeadingVerticalEqualCentering() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .leading
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Leading
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testTopHorizontalFillEqually() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .top
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopHorizontalFill() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fill
        uiStackView.alignment = .top
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopHorizontalFillProportionally() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .top
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopHorizontalEqualSpacing() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .top
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopHorizontalEqualCentering() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .top
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopHVerticalFillEqually() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .top
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopVerticalFill() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fill
        uiStackView.alignment = .top
        tzStackView.axis = .Vertical
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopVerticalFillProportionally() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .top
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopVerticalEqualSpacing() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .top
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTopVerticalEqualCentering() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .top
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Top
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingHorizontalFillEqually() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .trailing
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingHorizontalFill() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fill
        uiStackView.alignment = .trailing
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingHorizontalFillProportionally() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .trailing
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingHorizontalEqualSpacing() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .trailing
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingHorizontalEqualCentering() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .trailing
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingVerticalFillEqually() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .trailing
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingVerticalFill() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fill
        uiStackView.alignment = .trailing
        tzStackView.axis = .Vertical
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingVerticalFillProportionally() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .trailing
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingVerticalEqualSpacing() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .trailing
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testTrailingVerticalEqualCentering() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .trailing
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Trailing
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomHorizontalFillEqually() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .bottom
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomHorizontalFill() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fill
        uiStackView.alignment = .bottom
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomHorizontalFillProportionally() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .bottom
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomHorizontalEqualSpacing() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .bottom
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomHorizontalEqualCentering() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .bottom
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testBottomVerticalFillEqually() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .bottom
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomVerticalFill() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fill
        uiStackView.alignment = .bottom
        tzStackView.axis = .Vertical
        tzStackView.distribution = .Fill
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomVerticalFillProportionally() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .bottom
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomVerticalEqualSpacing() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .bottom
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testBottomVerticalEqualCentering() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .bottom
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .Bottom
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testFirstBaselineHorizontalFillEqually() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testFirstBaselineHorizontalFill() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fill
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .Fill
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testFirstBaselineHorizontalFillProportionally() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testFirstBaselineHorizontalEqualSpacing() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testFirstBaselineHorizontalEqualCentering() {
        uiStackView.axis = .horizontal
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Horizontal
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    func testFirstBaselineVerticalFillEqually() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillEqually
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillEqually
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
        logAllConstraints()
    }
    
    func testFirstBaselineVerticalFill() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fill
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Vertical
        tzStackView.distribution = .Fill
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFirstBaselineVerticalFillProportionally() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .fillProportionally
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Vertical
        tzStackView.distribution = .FillProportionally
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFirstBaselineVerticalEqualSpacing() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalSpacing
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualSpacing
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }
    
    func testFirstBaselineVerticalEqualCentering() {
        uiStackView.axis = .vertical
        uiStackView.distribution = .equalCentering
        uiStackView.alignment = .firstBaseline
        tzStackView.axis = .Vertical
        tzStackView.distribution = .EqualCentering
        tzStackView.alignment = .FirstBaseline
        
        uiStackView.spacing = 10
        tzStackView.spacing = 10
        
        verifyConstraints()
    }

    // MARK: - Maintaining Consistency Between the Arranged Views and Subviews
    // https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIStackView_Class_Reference/#//apple_ref/doc/uid/TP40015256-CH1-SW29
    func testConsistencyWhenAddingArrangedSubview() {
        let uiTestView = TestView(index: -1, size: CGSize(width: 100, height: 100))
        uiStackView.addArrangedSubview(uiTestView)

        let tzTestView = TestView(index: -1, size: CGSize(width: 100, height: 100))
        tzStackView.addArrangedSubview(tzTestView)

        verifyArrangedSubviewConsistency()
    }

    func testConsistencyWhenInsertingArrangedSubview() {
        let uiTestView = TestView(index: -1, size: CGSize(width: 100, height: 100))
        uiStackView.insertArrangedSubview(uiTestView, at: 0)

        let tzTestView = TestView(index: -1, size: CGSize(width: 100, height: 100))
        tzStackView.insertArrangedSubview(tzTestView, atIndex: 0)

        verifyArrangedSubviewConsistency()
    }

    func testConsistencyWhenRemovingArrangedSubview() {
        let uiTestView = uiStackView.arrangedSubviews.last
        uiStackView.removeArrangedSubview(uiTestView!)

        let tzTestView = tzStackView.arrangedSubviews.last
        tzStackView.removeArrangedSubview(tzTestView!)

        verifyArrangedSubviewConsistency()
    }

    func testConsistencyWhenRemovingSubview() {
        let uiTestView = uiStackView.arrangedSubviews.last
        uiTestView!.removeFromSuperview()

        let tzTestView = tzStackView.arrangedSubviews.last
        tzTestView!.removeFromSuperview()

        verifyArrangedSubviewConsistency()
    }
}
