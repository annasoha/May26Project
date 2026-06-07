import SwiftUI

struct ContentView: View {
    
    @State var isLoginMode = false
    // could be true or false value
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        // 1. NavigationStack mesti berada di kedudukan paling luar
        NavigationStack {
            VStack {
                ScrollView {
                    VStack{
                        
                        Picker(selection: $isLoginMode, label: Text("Picker here")) {
                            
                            Text("Login").tag(true)
                            Text("Create Account").tag(false)
                        }.pickerStyle(SegmentedPickerStyle()).padding()
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName:"person.fill")
                                .font(.system(size: 64))
                                .padding()
                        }
                        
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .padding(12)
                        SecureField("Password", text: $password)
                            .padding(12)
                        
                        Button {
                            print(123)
                        } label: {
                            HStack {
                                Spacer()
                                Text("Create Account")
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                Spacer()
                                
                            }.background(Color.blue)
                        }
                    }
                    .padding() // create spaces in between
                }
                
                Text("SOM App")
                    .padding()
            }
            // Anda boleh menambah tajuk navigasi di sini jika mahu
            .navigationTitle(isLoginMode ? "Log In" : "Create Account") 
        }
        
    }
}
