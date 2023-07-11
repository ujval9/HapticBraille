//
//  File.swift
//  
//
//  Created by Ujval Shah on 11/04/23.
//


import UIKit

//It is use to determine the Ui type so accordingly for Ipad we can use side bar and for iphone TabView

extension UIDevice {
  
  static var idiom: UIUserInterfaceIdiom {
    UIDevice.current.userInterfaceIdiom
  }
  
  static var isIpad: Bool {
    idiom == .pad
  }
  
  static var isiPhone: Bool {
    idiom == .phone
  }
}
