//
//  OnboardingViewModel.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 3.12.2023.
//

import Foundation

final class OnboardingViewModel: ObservableObject {
    @Published var index = 0
    @Published var isLoginRedirect: Bool = false
    private let memento = Memento()

    private func isAppOpened() -> Bool {
        return memento.get(key: .isOponed).isEmpty
    }
    
    func setOpeningStatus() {
        memento.set(key: .isOponed, value: "okey")
        isLoginRedirect = true;
    }

    func direction() {
        isLoginRedirect = !isAppOpened()
    }



}
