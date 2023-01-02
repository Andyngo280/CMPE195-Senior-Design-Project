//
//  ContentView.swift
//  Shared
//
//  Created by Eugene Chan on 12/27/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        NavigationView {
                
                VStack {
                    Spacer()             // give some space between the writings
                    Text("Welcome !")
                        .font(.title)
                        .padding(.all)
                    
                    Text("SJSU AR guide app")
                        .font(.subheadline)
                    
                        Button{
                            print("imaged tapped!")
                        
                        }
                        label:{
                        
                            Image("SJSU_AR_guideapp")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                
                            }
        
                    NavigationLink(destination: secondPageview()){
                        Text(" Go to next step")
                        }
                    Spacer()
                        
                }
            }
        }
    
    
    /*
     Brings the user to the Root of destination page for user to click
     whether they want to go to Classroom, Building, or Facilities
     
     */
struct secondPageview: View{
        var body: some View {
            
                VStack{
                    Spacer()
                    NavigationLink(destination: classroomView()){
                        
                        Text("CLASSROOM")
                        }
                    Spacer()
                    NavigationLink(destination: buildingView())
                        {
                        
                        Text("BUILDING")
                        
                        }
                    Spacer()
                    NavigationLink(destination: FacilityView())
                        {
                        
                        Text("FACILITIES")
                        
                        
                        }
                    Spacer()
                    }
                                                }
        
    }
    
    /*
     once Classroom clicked, it will bring you to classroom page
     and user will be inputing values into the drop down menu and room number
     Click START to go to the Navigation system
     */
struct classroomView: View{
    var body: some View {
        VStack{
            Text("I want to go to building DROP DOWN MENU room #NUMBER ")
        }
    }
        
        
    }
    
    
    /*
     once Building clicked, it will bring you to Building page
     and user will be inputing values into the drop down menu and room number
     Click START to go to the Navigation system
     */
struct buildingView: View{
    var body: some View {
        VStack{
            Text("I want to go to building DROP DOWN MENU")
            Text("Start! button")
        }
        
    }
        
        
        
    }
    /*
     once facility clicked, it will bring you to facility page
     and user will be accessing the drop down menu and select the value and click START button
     */
struct FacilityView: View{
        var body: some View {
            VStack{
                Text("I want to find a DROP DOWN MENU e.g. Vending Machine ....")
            }
            
        }
            
            
            
        }
    /*
     This function allows the dev to see the preview of how does the app looked
     */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
}
