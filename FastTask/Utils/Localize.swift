//
//  Localize.swift
//  FastTask
//
//  Created by user on 3/24/21.
//  Copyright © 2021 Epsillent. All rights reserved.
//

import Foundation

public let DESKS_VC_TITLE_LABEL = "desks_vc_title_label"

public let TASK_BUTTON_LABEL = "task_button_label"

fileprivate var localizeList = [String: String]()

public func localize(id: String) -> String {
    return localizeList[id] ?? "Undefined"
}

public func setAppLang() {
    guard let code = Locale.preferredLanguages.first else { parse(language: "en"); return }
    if code.hasPrefix("ru") {
        parse(language: "ru")
    } else if code.hasPrefix("en") {
        parse(language: "en")
    } else {
        parse(language: "en")
    }
}

fileprivate func parse(language: String) {
    guard let path = Bundle.main.path(forResource: "lang_" + language, ofType: ".json") else { return }
    do {
        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
        let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
        if let localize = jsonResult as? [String: String] {
            localizeList = localize
        }
    } catch {}
    
}
