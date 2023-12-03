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
    
    init() {
        Task.detached{
            await self.getUser()
        }
    }

    func getUser() async {
        let service = NetworkManager()
        
        let response = await service.get(path: .users, method: .get, type: UserResponseModel.self)


    }
    
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
