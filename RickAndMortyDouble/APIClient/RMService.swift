//
//  RMService.swift
//  RickAndMortyDouble
//
//  Created by Alex Murphy on 14.01.2025.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
	
	/// Shared singleton instance
	static let shared = RMService()
	
	private init() {}
	
	/// Send Rick and Morty API Call
	/// - Parameters:
	///   - request: Request instance
	///   - completion: Callback with data or error
	public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
		//
	}
}
