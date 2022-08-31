//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Юлия on 30.08.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var contactList = Person.getPerson()
 let contact = contactList[indexPath.row]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }

    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let contact = contactList[indexPath.row]
        
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInformationVC = segue.destination as? MoreInformationViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else {return }
        moreInformationVC.contact = contact
       
    }
}
