public class BlinkingLabel : UILabel {
    @objc public func startBlinking() {
        let options: UIViewAnimationOptions = [.repeat, .autoreverse]
        
        UIView.animate(withDuration: 0.25, delay: 0.0, options: options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    @objc public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
