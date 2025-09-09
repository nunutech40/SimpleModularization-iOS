//
//  String+Localization.swift
//  Common
//
//  Created by Nunu Nugraha on 09/09/25.
//

import Foundation

extension String {
  public func localized(identifier: String) -> String {
    let bundle = Bundle(identifier: identifier) ?? .main
    return bundle.localizedString(forKey: self, value: nil, table: nil)
  }
}
