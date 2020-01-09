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

  /// Name of the HTML file containing the list of stories from the site and the statistics.
  static var HTMLInformationsFilename: String {
    "stats_\(dir).html"
  }
}
