import UIKit

class childHome: UIViewController {

    @IBOutlet weak var bgsamplegrad: UIView!

    @IBOutlet weak var lblGreeting: UILabel!
    
    @IBOutlet weak var lblSubGreeting: UILabel!
    
    @IBOutlet weak var btnBell: UIButton!
    
    @IBOutlet weak var btnProfile: UIButton!
    
    
    @IBOutlet weak var mascotContainerView: UIView!
    
    @IBOutlet weak var speechBubbleView: UIView!
    
    @IBOutlet weak var lblSpeech: UILabel!
    
    @IBOutlet weak var imgCloudMain: UIImageView!
    
    @IBOutlet weak var powerCardView: UIView!
    
    @IBOutlet weak var powerLblStackView: UIStackView!
    
    @IBOutlet weak var imgCloudguitarSmall: UIImageView!
    
    @IBOutlet weak var lblQuotesLabel: UILabel!
    
    
    @IBOutlet weak var lblPowerView: UILabel!
    
    
    @IBOutlet weak var lblAchievementsTitle: UILabel!
    
    @IBOutlet weak var achievementsStack: UIStackView!
    
    @IBOutlet weak var imgHabitsCloud: UIImageView!
    
    @IBOutlet weak var lblHabit: UILabel!
    
    @IBOutlet weak var habitprogressView: UIProgressView!
    
    

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
