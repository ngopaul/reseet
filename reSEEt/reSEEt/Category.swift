import UIKit

@IBDesignable class Category: UIStackView {
    let colorMap : Dictionary<IntegerLiteralType, UIColor> = [0: UIColor.white, 1: UIColor.red, 2: UIColor.blue, 3: UIColor.green, 4: UIColor.yellow]
    
    //MARK: Properties
    private var categories = [UIButton]() // rating buttons
    var category : [IntegerLiteralType] = [] // rating
    @IBInspectable var categorySize: CGSize = CGSize(width: 2.0, height: 10.0) {
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
            button.backgroundColor = self.colorMap[0]
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: categorySize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: categorySize.width).isActive = true
            
            button.addTarget(self, action: #selector(Category.categoryButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            categories.append(button)
        }
    }
    
    private func update() {
        if red.isOn + blue.isOn + green.isOn 
    }
}
