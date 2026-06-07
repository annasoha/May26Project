import SwiftUI
import AVFoundation

struct PatientPage: View {
    
    var body: some View {
        Grid(horizontalSpacing: 12, verticalSpacing: 12) {
            GridRow {
                CareButton(symbol: "⏰", label: "Time", color: .white)
            }.gridCellColumns(2)
            //This grid cell should take up 2 columns instead of just 1
            GridRow {
                CareButton(symbol: "🍽️", label: "Eat",    color: .mint)
                CareButton(symbol: "🚿", label: "Shower", color: .cyan)   
            }
            GridRow {
                CareButton(symbol: "👕", label: "Dress",      color: .orange) 
                CareButton(symbol: "💊", label: "Medication", color: .purple)
            }
            GridRow {
                CareButton(symbol: "🦽", label: "Transportation",      color: .pink) 
                CareButton(symbol: "🚽", label: "Toilet", color: .yellow)
        
                }
            GridRow {
                CareButton(symbol: "🚨", label: "Emergency", color: .red)  
                CareButton(symbol: "📞", label: "Contacts",  color: .blue)
            }
            
        }.padding()
        .background(Color(red: 0.1, green: 0.1, blue: 0.18))
        .frame(maxWidth: .infinity)
                
                
            }
    struct PatientPage_Previews: PreviewProvider {
        static var previews: some View {
            PatientPage()
        }

    }
}
