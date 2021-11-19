//
//  PokemonDetailViewController.swift
//  PokemonCardsList
//
//  Created by arturs.ziemelis on 19/11/2021.
//

import UIKit

class PokemonDetailViewController: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonRarity: UILabel!
    @IBOutlet weak var pokemonHP: UILabel!
    @IBOutlet weak var pokemonSet: UILabel!
    @IBOutlet weak var pokemonSeries: UILabel!
    @IBOutlet weak var pokemonSetCode: UILabel!
    @IBOutlet weak var pokemonSupertype: UILabel!
    @IBOutlet weak var pokemonSubtype: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonName.text = pokemon.name
        pokemonImageView.sd_setImage(with: URL(string: pokemon.image), placeholderImage: UIImage(named: "pok.png"))
        pokemonRarity.text = "Rarity: " + pokemon.rarity
        pokemonHP.text = "HP: " + pokemon.number
        pokemonSetCode.text = "Set Code: " + pokemon.setCode
        if let set = pokemon.set {
            pokemonSet.text = "Set: " + set
        }
        
        pokemonSeries.text = "Series: " + pokemon.series
        
        if let subtype = pokemon.subtype {
            pokemonSubtype.text = "Subtype: " + subtype
        }
        
        if let supertype = pokemon.supertype {
            pokemonSupertype.text = "Supertype: " + supertype
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
