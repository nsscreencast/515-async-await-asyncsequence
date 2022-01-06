import Foundation

struct Quake {
    let time: Date
    let latitude: Double
    let longitude: Double
    let magnitude: Double
    
    static func parse(_ line: String, formatter: DateFormatter) -> Quake? {
        let values = line.split(separator: ",")
        guard values.count > 4 else { return nil }
        
        guard let time = formatter.date(from: String(values[0])),
              let latitude = Double(values[1]),
              let longitude = Double(values[2]),
              let magnitude = Double(values[4]) else {
                  return nil
              }
              
        return .init(time: time, latitude: latitude, longitude: longitude, magnitude: magnitude)
    }
}
