//
//  DetailViewController.swift
//  7TableView
//
//  Created by hj on 2/19/26.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieNameDescription: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        guard let movie = movie else { return }
        
        mainImageView.image = movie.movieImage
        movieNameLabel.text = movie.movieDescription
        movieNameDescription.text = movie.movieDescription
    }

}
