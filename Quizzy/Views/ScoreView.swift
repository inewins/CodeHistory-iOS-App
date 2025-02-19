//
//  ScoreView.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/27/25.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel

    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 100))
                    .bold()
                Spacer()
                Text("\(viewModel.correctGuesses)✅")
                    .font(.system(size: 30))
                Text("\(viewModel.incorrectGuesses)❌")
                    .font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz", textColor: .white, backgroungColor: GameColor.accent)
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(
            viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
