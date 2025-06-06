//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMortyDouble
//
//  Created by Sergei Anisimoff on 22.05.2025.
//

import Foundation

protocol RMEpisodeDataRender {
    var name: String { get } // We will be able to get it
    var air_date: String { get }
    var episode: String { get }
}

final class RMCharacterEpisodeCollectionViewCellViewModel {
    
    private let episodeDataUrl: URL?
    
    private var isFetching = false
    
    private var dataBlock: ((RMEpisodeDataRender) -> Void)?
    
    private var episode: RMEpisode? {
        didSet {
            guard let model = episode else { return }
            dataBlock?(model)
        }
    }
    
    // MARK: - Init
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
    
    // MARK: - Public
    
    // MARK: - Publisher & subscriber pattern
    public func registerForData(_ block: @escaping (RMEpisodeDataRender) -> Void) {
        self.dataBlock = block
    }
    
    public func fetchEpisode() {
        guard !isFetching else {
            if let model = episode {
                dataBlock?(model)
            }
            return
        }
        guard let url = episodeDataUrl,
              let request = RMRequest(url: url) else  { return }
        isFetching = true
        RMService.shared.execute(request, expecting: RMEpisode.self) { [weak self] result in
            switch result {
            case .success(let model):
                //                print(String(describing: success.id))
                DispatchQueue.main.async {
                    self?.episode = model
                }
            case .failure(let failure):
                print(String(describing: failure))
            }
        }
    }
}
