import SwiftUI

//COLORS
let buttonColor = Color(#colorLiteral(red: 0.7692624927, green: 0.3453927636, blue: 0.1849986017, alpha: 1))

struct Today_Previews: PreviewProvider {
  static var previews: some View {
    Today()
  }
}

fileprivate func topStack() -> some View {
  return HStack {
    Text("Today")
      .kerning(-1)
      .foregroundColor(textColor)
      .font(.custom("HelveticaNeue-Medium",
                    size: 25))
    
    Spacer()
    
    Image("woman")
      .resizable()
      .scaledToFill()
      .frame(width: 45,
             height: 45)
      .clipShape(Circle())
  }.padding([.horizontal], 20)
}

fileprivate func spendCard() -> some View {
  return //spend card
    VStack {
      HStack {
        VStack(alignment: .leading) {
          Text("Hi Jess,")
            .kerning(-0.5)
            .foregroundColor(.white)
            .font(.custom("HelveticaNeue", size: 24))
          Text("You can modify your next meal box until 16.00 today")
            .kerning(-0.5)
            .foregroundColor(.white)
            .font(.custom("HelveticaNeue", size: 24))
          Image(systemName: "ellipsis.circle.fill")
            .foregroundColor(buttonColor)
            .opacity(0.9)
            .font(.system(size: 28,
                          weight: .regular))
        }
        Spacer()
        Color.clear.frame(width: 100)
      }
      
      Color.clear.frame(height: 250)
      
    }.padding([.all], 15)
      .background(
        ZStack {
          
          PlayerView()
            .scaleEffect(3.0)
          
          LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.55), Color.black.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
          
      })
      .cornerRadius(25)
}

// MARK - main return
struct Today: View {
  
