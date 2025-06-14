//
//  GameRepository.swift
//  GamePassService
//
//  Created by Felix Pultar on 05.06.2025.
//

import Foundation
import Hummingbird
import XboxKit

protocol GameRepository: Sendable {
    func list(market: String?, collectionId: String?) async throws -> [String]
    func details(productIds: String, language: String) async throws -> [XboxGame]
    func availability(productIds: String, market: String, collectionId: String) async throws -> [String: [AvailabilityPeriod]]
    func getImageUrl(productId: String, purpose: String, language: String) async throws -> String?
}
