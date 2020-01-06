//
//  Site.swift
//  
//
//  Created by Alexis Bourget on 2020-01-06.
//

import Foundation
import ffn_dl

internal extension Site {
  /// Directory associated with the site.
  static var dir: String {
    name.lowercased().replacingOccurrences(of: #"\W+"#, with: "-", options: .regularExpression)
  }
}
