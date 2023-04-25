//
//  GardenerViewModel.swift
//  Gardener
//
//  Created by user231949 on 4/23/23.
//

import Foundation

class GardenerViewModel : ObservableObject {
    @Published private(set) var gardenerData = [GardenerModel]()
    @Published var hasError = false
    @Published var error : GardenerModelError?
    private let url =
        "https://perenual.com/api/species-list?page=1&key=sk-HZzH6447a831c07df612"

@MainActor
func fetchData() async {
    if let url = URL(string: url) {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let results = try JSONDecoder().decode(GardenerResults?.self, from: data) else {
                self.hasError.toggle()
                self.error = GardenerModelError.decodeError
                return
            }
            self.gardenerData = results.data
        } catch {
            self.hasError.toggle()
            self.error = GardenerModelError.customError(error: error)
        }
    }
}

}

extension GardenerViewModel {
enum GardenerModelError : LocalizedError {
    case decodeError
    case customError(error: Error)
    
    var errorDescription: String? {
        switch self {
        case .decodeError:
            return "Decoding Error"
        case .customError(let error):
            return error.localizedDescription
        }
    }
    
}

}

