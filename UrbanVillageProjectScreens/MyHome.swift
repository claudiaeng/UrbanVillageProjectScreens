//  Copyright © 2020 Studio10011. All rights reserved.

import SwiftUI

let backgroundColor: Color = Color.init(red: 242/255,
                                        green: 240/255,
                                        blue: 239/255)

let textColor: Color = Color.init(red: 42/255,
                                  green: 37/255,
                                  blue: 21/255)

let secondaryColor: Color = Color.init(red: 123/255,
                                       green: 121/255,
                                       blue: 115/255)

let accentTextColor: Color = Color.init(red: 194/255,
                                        green: 192/255,
                                        blue: 189/255)

let firstCardColor: Color = Color.init(red: 156/255,
                                       green: 159/255,
                                       blue: 148/255)

let secondaryAccentTextColor: Color = Color.init(red: 182/255,
                                                 green: 182/255,
                                                 blue: 179/255)

let secondCardColor: Color = Color.init(red: 148/255,
                                        green: 141/255,
                                        blue: 119/255)

let thirdCardColor: Color = Color.init(red: 107/255,
                                       green: 95/255,
                                       blue: 91/255)

let fourthCardColor: Color = Color.init(red: 62/255,
                                        green: 64/255,
                                        blue: 78/255)

let dividerColor: Color = Color.init(red: 71/255,
                                     green: 73/255,
                                     blue: 87/255)

let opaqueColor: Color = Color.init(red: 85/255,
green: 87/255,
blue: 99/255)

fileprivate func topStack() -> some View {
    return HStack {
        Text("My home").kerning(-1).foregroundColor(textColor).font(.custom("HelveticaNeue-Medium", size: 25))
        
        Spacer()
        
        Image("woman").resizable().scaledToFill().frame(width: 45, height: 45)
            .clipShape(Circle())
    }.padding([.horizontal], 20)
}

fileprivate func spendCard() -> some View {
    return //spend card
        VStack {
            HStack {
                Text("Your total monthly spend").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Medium", size: 14))
                
                Spacer()
                
                HStack {
                    Text("March").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Medium", size: 14))
                    Color.clear.frame(width: 0)
                    Image(systemName: "arrowtriangle.down.fill").foregroundColor(accentTextColor).font(.system(size: 9, weight: .black))
                }.padding([.vertical], 3).padding([.horizontal], 9).overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(accentTextColor, lineWidth: 1)
                )
            }
            
            Color.clear.frame(height: 30)
            
            HStack {
                
                Spacer()
                
                Text("1,938").kerning(-0.5).foregroundColor(secondaryColor).font(.custom("HelveticaNeue", size: 55))
            }
        }.padding([.all], 15).background(Color.white).cornerRadius(25)
}

struct MyHome: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                topStack()
                
                // subs
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Color.clear.frame(width: 13)
                        
                        Text("Subscriptions").kerning(-0.5).foregroundColor(secondaryColor).font(.custom("HelveticaNeue-Medium", size: 18)).padding([.vertical], 5).padding([.horizontal], 10).background(Color.white).cornerRadius(15)
                        
                        Color.clear.frame(width: 90)
                        
                        Text("Utilities").kerning(-0.5).foregroundColor(secondaryAccentTextColor).font(.custom("HelveticaNeue-Medium", size: 18))
                        
                        Color.clear.frame(width: 20)
                        
                        Text("Finances").kerning(-0.5).foregroundColor(secondaryAccentTextColor).font(.custom("HelveticaNeue-Medium", size: 18))
                    }
                }.padding([.bottom], 20).padding([.top], 15)
                
                VStack(spacing: 0.0) {
                    
                    spendCard()
                    
                    //other cards
                    VStack(spacing: 0.0) {
                        
                        //first card
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Base rent").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 22))
                                Text("1,430").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 22))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "b.circle.fill").foregroundColor(Color.white).font(.system(size: 35, weight: .regular)).padding([.top], 5)
                            
                        }.padding([.all], 15).background(firstCardColor)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Energy").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 22))
                                Text("120").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 22))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "e.circle.fill").foregroundColor(Color.white).font(.system(size: 35, weight: .regular)).padding([.top], 5)
                            
                        }.padding([.all], 15).background(secondCardColor)
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Recreation").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 22))
                                Text("78").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 22))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "r.circle.fill").foregroundColor(Color.white).font(.system(size: 35, weight: .regular)).padding([.top], 5)
                            
                        }.padding([.all], 15).background(thirdCardColor)
                        
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Food").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 22))
                                    Text("23").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 22))
                                }
                                
                                Spacer()
                                
                                Image(systemName: "f.circle.fill").foregroundColor(Color.white).font(.system(size: 35, weight: .regular)).padding([.top], 5)
                            }
                            
                            dividerColor.frame(height: 2)
                            
                            HStack(alignment: .top) {
                                VStack(alignment: .leading) {
                                    Text("Your meal box").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 16))
                                    Text("Vegetarian").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 14))
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("People").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 16))
                                    Text("2").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 14))
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("Days").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 16))
                                    Text("5").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 14))
                                }
                                
                                Spacer()
                                
                                HStack {
                                    Text("Change plan").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Medium", size: 14))
                                    }.padding([.vertical], 2).padding([.horizontal], 7).background(opaqueColor).cornerRadius(10)
                            }.padding([.bottom], 10)
                            
                            dividerColor.frame(height: 2)
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Next Delivery").kerning(-0.5).foregroundColor(Color.white).font(.custom("HelveticaNeue-Regular", size: 16))
                                    Text("Monday 4th 4pm").kerning(-0.5).foregroundColor(accentTextColor).font(.custom("HelveticaNeue-Regular", size: 14))
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

struct MyHome_Previews: PreviewProvider {
    static var previews: some View {
        MyHome()
    }
}
