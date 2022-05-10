import Foundation

class PostViewModel {
    
    var posts: [Post] = []
    
    let URL_API = "https://dummyapi.io/data/v1/post?limit=30"
    let appId = "626c31c5df0af1efad6b2d4c"
    
    func getPosts() async {
        do {
            guard let url = URL(string: URL_API) else { return }
            
            var request = URLRequest(url: url)
            request.httpMethod = "GET"

            request.addValue(appId, forHTTPHeaderField: "app-id")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            if let decoder = try? JSONDecoder().decode(Posts.self, from: data) {
                DispatchQueue.main.async(execute: {
                    decoder.data.forEach { post in
                        self.posts.append(post)
                    }
                })
            }
        } catch {
            print("error")
        }
    }
    
}
