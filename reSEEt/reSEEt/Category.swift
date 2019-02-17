import UIKit

@IBDesignable class Category: UIStackView {
    //MARK: Properties
    private var categories = [UIButton]() // rating buttons
    var category : [IntegerLiteralType] = [] // rating
    @IBInspectable var categorySize: CGSize = CGSize(width: 10.0, height: 5.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var categoryCount: Int = 4 {
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    
    @objc func categoryButtonTapped(button: UIButton) {
        print("Button pressed.")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        for button in categories {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        categories.removeAll()
        for _ in 0..<categoryCount {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: categorySize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: categorySize.width).isActive = true
            
            button.addTarget(self, action: #selector(Category.categoryButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            categories.append(button)
        }
    }
}
