//
//  SelectprojectViewModel.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 13/07/2026.
//
import Foundation
final class SelectProjectViewModel {
    private(set) lazy var projects: [ProjectOption] = {
        return MockProjects.data(for: platform)
    }()
    private let platform: ProjectPlatform
    init(platform: ProjectPlatform) {
        self.platform = platform
    }

}
