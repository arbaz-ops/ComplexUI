//
//  Home.swift
//  ComplexUI
//
//  Created by Mac on 03/08/2021.
//

import SwiftUI

struct Home: View {
    
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("dark"))
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .leading, spacing: 8, content: {
                Text("User name or email")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("example@gmail.com", text: $email)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top, 5)
                    
                Divider()
            })
            .padding(.top, 25)
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Password")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                SecureField("1234", text: $email)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top, 5)
                Divider()
                
            }).padding(.top, 25)
            
            Button(action: {}, label: {
                Text("Forgot password?")
            })
            
        }.padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
