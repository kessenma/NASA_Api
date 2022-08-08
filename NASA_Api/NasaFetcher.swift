
////
//
//import Foundation
//
//
//class NasaFetcher: ObservableObject {
//    
//    @Published var nasa_datas = [Nasa_data]()
//    @Published var isLoading: Bool = false
//    @Published var errorMessage: String? = nil
//    
//    let service: APIServiceProtocol
//    
//    init(service: APIServiceProtocol = APIService()) {
//        self.service = service
//        fetchAllNasa()
//    }
//    
//    func fetchAllNasa() {
//        
//        isLoading = true
//        errorMessage = nil
//        
//        let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")
//        service.fetchNasa(url: url) { [unowned self] result in
//            
//            DispatchQueue.main.async {
//                
//                self.isLoading = false
//                switch result {
//                case .failure(let error):
//                    self.errorMessage = error.localizedDescription
//                    // print(error.description)
//                    print(error)
//                case .success(let nasa_datas):
//                    print("--- sucess with \(nasa_datas.count)")
//                    self.nasa_datas = nasa_datas
//                }
//            }
//        }
//        
//    }
//}
//    
////    //MARK: preview helpers
////
////    static func errorState() -> BreedFetcher {
////        let fetcher = BreedFetcher()
////        fetcher.errorMessage = APIError.url(URLError.init(.notConnectedToInternet)).localizedDescription
////        return fetcher
////    }
////
////    static func successState() -> BreedFetcher {
////        let fetcher = BreedFetcher()
////        fetcher.nasa_datas = [Nasa_data.example1(), Nasa_data.example2()]
////
////        return fetcher
////    }
////}
