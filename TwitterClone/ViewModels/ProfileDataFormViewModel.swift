//
//  ProfileDataFormViewModel.swift
//  TwitterClone
//
//  Created by ROHIT DAS on 28/03/23.
//

import Foundation
import Combine

final class ProfileDataFormViewModel : ObservableObject {
    @Published var displayName : String?
    @Published var username : String?
    @Published var bio : String?
    @Published var avatarPath : String?
}
