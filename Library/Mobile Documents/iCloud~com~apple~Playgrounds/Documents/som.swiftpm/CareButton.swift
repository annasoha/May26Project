import SwiftUI

struct CareButton: View {
    var symbol: String
    var label: String
    var color: Color
    var body: some View {
        
        Button(action: {
            print("\(label) tapped!")  // \(label) inserts the value
            // so this prints "Eat tapped!"
        }) { 
            // these below is for describing the appereance
            VStack(spacing: 10) {
                Text(symbol)             // shows "🍽️" (or whatever was passed)
                    .font(.system(size: 48))
                
                Text(label)            // shows "Eat" (or whatever was passed)
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, minHeight: 120)
            .background(color.opacity(0.3))  // uses the color that was passed
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(color, lineWidth: 2))  // border uses same color
        
        }
    }
}
