import SwiftUI

struct SplashView: View {
    @State private var isActive: Bool = false
    @State private var size: Double = 0.5
    @State private var opacity: Double = 0.5

    var body: some View {
        if isActive{
            ViewTest()
        }else{
            VStack(spacing: 20){
                Image("splash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Text("Clean Pass")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .fontWeight(.heavy)
                Text("Clean팀")
                    .font(.subheadline)
                    .foregroundColor(.green)
                    .fontWeight(.heavy)
            }//Vstack
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeInOut(duration: 1.5)){
                    size = 1.0
                    opacity = 1.0
                    //3초 뒤에 메인으로 이동
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                        isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
