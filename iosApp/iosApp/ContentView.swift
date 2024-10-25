import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
 // Set background color

        // Configure navigation bar
        navigationItem.title = "App Title"

        // Create buttons
        let button1 = UIButton(type: .system)
        button1.setTitle("Button 1", for: .normal)
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)

        let button2 = UIButton(type: .system)
        button2.setTitle("Button 2", for: .normal)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)

        // Add buttons to a stack view for easy layout
        let stackView = UIStackView(arrangedSubviews: [button1, button2])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)


        // Set constraints for the stack view
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),

        ])
    }

    // Button actions
    @objc func button1Tapped() {
        // Handle button 1 tap
        print("Button 1 tapped")
    }

    @objc func button2Tapped() {
        // Handle button 2 tap
        print("Button 2 tapped")
    }
}