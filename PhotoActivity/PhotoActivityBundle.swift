//
//  PhotoActivityBundle.swift
//  PhotoActivity
//
//  Created by Jimmy Liu on 2024/10/28.
//

import WidgetKit
import SwiftUI

@main
struct PhotoActivityBundle: WidgetBundle {
    var body: some Widget {
        PhotoActivity()
        PhotoActivityLiveActivity()
    }
}
