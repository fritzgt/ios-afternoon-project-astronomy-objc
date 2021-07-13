//
//  AstronomyCollectionViewController.swift
//  Astronomy
//
//  Created by FGT MAC on 7/10/21.
//

import UIKit

private let reuseIdentifier = "Cell"

class AstronomyCollectionViewController: UICollectionViewController {
    
    //MARK: - Properties
    private var network = Network()
    private var sol = 1
    private var solArray: [MartialSol] = []
    
    //MARK: - Outlets

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        fetchData()
    }

    
    //MARK: - IBActions
    @IBAction func selectedSol(_ sender: UIStepper) {
        sol = Int(sender.value)
        solArray.removeAll()
        fetchData()
    }
    
    //MARK: - Private methods
    private func fetchData() {
        network.fetchData(for: sol) { data, error in
            self.solArray = data
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
    

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 2
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return solArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        let data = solArray[indexPath.row]
    
        return cell
    }
}
