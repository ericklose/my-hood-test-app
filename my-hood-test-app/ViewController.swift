//
//  ViewController.swift
//  my-hood-test-app
//
//  Created by Eric Klose on 2/20/16.
//  Copyright © 2016 Eric Klose. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let post = Post(imagePath: "", title: "Fake Post", postDesc: "This should be normal looking text")
        let post2 = Post(imagePath: "", title: "Real Post", postDesc: "This should be normal looking text but super duper extra long forcing the shrinkage to take effect. It may need to be more long for the shrinkage to be more noticeable")
        let post3 = Post(imagePath: "", title: "Totally Absolutely Legit Post", postDesc: "This should be normal looking text")

        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
            
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    
}

