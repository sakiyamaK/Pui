//
//  BuilderTemplate.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation

struct MVCViewTemplate: Template {
  var supportFileName: String { Const.prefix + "View.xib"}

  var supportFile: String {
"""
<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.XIB" version="3.0" toolsVersion="16097.2" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES">
    <device id="retina6_1" orientation="portrait" appearance="light"/>
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="16087"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <objects>
        <placeholder placeholderIdentifier="IBFilesOwner" id="-1" userLabel="File's Owner"/>
        <placeholder placeholderIdentifier="IBFirstResponder" id="-2" customClass="UIResponder"/>
        <view contentMode="scaleToFill" insetsLayoutMarginsFromSafeArea="NO" id="3vI-fx-tF5" customClass="\(Const.prefix)View" customModule="\(Const.prefix)Module" customModuleProvider="target">
            <rect key="frame" x="0.0" y="0.0" width="414" height="455"/>
            <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
            <color key="backgroundColor" systemColor="systemBackgroundColor" cocoaTouchSystemColor="whiteColor"/>
            <freeformSimulatedSizeMetrics key="simulatedDestinationMetrics"/>
            <point key="canvasLocation" x="63.768115942028992" y="176.45089285714286"/>
        </view>
    </objects>
</document>

"""
  }

  var codeFileName: String { Const.prefix + "View.swift" }

  var code: String {
"""
import UIKit

final class \(Const.prefix)View: UIView {
}
"""
  }


}
