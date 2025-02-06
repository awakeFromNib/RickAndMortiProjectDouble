//
//  RMCharacterViewController.swift
//  RickAndMortyDouble
//
//  Created by Alex Murphy on 14.01.2025.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		view.backgroundColor = .systemBackground
		title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            pathComponents: ["1"]
        )
        print(request.url ?? "Something wrong here.")
        
        RMService.shared.execute(<#T##request: RMRequest##RMRequest#>, expecting: <#T##(Decodable & Encodable).Type#>, completion: <#T##(Result<Decodable & Encodable, any Error>) -> Void#>)
    }


}
