//
//  Model.swift
//  GeneralMotors_TakeHome
//
//  Created by Kyle Essenmacher on 8/3/22.
//

struct NASA_data: Codable {
    // the author
    let copyright: String
    let date: String
    // the description
    let explanation: String
    // the image
    let hdurl: String
    let media_type: String
    let service_version: String
    let title: String
    let url: String
}

//extension NASA_data {
//
//    static var dummy: NASA_data {
//        .init(copyright: "Kyle",
//              date: "01.01.2022",
//              explanation: "blah",
//              hdurl: "https://images.unsplash.com/photo-1659535635086-18d69d56d0a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80",
//              media_type: "meh",
//              service_version: "woo hoo",
//              title: "wahooo",
//              url: "wowzers"
//        )
//    }
//}


// https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY
////{"copyright":"Bray Falls",
//"date":"2022-08-03",
//"explanation":"What created the unusual halo around the Cat's Eye nebula? No one is sure. What is sure is that the Cat's Eye Nebula (NGC 6543) is one of the best known planetary nebulae on the sky.  Although haunting symmetries are seen in the bright central region, this image was taken to feature its intricately structured outer halo, which spans over three light-years across.  Planetary nebulae have long been appreciated as a final phase in the life of a Sun-like star. Only recently however, have some planetaries been found to have expansive halos, likely formed from material shrugged off during earlier puzzling episodes in the star's evolution. While the planetary nebula phase is thought to last for around 10,000 years, astronomers estimate the age of the outer filamentary portions of the Cat's Eye Nebula's halo to be 50,000 to 90,000 years.",
//"hdurl":"https://apod.nasa.gov/apod/image/2208/CatsHalo_Falls_2719.jpg",
//"media_type":"image",
//"service_version":"v1",
//"title":"Halo of the Cat's Eye",
//"url":"https://apod.nasa.gov/apod/image/2208/CatsHalo_Falls_960.jpg"}
