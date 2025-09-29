
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Text("Iimura Library")
                    .font(.largeTitle)
                    .padding()
                
                VStack{
                    ForEach(sectionItems) { section in
                        SectionView(item: section)
                    }
                }
                .padding(.vertical)
            }
        }
        .padding(.top)
    }
}

#Preview {
    HomeView()
}
