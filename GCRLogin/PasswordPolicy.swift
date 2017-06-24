//
//  PasswordPolicy.swift
//  GCRLogin
//
//  Created by Gabriel Revells on 6/24/17.
//  Copyright © 2017 Gabriel Revells. All rights reserved.
//

import Foundation

struct GCRPasswordPolicy: OptionSet {
	let rawValue: Int

	/// Require the use of capital and lower case letters.
	static let RequireUpperAndLowerCase = GCRPasswordPolicy(rawValue: 1 << 0)

	/// Require the use of a number in the string.
	static let RequireNumber            = GCRPasswordPolicy(rawValue: 1 << 1)

	/// Forbid the use of a number within the string.
	static let ForbidNumber             = GCRPasswordPolicy(rawValue: 1 << 2)

	/// Require the use of a special character: **!@#$%^&*()-+=<>[]{}**
	static let RequireSpecialCharacter  = GCRPasswordPolicy(rawValue: 1 << 3)

	/// Forbid the use of any special characters: **!@#$%^&*()-+=<>[]{}**
	static let ForbidSpecialCharacter   = GCRPasswordPolicy(rawValue: 1 << 4)

	/// Require the string contains an emoji character.
	static let RequireEmoji             = GCRPasswordPolicy(rawValue: 1 << 5)

	/// Forbid the string from containing an emoji character.
	static let ForbidEmoji              = GCRPasswordPolicy(rawValue: 1 << 6)
}
