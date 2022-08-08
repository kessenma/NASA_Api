//
//  ContentView.swift
//  BreakingBadAPI
//
//  Created by Kyle Essenmacher on 8/7/22.
//

import SwiftUI


struct NasaData: Codable {
    var copyright: String
    var date: String
    var explanation: String
    var hdurl: String
    var media_type: String
    var service_version: String
    var title: String
    var url: String
}


struct ContentView: View {
    @State private var nasaData: NasaData? {
        didSet { url = nasaData?.hdurl ?? "" }
    }
    // COMMENT: ^^^ store the single `NasaData` response object..
    // After setting it, save the `hdurl` intoto a separate variable
    
    @State private var url: String = ""
    // COMMENT: ^^^ this is the `hdurl` that we want to show. we make it @State so that our UI updates.
    
  
    var body: some View {
        NavigationView{
            AsyncImage(url: URL(string: url))
                .frame(width: 400, height: 500)
                .clipped()
                .overlay{
                    Text("test")
                        .padding(4)
                        .font(.title2)
                    
                }
            
                .navigationTitle("Nasa Image of the day")
        .task {
            await fetchData()
            }
        }
    }
    func fetchData() async{
        //create the URl
        guard let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY") else {
            print ("error")
            return
        }
        // fetch the data from the url
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // decode the data from the url
            do {
                let decodedResponse = try JSONDecoder().decode(NasaData.self, from: data)
                // its not clear why this line (or was it the one below?) was previously throwing an error.
                self.nasaData = decodedResponse
            } catch {
                print("Something went wrong with decoding the JSON!", error)
            }
        } catch {
            print("data not decoded")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
////{"copyright":"Fritz\nHelmut Hemmerich","date":"2022-08-07","explanation":"What's that green streak in front of the Andromeda galaxy? A meteor. While photographing the Andromeda galaxy in 2016, near the peak of the Perseid Meteor Shower, a small pebble from deep space crossed right in front of our Milky Way Galaxy's far-distant companion. The small meteor took only a fraction of a second to pass through this 10-degree field.  The meteor flared several times while braking violently upon entering Earth's atmosphere.  The green color was created, at least in part, by the meteor's gas glowing as it vaporized. Although the exposure was timed to catch a Perseid meteor, the orientation of the imaged streak seems a better match to a meteor from the Southern Delta Aquariids, a meteor shower that peaked a few weeks earlier.  Not coincidentally, the Perseid Meteor Shower peaks later this week, although this year the meteors will have to outshine a sky brightened by a nearly full moon.","hdurl":"https://apod.nasa.gov/apod/image/2208/MeteorM31_hemmerich_1948.jpg","media_type":"image","service_version":"v1","title":"Meteor before Galaxy","url":"https://apod.nasa.gov/apod/image/2208/MeteorM31_hemmerich_960.jpg"}
