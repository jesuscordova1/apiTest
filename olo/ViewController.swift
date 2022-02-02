

import UIKit

class ViewController: UIViewController {

    var bookLabel : UILabel?
    var descriptionLabel : UILabel?
    var authorLabel : UILabel?
    var goButton : UIButton?
    
    var bookManager = BookManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    func initUI(){
        
        bookManager.fetchBook()
        
        bookLabel = UILabel(frame: CGRect(x: 20, y: 40, width: 400, height: 50))
        bookLabel?.text = "Libro "
        bookLabel?.font = .boldSystemFont(ofSize: 30)
        view.addSubview(bookLabel!)
        
        descriptionLabel = UILabel(frame: CGRect(x: 20, y: 90, width: 300, height: 200))
        descriptionLabel?.backgroundColor = .systemGray4
        descriptionLabel?.numberOfLines = 2
        view.addSubview(descriptionLabel!)
        
        authorLabel = UILabel(frame: CGRect(x: 20, y: 290, width: 400, height: 50))
        authorLabel?.text = "Autor desconocido"
        authorLabel?.font = .boldSystemFont(ofSize: 30)
        view.addSubview(authorLabel!)
        
        goButton = UIButton(frame: CGRect(x: 20, y: 350, width: 100, height: 50))
        goButton?.titleLabel?.text = "GO"
        goButton?.backgroundColor = .red
        goButton?.titleLabel?.textColor = .white
        goButton?.addTarget(self, action: #selector(lol), for: .touchUpInside)
        view.addSubview(goButton!)
        
    }
    
    @objc func lol(){
        print("lol")
    }


}

