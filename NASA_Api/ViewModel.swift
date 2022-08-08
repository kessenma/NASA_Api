//
//  ViewModel.swift
//  NASA_Api
//
//  Created by Kyle Essenmacher on 8/4/22.
//

import Foundation

// UsersViewModel = NasaDataViewModel
// users = nasa_datas
// User = Nasa_data
// fetchUsers = fetchNasaData
//
//final class NasaDataViewModel: ObservableObject {
//    
//    @Published private(set) var nasa_datas: [Nasa_data] = []
//    @Published private(set) var isLoading = false
//
//    func fetchNasaData() async throws {
//
//        isLoading = true
//        defer { isLoading = false }
//        
//        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!)
//        
//        let decoder = JSONDecoder()
//        self.nasa_datas = try decoder.decode([Nasa_data].self, from: data)
//    }
//}
