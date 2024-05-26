//
//  TableViewController.swift
//  Megazineinfo.swift
//
//  Created by 배현빈 on 5/27/24.
//

import UIKit
import Kingfisher

struct Magazine {
    let title: String
    let subtitle: String
    let photoImageURL: URL
    
    init(title: String, subtitle: String, photoImageURLString: String) {
        self.title = title
        self.subtitle = subtitle
        self.photoImageURL = URL(string: photoImageURLString)!
    }
}

class TableViewController: UITableViewController {
    
    var list = [
        Magazine(title: "유럽 여행 쇼핑 성지, OOO은 꼭 가세요!", subtitle: "유럽의 인기 쇼핑 명소 총정리", photoImageURLString: "https://images.unsplash.com/photo-1716369415085-4a6876f91840?q=80&w=2828&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        Magazine(title: "현지 MZ가 알려주는 오사카 MZ 인기 스팟", subtitle: "2024 오사카 여행엔 여기!", photoImageURLString: "https://images.unsplash.com/photo-1716404084927-176ee37a9dbe?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        Magazine(title: "2024 NEWS 해외여행, 이렇게 달라졌다!", subtitle: "알고 준비하는 2024 새 여행", photoImageURLString: "https://images.unsplash.com/photo-1715937527911-14a019e0bd95?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let magazine = list[indexPath.row]
        
        cell.textLabel?.text = magazine.title
        cell.detailTextLabel?.text = magazine.subtitle
        
        let imageView = UIImageView()
        cell.accessoryView = imageView
        imageView.kf.setImage(with: magazine.photoImageURL)
        
        return cell
    }
}
