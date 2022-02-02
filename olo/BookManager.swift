
import Foundation

struct BookManager{
    
    func fetchBook() {
        let urlString = "https://playground-bookstore.herokuapp.com/api/v1/books"
        perfomRequest(urlString: urlString)
    }
    
    func perfomRequest(urlString: String) {
        
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {(data, response, error)
                in
                if error != nil{
                    print(error)
                    return
                }
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString)
                    parseJSON(bookData: safeData)
                }
                
            }
            task.resume()
        }
    }
    
    func parseJSON(bookData: Data) {
            let decoder = JSONDecoder()
            do {
                let decodedData = try decoder.decode(BookData.self, from: bookData)
                print(decodedData.data[0].id)
                
                
            } catch {
                print(error)
            }
        }

    
}

