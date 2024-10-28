//
//  PhotoActivityLiveActivity.swift
//  PhotoActivity
//
//  Created by Jimmy Liu on 2024/10/28.
//

import ActivityKit
import WidgetKit
import SwiftUI


struct PhotoActivityLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: PhotoActivityAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension PhotoActivityAttributes {
    fileprivate static var preview: PhotoActivityAttributes {
        PhotoActivityAttributes(name: "World")
    }
}

extension PhotoActivityAttributes.ContentState {
    fileprivate static var smiley: PhotoActivityAttributes.ContentState {
        PhotoActivityAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: PhotoActivityAttributes.ContentState {
         PhotoActivityAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: PhotoActivityAttributes.preview) {
   PhotoActivityLiveActivity()
} contentStates: {
    PhotoActivityAttributes.ContentState.smiley
    PhotoActivityAttributes.ContentState.starEyes
}
