import SwiftUI
import AVFoundation

struct ClockView : View {
    @State private var currenTime = Date() 
    
    var timeView: String {
        let formatter = DateFormatter() // create a trnslator
        formatter.dateFormat = "HH:mm" // format it
        return formatter.string(from: currenTime)
    }
}
