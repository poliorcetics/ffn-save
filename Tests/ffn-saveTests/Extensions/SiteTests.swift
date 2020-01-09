//
//  SiteTests.swift
//  
//
//  Created by Alexis Bourget on 2020-01-06.
//

import XCTest
import ffn_dl
@testable import ffn_save

fileprivate enum MockSite: Site {
  static let name = "Fanfiction.net"
  static let mainURL = URL(string: "https://www.fanfiction.net")!
  static let mobileURL = URL(string: "https://m.fanfiction.net")!
  static let regex = try! NSRegularExpression(pattern: "https://(m|www).fanfiction.net(/.*)?")
}

final class SiteTests: XCTestCase {
  func testDir() {
    XCTAssertEqual(MockSite.dir, "fanfiction-net")
  }

  func testHTMLInformationsFilename() {
    XCTAssertEqual(MockSite.HTMLInformationsFilename, "stats_fanfiction-net.html")
  }
}
