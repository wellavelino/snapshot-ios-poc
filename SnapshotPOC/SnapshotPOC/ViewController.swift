//
//  ViewController.swift
//  SnapshotPOC
//
//  Created by Wellington Avelino Dos Santos on 04/02/2020.
//  Copyright © 2020 Wellington Avelino Dos Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let titleLabel = UILabel()
    let beachView = BeachView()

    override func loadView() {
        super.loadView()
        setup()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Snapshot Testing"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        beachView.update(with: beachData())
    }

    func setup() {
        view.addSubview(titleLabel)
        view.addSubview(beachView)
        setConstraints()
    }

    func setConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 32).isActive = true
        titleLabel.leadingAnchor
            .constraint(equalTo: view.leadingAnchor,
                        constant: 16.0).isActive = true
        titleLabel.trailingAnchor
            .constraint(equalTo: view.trailingAnchor,
                        constant: -16.0).isActive = true

        beachView.translatesAutoresizingMaskIntoConstraints = false
        beachView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        beachView.leadingAnchor
            .constraint(equalTo: view.leadingAnchor,
                        constant: 16.0).isActive = true
        beachView.trailingAnchor
            .constraint(equalTo: view.trailingAnchor,
                        constant: -16.0).isActive = true
    }

    private func beachData() -> Beach {
        let details = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
        """
        let imageurl = "https://images.pexels.com/photos/104750/pexels-photo-104750.jpeg?auto=compress&cs=tinysrgb&h=350"

        guard let url = URL(string: imageurl) else {
            preconditionFailure("Image URL can't be created")
        }

        let beach = Beach(name: "Lorem ipsum dolor sit amet",
                          details: details,
                          imageURL: url)
        return beach
    }

}


