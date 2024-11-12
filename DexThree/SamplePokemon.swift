//
//  SamplePokemon.swift
//  DexThree
//
//  Created by Mark Santoro on 10/22/24.
//

import Foundation
import CoreData

@MainActor
struct SamplePokemon {
    static let samplePokemon = {
        let context = PersistenceController.preview.container.viewContext
        
        let fetchRequest: NSFetchRequest<Pokemon> = Pokemon.fetchRequest()
        fetchRequest.fetchLimit = 1
        
        let results = try! context.fetch(fetchRequest)
        
        return results.first!
        
    }()
    
    
}
