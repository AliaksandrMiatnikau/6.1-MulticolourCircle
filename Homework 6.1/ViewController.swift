

import UIKit

class ViewController: UIViewController {
   
        var screenHeight = UIScreen.main.bounds.height
        var screenWidth = UIScreen.main.bounds.width
        var onRoundButton = UIButton()
        var circleSize = 150
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton ()
    }
    func getRandomColour() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                       green: CGFloat.random(in: 0...1),
                       blue: CGFloat.random(in: 0...1),
                       alpha: 1.0)
    }
    @objc func createButton() {
        onRoundButton.frame = CGRect(x: (Int(screenWidth) / 2 - circleSize / 2),
                                     y: (Int(screenHeight) / 2 - circleSize / 2),
                                     width: circleSize,
                                     height: circleSize)
        onRoundButton.backgroundColor = getRandomColour()
        onRoundButton.layer.cornerRadius = onRoundButton.frame.size.width / 2
        view.addSubview(onRoundButton)
        onRoundButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        onRoundButton.frame.origin.x = CGFloat.random(in: 1...(screenWidth - CGFloat(circleSize)))
        onRoundButton.frame.origin.y = CGFloat.random(in: 1...(screenHeight - CGFloat(circleSize)))
        onRoundButton.backgroundColor = getRandomColour()
    }
}

