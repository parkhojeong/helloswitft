//
//  ViewController.swift
//  7TableView
//
//  Created by hj on 2/19/26.
//

import UIKit

class ViewController: UIViewController {
    
    var moviesArray: [Movie] = []
    
    var movieDataManager = DataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.rowHeight = 120
        
        title = "movie list"
        
        movieDataManager.makeMoviewData()
        moviesArray = movieDataManager.getMovieData()
    }
    
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        
        movieDataManager.updateMovieData()
        moviesArray = movieDataManager.getMovieData()
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function, section)
        return moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell
        
        guard let cell else { return UITableViewCell() }
        
        let movie = moviesArray[indexPath.row]
        
        cell.mainImageView.image = movie.movieImage
        cell.movieNameLabel.text = movie.moviewName
        cell.movieNameDescription.text = movie.movieDescription
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            guard let vc = segue.destination as? DetailViewController else {
                return
            }
            
            guard let indexPath = sender as? IndexPath else {
                return
            }
            
            vc.movie = moviesArray[indexPath.row]
            
    
        }
    }
}
