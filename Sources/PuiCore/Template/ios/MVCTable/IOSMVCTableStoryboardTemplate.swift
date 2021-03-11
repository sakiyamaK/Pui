import Foundation

struct IOSMVCTableStoryboardTemplate: StoryboardTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc_table.name + "/ViewController/" }
  var code: String {
"""
<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="17701" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES" initialViewController="BYZ-38-t0r">
    <device id="retina6_1" orientation="portrait" appearance="light"/>
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="17703"/>
        <capability name="Safe area layout guides" minToolsVersion="9.0"/>
        <capability name="System colors in document resources" minToolsVersion="11.0"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
        <scene sceneID="tne-QT-ifu">
            <objects>
                <viewController id="BYZ-38-t0r" customClass="\(Const.prefix)ViewController" customModule="\(Const.targetName)" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <tableView hidden="YES" clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="-1" estimatedRowHeight="-1" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="Pyr-fn-V2N">
                                <rect key="frame" x="0.0" y="44" width="414" height="818"/>
                                <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                                <connections>
                                    <outlet property="dataSource" destination="BYZ-38-t0r" id="lCM-mw-pSm"/>
                                    <outlet property="delegate" destination="BYZ-38-t0r" id="W9b-zL-np1"/>
                                </connections>
                            </tableView>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="6Tk-OE-BBY"/>
                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                        <constraints>
                            <constraint firstItem="6Tk-OE-BBY" firstAttribute="trailing" secondItem="Pyr-fn-V2N" secondAttribute="trailing" id="QaZ-Du-J5D"/>
                            <constraint firstItem="Pyr-fn-V2N" firstAttribute="leading" secondItem="6Tk-OE-BBY" secondAttribute="leading" id="TGG-j6-1uO"/>
                            <constraint firstItem="6Tk-OE-BBY" firstAttribute="bottom" secondItem="Pyr-fn-V2N" secondAttribute="bottom" id="Ufa-mb-UTf"/>
                            <constraint firstItem="Pyr-fn-V2N" firstAttribute="top" secondItem="6Tk-OE-BBY" secondAttribute="top" id="hR4-aB-e8I"/>
                        </constraints>
                    </view>
                    <connections>
                        <outlet property="tableView" destination="Pyr-fn-V2N" id="P2O-Bf-PVN"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="139" y="138"/>
        </scene>
    </scenes>
    <resources>
        <systemColor name="systemBackgroundColor">
            <color white="1" alpha="1" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
        </systemColor>
    </resources>
</document>
"""
  } 
}
