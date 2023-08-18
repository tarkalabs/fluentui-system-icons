xcodebuild archive \
    -project FluentIcons.xcodeproj \
    -scheme FluentIcons \
    -destination "generic/platform=iOS" \
    -archivePath "archives/FluentIcons-iOS" 

xcodebuild archive \
    -project FluentIcons.xcodeproj \
    -scheme FluentIcons \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "archives/FluentIcons-iOS_Simulator" 

xcodebuild -create-xcframework \
    -archive archives/FluentIcons-iOS.xcarchive -framework FluentIcons.framework \
    -archive archives/FluentIcons-iOS_Simulator.xcarchive -framework FluentIcons.framework \
    -output archives/FluentIcons.xcframework