  var body: some View {
    ScrollView {
      VStack(spacing: 10) {
        
        topStack()
        
        VStack(spacing: 10.0) {
          
          spendCard()
          
          //other cards
          VStack(spacing: 0.0) {
            
            //first card
            HStack(alignment: .top) {
              VStack(alignment: .leading) {
                Text("Base rent")
                  .kerning(-0.5)
                  .foregroundColor(Color.white)
                  .font(.custom("HelveticaNeue-Regular",
                                size: 22))
                Text("1,430")
                  .kerning(-0.5)
                  .foregroundColor(firstCardColor)
                  .brightness(0.15)
                  .font(.custom("HelveticaNeue-Regular",
                                size: 22))
              }
              
              Spacer()
              
              Image(systemName: "b.circle.fill")
                .foregroundColor(Color.white.opacity(0.8))
                .font(.system(size: 35,
                              weight: .regular))
                .padding([.top], 5)
              
            }.padding([.all], 15)
              .background(firstCardColor)
            
            //second card
            HStack(alignment: .top) {
              VStack(alignment: .leading) {
                Text("Energy")
                  .kerning(-0.5)
                  .foregroundColor(Color.white)
                  .font(.custom("HelveticaNeue-Regular",
                                size: 22))
                Text("120")
                  .kerning(-0.5)
                  .foregroundColor(secondCardColor)
                  .brightness(0.15)
                  .font(.custom("HelveticaNeue-Regular",
                                size: 22))
              }
              
              Spacer()
              
              Image(systemName: "e.circle.fill")
                .foregroundColor(Color.white.opacity(0.8))
                .font(.system(size: 35,
                              weight: .regular))
                .padding([.top], 5)
              
            }.padding([.all], 15)
              .background(secondCardColor)
            
            //third card
            HStack(alignment: .top) {
              VStack(alignment: .leading) {
                Text("Recreation").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 22))
                Text("78").kerning(-0.5).foregroundColor(thirdCardColor).brightness(0.15).font(.custom("HelveticaNeue-Regular", size: 22))
              }
              
              Spacer()
              
              Image(systemName: "r.circle.fill").foregroundColor(Color.white.opacity(0.8)).font(.system(size: 35, weight: .regular)).padding([.top], 5)
              
            }.padding([.all], 15).background(thirdCardColor)
            
            //fourth card
            VStack {
              HStack {
                VStack(alignment: .leading) {
                  Text("Food")
                    .kerning(-0.5)
                    .foregroundColor(Color.white)
                    .font(.custom("HelveticaNeue-Regular", size: 22))
                  Text("23")
                    .kerning(-0.5)
                    .foregroundColor(fourthCardColor)
                    .brightness(0.15)
                    .font(.custom("HelveticaNeue-Regular", size: 22))
                }
                
                Spacer()
                
                Image(systemName: "f.circle.fill").foregroundColor(Color.white.opacity(0.8)).font(.system(size: 35,
                                                                                                          weight: .regular))
                  .padding([.top], 5)
              }.padding([.bottom], 50)
              
              dividerColor.frame(height: 2)
              
              HStack(alignment: .top) {
                VStack(alignment: .leading) {
                  Text("Your meal box")
                    .kerning(-0.5)
                    .foregroundColor(Color.white)
                    .font(.custom("HelveticaNeue-Regular",
                                  size: 16))
                  Text("Vegetarian").kerning(-0.5)                    .foregroundColor(fourthCardColor)
                    .brightness(0.15)
                    .font(.custom("HelveticaNeue-Regular",
                                  size: 14))
                }
                
                VStack(alignment: .leading) {
                  Text("People")
                    .kerning(-0.5)
                    .foregroundColor(Color.white)
                    .font(.custom("HelveticaNeue-Regular", size: 16))
                  Text("2")
                    .kerning(-0.5)
                    .foregroundColor(fourthCardColor)
                    .brightness(0.15)
                    .font(.custom("HelveticaNeue-Regular", size: 14))
                }
                
                VStack(alignment: .leading) {
                  Text("Days")
                    .kerning(-0.5)
                    .foregroundColor(Color.white)
                    .font(.custom("HelveticaNeue-Regular", size: 16))
                  Text("5")
                    .kerning(-0.5)
                    .foregroundColor(fourthCardColor)
                    .brightness(0.15)                    .font(.custom("HelveticaNeue-Regular", size: 14))
                }
                
                Spacer()
                
                HStack {
                  Text("Change plan").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Medium", size: 14))
                }.padding([.vertical], 2).padding([.horizontal], 7).background(opaqueColor.opacity(0.9)).cornerRadius(10)
              }.padding([.bottom], 10)
              
              dividerColor.frame(height: 2)
              
              HStack {
                VStack(alignment: .leading) {
                  Text("Next Delivery")
                    .kerning(-0.5)
                    .foregroundColor(Color.white)
                    .font(.custom("HelveticaNeue-Regular", size: 16))
                  Text("Monday 4th 4pm")
                    .kerning(-0.5)
                    .foregroundColor(fourthCardColor)
                    .brightness(0.15)
                    .font(.custom("HelveticaNeue-Regular", size: 14))
                }
                
                Spacer()
                
              }.padding([.bottom], 10)
              
            }.padding([.all], 15).background(fourthCardColor)
            
            
          }.cornerRadius(25)
        }.padding([.horizontal], 20)
        
      }.padding([.top], 75)
      
      
    }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height).background(backgroundColor)
  }
}

fileprivate func horizontalScroll() -> some View {
  
  return // top horizontal scroll
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        Color.clear.frame(width: 13)
        
        VStack {
          Text("Subscriptions")
            .kerning(-0.5)
            .foregroundColor(secondaryColor)
            .font(.custom("HelveticaNeue-Medium", size: 18))
            .padding([.vertical], 5)
            .padding([.horizontal], 10)
            .background(Color.white)
            .cornerRadius(15)
        }.onTapGesture {
          print("tapped")
        }
        
        Color.clear.frame(width: 90)
        
        Text("Utilities").kerning(-0.5)
          .foregroundColor(secondaryAccentTextColor)
          .font(.custom("HelveticaNeue-Medium",
                        size: 18))
        
        Color.clear.frame(width: 20)
        
        Text("Finances")
          .kerning(-0.5)
          .foregroundColor(secondaryAccentTextColor)
          .font(.custom("HelveticaNeue-Medium",
                        size: 18))
      }
    }.padding([.bottom], 20).padding([.top], 15)
}
