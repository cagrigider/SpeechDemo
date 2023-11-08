//
//  DetailItem.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import Foundation

struct DetailItem: Identifiable {
    let id = UUID()
    let name: String
    let detail: String
}

extension Array where Element == DetailItem {
    static let exampleMovies: [DetailItem] = [
        .init(name: "Five Nights at Freddy's", detail: "Recently fired and desperate for work, a troubled young man named Mike agrees to take a position as a night security guard at an abandoned theme restaurant: Freddy Fazbear's Pizzeria. But he soon discovers that nothing at Freddy's is what it seems."),
        .init(name: "Muzzle", detail: "LAPD K-9 officer Jake Rosser has just witnessed the shocking murder of his dedicated partner by a mysterious assailant. As he investigates the shooter’s identity, he uncovers a vast conspiracy that has a chokehold on the city in this thrilling journey through the tangled streets of Los Angeles and the corrupt bureaucracy of the LAPD."),
        .init(name: "Saw X", detail: "Between the events of 'Saw' and 'Saw II', a sick and desperate John Kramer travels to Mexico for a risky and experimental medical procedure in hopes of a miracle cure for his cancer, only to discover the entire operation is a scam to defraud the most vulnerable. Armed with a newfound purpose, the infamous serial killer returns to his work, turning the tables on the con artists in his signature visceral way through devious, deranged, and ingenious traps."),
        .init(name: "Retribution", detail: "When a mysterious caller puts a bomb under his car seat, Matt Turner begins a high-speed chase across the city to complete a specific series of tasks- all with his kids trapped in the back seat.")
    ]
    static let exampleSeries: [DetailItem] = [
        .init(name: "Tagesschau", detail: "German daily news program, the oldest still existing program on German television."),
        .init(name: "Elas por Elas", detail: "Seven friends who met in their youth at an English course meet again 25 years later; Lara, Taís, Helena, Adriana, Renée, Natália and Carol, each of them has a different personality and origin, but they share a deep affection."),
        .init(name: "Law & Order: Special Victims Unit", detail: "In the criminal justice system, sexually-based offenses are considered especially heinous. In New York City, the dedicated detectives who investigate these vicious felonies are members of an elite squad known as the Special Victims Unit. These are their stories."),
        .init(name: "NCIS", detail: "From murder and espionage to terrorism and stolen submarines, a team of special agents investigates any crime that has a shred of evidence connected to Navy and Marine Corps personnel, regardless of rank or position.")
    ]
}
