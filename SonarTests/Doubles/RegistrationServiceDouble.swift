//
//  RegistrationServiceDouble.swift
//  SonarTests
//
//  Created by NHSX.
//  Copyright © 2020 NHSX. All rights reserved.
//

import Foundation
@testable import Sonar

class RegistrationServiceDouble: RegistrationService {
    var registerCalled = false
    
    func register() {
        registerCalled = true
    }
}