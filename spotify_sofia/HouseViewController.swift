
import UIKit

struct MusicData{
    let nome: String
    let artista: String
}

class HouseViewController: UIViewController, UITableViewDataSource {
    
    let musicList : [MusicData]=[
        MusicData(nome: "Wind ", artista: "Scorpions" ),
        MusicData(nome: "Laranja", artista: "ONE_Sounds" ),
        MusicData(nome: "Roxo", artista: "Grace"),
        MusicData(nome: "Verde", artista: "" )
       ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:"Music Cell") as? MusicTableViewCell else{
                   fatalError("Nao foi encontrado")
               }
               cell.configure(musicData: musicList[indexPath.item])
               return cell
    }
    
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            tableview.dataSource = self
            
        }
    
}
