//
//  DataManager.swift
//  7TableView
//
//  Created by hj on 2/19/26.
//

import UIKit

class DataManager {
    var movieDataArray: [Movie] = []
    
    func makeMoviewData() {
        movieDataArray = [
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description"),
            Movie(movieImage: UIImage(named: "batman.png"), moviewName: "batman", movieDescription: "batman description")
        ]
    }
    
    func getMovieData() -> [Movie] {
        return movieDataArray
    }
    
    func updateMovieData() {
        let movie = Movie(movieImage: UIImage(named: "spiderman.png"), moviewName: "spider", movieDescription: "spider description")
        movieDataArray.append(movie)
    }
}
