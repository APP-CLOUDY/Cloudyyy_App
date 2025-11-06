import UIKit

class childHome: UIViewController {

    @IBOutlet weak var bgsamplegrad: UIView!

    // Keep a reference to the gradient layer
    private var gradientLayer: CAGradientLayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Update the gradient layer's frame whenever the view updates its layout
        gradientLayer?.frame = bgsamplegrad.bounds
    }

    private func setupGradientBackground() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor(red: 10/255, green: 13/255, blue: 41/255, alpha: 1).cgColor, // Top dark navy
            UIColor(red: 24/255, green: 30/255, blue: 74/255, alpha: 1).cgColor   // Bottom soft navy
        ]
        gradient.frame = bgsamplegrad.bounds
        bgsamplegrad.layer.insertSublayer(gradient, at: 0)
        gradientLayer = gradient // Save reference for updating frame
    }
}
