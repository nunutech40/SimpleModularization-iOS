//
//  AppApp.swift
//  App
//
//  Created by Nunu Nugraha on 04/09/25.
//

import SwiftUI

@main
struct AppApp: App {
    
    init () {
        UIFont.loadFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension UIFont {
    private static func registerFonts(withName name: String, fileExtension: String) {
        let frameworkBundle = Bundle(identifier: "com.dicoding.Common")
        let pathForResourceString = frameworkBundle?.path(forResource: name, ofType: fileExtension)!
        let fontData = NSData(contentsOfFile: pathForResourceString!)
        let dataProvider = CGDataProvider(data: fontData!)
        let fontRef = CGFont(dataProvider!)
        var errorRef: Unmanaged<CFError>? = nil
        
        if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
            print("Error registering font")
        }
    }
    
    public static func loadFonts() {
        registerFonts(withName: "PlusJakartaSans-Bold", fileExtension: "ttf")
        registerFonts(withName: "PlusJakartaSans-BoldItalic", fileExtension: "ttf")
        registerFonts(withName: "Bangers-Regular", fileExtension: "ttf")
    }
}
