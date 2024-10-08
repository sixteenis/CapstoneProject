import SwiftUI

struct ViewTest: View {
    var body: some View {
                TabView {
                    MapView()
                        .tabItem {
                            Image(systemName: "map")
                            Text("지도")
                        }
                    ChartView()
                        .tabItem {
                            Image(systemName: "chart.bar")
                            Text("차트")
                        }
                    WeatherView()
                        .tabItem{
                            Image(systemName: "sun.max")
                            Text("날씨")
                        }
                } // TabView
    }
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest()
    }
}
