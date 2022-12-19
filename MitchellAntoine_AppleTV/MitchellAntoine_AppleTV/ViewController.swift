//
//  ViewController.swift
//  MitchellAntoine_AppleTV
//
//  Created by Antoine Mitchell on 12/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var showsArray = [Shows]()
    var filteredShows = [[Shows](), [Shows](), [Shows]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        addData()
        filterByCategory()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredShows[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TV01", for: indexPath)
        
        cell.textLabel?.text = filteredShows[indexPath.section][indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Anime"
        case 1:
            return "Drama"
        case 2:
            return "Action"
        default:
            return "Oops should not happen here"
        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination
        if let indexPath = tableView.indexPathForSelectedRow {
            let showToSend = filteredShows[indexPath.section][indexPath.row]
            
            // Pass the selected object to the new view controller.
            if let destination = segue.destination as? DetailViewController {
                destination.show = showToSend
            }
        }
    }
    
    func addData() {
        
        showsArray.append(Shows(title: "Kengan Ashura", airDate: "July 31, 2019", imageNam: "Anime1", category: "Anime", discription: "Underground gladiator Tokita Ohma fights on behalf of business mogul Nogi Hideki, who wagers mega-business deals on the outcomes of the brutal matches."))
        showsArray.append(Shows(title: "World War Blue", airDate: "October 20, 2012", imageNam: "Anime2", category: "Anime", discription: "A parody of the console wars, the series tells the story of two nations, the Segua Kingdom and Ninteldo Empire, locked in a struggle for dominance over the land of Consume."))
        showsArray.append(Shows(title: "Dies Irae", airDate: "October 7, 2017", imageNam: "Anime3", category: "Anime", discription: "Ren Fujii dreads the return of a group of supermen whose coming would bring the world's destru"))
        showsArray.append(Shows(title: "The Rising Of The Shield Hero", airDate: "January 9, 2019", imageNam: "Anime4", category: "Anime", discription: "A man equipped with only a shield is chosen to be one of the world's great defenders, but when a cruel betrayal shatters his reputation, he tries to regain the public's trust while fighting evil alongside a few devoted allies."))
        showsArray.append(Shows(title: "Chaos Dragon", airDate: "July 1, 2015", imageNam: "Anime5", category: "Anime", discription: "Chaos Dragon is a Japanese media franchise based on the Japanese role-playing game Red Dragon by Makoto Sanda, "))
        
        
        showsArray.append(Shows(title: "All Good Things", airDate: "December 3, 2010 ", imageNam: "Drama1", category: "Drama", discription: "Heir to a real-estate dynasty, David Marks (Ryan Gosling) lives in the shadow of his father, Sanford (Frank Langella). He takes a chance at true love when he meets Katie (Kirsten Dunst), a woman of modest origins who sees David's real worth as a person, not just his family's wealth"))
        showsArray.append(Shows(title: "Focus", airDate: "February 27, 2015", imageNam: "Drama2", category: "Drama", discription: "Nicky (Will Smith), a veteran con artist, takes a novice named Jess (Margot Robbie) under his wing. While Nicky teaches Jess the tricks of the trade, the pair become romantically involved; but, when Jess gets uncomfortably close, Nicky ends their relationship."))
        showsArray.append(Shows(title: "The Vow", airDate: "February 6, 2012", imageNam: "Drama3", category: "Drama", discription: "Paige (Rachel McAdams) and Leo (Channing Tatum) are happily married newlyweds, but their idyllic life together suddenly shatters when a car accident leaves her in a coma. When Paige awakes, she has severe memory loss and doesn't know Leo."))
        showsArray.append(Shows(title: "Sleeping Beauty", airDate: "December 2, 2011", imageNam: "Drama4", category: "Drama", discription: "A college student (Emily Browning) becomes a niche sex worker for a high-end brothel where customers pay to fondle her while she sleeps."))
        showsArray.append(Shows(title: "A Beautiful Mind", airDate: "December 13, 2001", imageNam: "Drama5", category: "Drama", discription: "A human drama inspired by events in the life of John Forbes Nash Jr., and in part based on the biography 'A Beautiful Mind' by Sylvia Nasar. From the heights of notoriety to the depths of depravity, John Forbes Nash Jr. experienced it all."))
        
        
        showsArray.append(Shows(title: "Ready Player One", airDate: "March 29, 2018", imageNam: "Action1", category: "Action", discription: "In 2045 the planet is on the brink of chaos and collapse, but people find salvation in the OASIS: an expansive virtual reality universe created by eccentric James Halliday. When Halliday dies, he promises his immense fortune to the first person to discover a digital Easter egg that's hidden somewhere in the OASIS."))
        showsArray.append(Shows(title: "The Princess", airDate: "July 1, 2022", imageNam: "Action2", category: "Action", discription: "When a strong-willed princess refuses to wed a cruel sociopath, she is kidnapped and locked in a remote tower. With her scorned, vindictive suitor intent on taking her father's throne, the princess must protect her family and save the kingdom."))
        showsArray.append(Shows(title: "The Aeronauts", airDate: "December 6, 2019 ", imageNam: "Action3", category: "Action", discription: "In 1862 headstrong scientist James Glaisher and wealthy young widow Amelia Wren mount a balloon expedition to fly higher than anyone in history. As their perilous ascent reduces their chances of survival, the unlikely duo soon discover things about themselves -- and each other -- that help both of them find their place in the world."))
        showsArray.append(Shows(title: "Journey 2: The Mysterious Island", airDate: "February 10, 2012", imageNam: "Action4", category: "Action", discription: "Now 17, Sean Anderson (Josh Hutcherson) receives a coded distress signal from an island where none should exist. Knowing that he will not be able to dissuade Sean from tracking the signal to its source, Hank (Dwayne Johnson), Sean's new stepfather, joins the teen on a quest to the South Pacific."))
        showsArray.append(Shows(title: "Prey", airDate: "July 21, 2022", imageNam: "Action5", category: "Action", discription: "A skilled Comanche warrior protects her tribe from a highly evolved alien predator that hunts humans for sport, fighting against wilderness, dangerous colonisers and this mysterious creature to keep her people safe."))
    }
    
    func filterByCategory() {
        filteredShows[0] = showsArray.filter({ $0.category == "Anime"})
        filteredShows[1] = showsArray.filter({ $0.category == "Drama"})
        filteredShows[2] = showsArray.filter({ $0.category == "Action"})
    }

}

