//
//  HomeViewController.swift
//  SelfSizing
//
//  Created by hoang linh on 11/2/20.
//

import UIKit

class HomeViewController: UIViewController {
     var table = UITableView()
     var data =  [Book(name: "fdsfdsfdsfdsfdsfsdfsdfdsfdsfsdfdsfdsffgfdgfdgdfgfdgdfgfdgfdgfdgdfgdfgdfgdfgdfgdfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsfdsCount of MonteCristodfdsfsdfsdf42423fsdfsdfsdfsdfsdfdsfdsfdsfsdfdsfdsfdsfdsfsdfdsfdsfdsf1", details: "Some earlier antigovernment movements in Thailand were silenced by gunfire, with dozens killed most recently in 2010. While the security forces have not cracked down violently on these peaceful rallies, it’s unclear how long such restraint will last. Nor is it certain how long the army is willing to stay in the barracks, plotting against Mr. Prayuth, who was once one of their own. "),
Book(name: "Harry Potter and the Philosopher's Stone",
    details: "I see a coup as not a bad thing,” said Sondhi Limthongkul, a prominent royalist. As recently as last week, Mr. Sondhi publicly called for yet another military intervention to restore stability and protect the monarchy, urging the military to quickly hand over power after seizing it so the king could oversee the formation of a unity government"),
Book(name: "The Monstrumologist",
    details: "The rallies have highlighted the military’s continuing grip on the country, its meddling in politics through coups, and the ways it has profited from a deeply unequal society, securing economic benefits via vast business holdings. Most of all, the young demonstrators chafe at how conscription and other martial traditions are being used to try to create an orderly, obedient populace that hews to the military’s command. "),
Book(name: "Nineteen Eighty-Four",
    details: "The empire will strike back,” said Paul Chambers, author of the upcoming book “Camouflaged Khakistocracy: Civil-Military Relations in Thailand.” “The military, and all the vested interests that are being threatened by the student protesters, they aren’t going to allow the end of hegemonic military capitalism.The Thai military is the country’s largest landowner, apart from the forestry bureau’s national park holdings. It has created a sort of parallel state with its own internal security apparatus that has brought thousands of dissenters to its military bases for enforced “attitude adjustment” sessions. It appoints all 250 members of the Senate.")
            ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        // Do any additional setup after loading the view.
    }
    
    func setupTableView (){
        view.addSubview(table)
        table.dataSource = self
        table.delegate = self
        table.estimatedRowHeight = 400
        table.rowHeight = UITableView.automaticDimension
        table.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
        
        table.translatesAutoresizingMaskIntoConstraints = false
        table.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        table.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

}

extension HomeViewController : UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.nameURL.text = data[indexPath.row].name
        cell.descriptions.text = data[indexPath.row].details
        cell.imageURL.image = UIImage(named: "1")
        return cell
    }
    
    
}
