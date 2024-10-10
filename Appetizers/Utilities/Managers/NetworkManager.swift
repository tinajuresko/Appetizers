//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Tina Jureško on 03.10.2024..
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result <[Appetizer], APError>) -> Void) { //result is either an array of appetizers or an error
        guard let url = URL(string: appetizerURL) else  { //check to make sure we have good url
            completed(.failure(.invalidURL)) //if we dont -> return failure
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { (data, response, error) in //creating network call with the good url
            if let _ = error { //we either get data, response or error, if error is NOT nill
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { //if response is nill or status code for example 404 return failure
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else { //if data is nil
                completed(.failure(.invalidData))
                return
            }
            
            do { //we have good data -> decode it into appetizersResponse
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizersResponse.self, from: data) //decode data into appetizersResponse (an array of Appetizer
                completed(.success(decodedResponse.request)) //got [Appetizer] as a result
            } catch {
                completed(.failure(.invalidData)) //got APError as a result
            }
        }
        
        task.resume()
    }
    
    func downloadImage(fromURLString: String, completed: @escaping (UIImage?) -> Void) {
        //cache
        let cacheKey = fromURLString
        
        if let image = cache.object(forKey: NSString(string: cacheKey)) { //first check if the image already exists in the cache
            completed(image)
            return
        }
        
        //if the image is nil, its not in the cache
        guard let url = URL(string: fromURLString) else { //check if the url is fine
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { (data, response, error) in //check if data is fine
            guard let data = data, let image = UIImage(data: data) else { //initialize image from data
                completed(nil)
                return
            }
            
            //put the image in the cache
            self.cache.setObject(image, forKey: NSString(string: cacheKey))
            completed(image)
        }
        
        task.resume()
        
    }
    
}
