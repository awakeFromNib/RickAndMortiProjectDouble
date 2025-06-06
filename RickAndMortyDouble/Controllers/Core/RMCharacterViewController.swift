//
//  RMCharacterViewController.swift
//  RickAndMortyDouble
//
//  Created by Alex Murphy on 14.01.2025.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController, RMCharacterListViewDelegate {
    
    private let characterListView = RMCharacterListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        setUpView()
    }
    
    private func setUpView() {
        characterListView.delegate = self
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        //        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
        //            switch result {
        //            case .success(let model):
        ////                print(String(describing: model))
        //                print("Total: "+String(model.info.count))
        //                print("Total: "+String(model.info.pages))
        //                print("Page result count: "+String(model.results.count))
        //            case .failure(let error):
        //                print(String(describing: error))
        //            }
        //        }
        
        //        let request = RMRequest(
        //            endpoint: .character,
        //            pathComponents: ["1"]
        //        )
        //        print(request.url ?? "Something wrong here.")
        //        
        //        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
        //            switch result {
        //            case .success:
        //                break
        //            case .failure(let error):
        //                print(String(describing: error))
        //            }
        //        }
        // }
        
    }
    
    // MARK: - RMCharacterListViewDelegate implementation
    func rmCharacterListView(_ characterListView: RMCharacterListView, didSelectCharacter character: RMCharacter) {
        // Open detail controller for that character
        let viewModel = RMCharacterDetailViewViewModel(character: character)
        let detailVC = RMCharacterDetailViewController(viewModel: viewModel)
        detailVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
