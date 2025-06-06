//
//  Extensions.swift
//  RickAndMortyDouble
//
//  Created by Sergei Anisimoff on 16.04.2025.
//

import UIKit

extension UIView {
    /// Adds a multiple views to the end of the receiver’s list of subviews.
    /// - Parameter views: <#views description#>
    func addSubviews(_ views: UIView...)  { // variatic parameter
        views.forEach({
            addSubview($0)
        })
    }
}
