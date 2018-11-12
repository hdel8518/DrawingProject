//
//  DrawingView.swift
//  DrawingProject
//
//  Created by Delgado, Hilaria on 11/1/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

public class DrawingView: UIView {
    

    public override func draw(_ rect: CGRect) -> Void
{
    //Drawing code
    createStickFigure().stroke()
    drawTurtle()
    drawRainbow()
}

    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()

        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0

        figure.addArc(withCenter: CGPoint(x: 200, y: 220),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
    
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x:200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x:220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x:180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x:220, y: 300))

        return figure
    }

    private func drawTurtle() -> Void
{
    let logo = UIBezierPath()
    UIColor.orange.setFill()
    logo.move(to: CGPoint(x: 50, y: 250))
    logo.addLine(to: CGPoint(x: 100, y: 300))
    logo.addLine(to: CGPoint(x: 50, y: 350))
    logo.close()
    logo.fill()
}
    
    private func drawRainbow() -> Void
    {
        let logo = UIBezierPath()
        UIColor.green.setFill()
        logo.move(to: CGPoint(x: 50, y: 0))
        logo.addLine(to: CGPoint(x: 25, y: 200))
        logo.addLine(to: CGPoint(x: 0, y: 400))
        logo.move(to: CGPoint(x: -25, y: 200))
        logo.addLine(to: CGPoint(x: -50, y: 0))
        logo.close()
        logo.fill()
    }
}
