import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
            WelcomeScreenView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .cornerRadius(50)
        }
}


#Preview{
    ContentView()
}







//Sign in screen code

import SwiftUI
struct SignInScreenView: View {
    @State private var email: String = ""   // by default it's empty
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 30)
                    SocalLoginButton(image: Image("Image"), text: Text("Sign in with Apple"))
                    SocalLoginButton(image: Image("Image 1"), text: Text("Sign in with Google").foregroundColor(Color.red))
                        .padding(.vertical)
                    
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    TextField("Work email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Email me a signup link")
                }
                Spacer()
                Divider()
                Spacer()
                Text("You are completely safe.")
                Text("Read our Terms & Conditions")
                    .foregroundColor(Color.red)
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    SignInScreenView()
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
           text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
    }
}

//Code for homescreen

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("Image 2")
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    NavigationLink(
                        destination: SignInScreenView().navigationBarHidden(true),
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.red)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                                .padding(.vertical)
                        })
                    .navigationBarHidden(true)
                    
                    HStack {
                        Text("New Around Here?")
                        Text("Sign in")
                            .foregroundColor(Color.red)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    WelcomeScreenView()
}
