import SwiftUI

struct LoginIn: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        VStack {
            Text("Sign In")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color .black)
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            // Email and Password
            
            VStack(alignment: .leading, spacing: 8, content:{
                Text("User Name")
                    .fontWeight(.bold)
                    .foregroundColor(Color .black)
                
                TextField("Email@gmail.com", text: $email)
                
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color .black)
                    .padding(.top, 5)
                
                Divider()
                
            }).padding(.top, 25)
            
            
            // PAssword
            VStack(alignment: .leading, spacing: 8, content:{
                Text("Password")
                    .fontWeight(.bold)
                    .foregroundColor(Color .black)
                
                SecureField("12345678", text: $password)
                
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color .black)
                    .padding(.top, 5)
                
                Divider()
                
            }).padding(.top, 20)
            
            
            // Forget Password
            Button(action: {}, label: {
                Text("Forget Password ?")
                    .fontWeight(.bold)
                    .foregroundColor(Color .black)
            })
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.top, 10)
            
            
            // Next Button
            Button(action: {}, label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color .white)
                    .padding()
                    .background(Color .black)
                    .clipShape(Circle())
                // Shadow
                    .shadow(color: Color("blue") .opacity(0.6), radius: 25, x: 0, y: 0)
            })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
            
        }
        .padding()
    }
}

struct LoginIn_Previews: PreviewProvider {
    static var previews: some View {
        LoginIn()
    }
}
