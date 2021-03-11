import Foundation

struct IOSMVCCollectionStoryboardTemplate: StoryboardTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc_collection.name + "/ViewController/" }
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
        <!--View Controller-->
        <scene sceneID="tne-QT-ifu">
            <objects>
                <viewController id="BYZ-38-t0r" customClass="\(Const.prefix)ViewController" customModule="\(Const.targetName)" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <collectionView clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="scaleToFill" dataMode="prototypes" translatesAutoresizingMaskIntoConstraints="NO" id="rK5-yg-3G0">
                                <rect key="frame" x="0.0" y="44" width="414" height="818"/>
                                <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                                <collectionViewFlowLayout key="collectionViewLayout" automaticEstimatedItemSize="YES" minimumLineSpacing="10" minimumInteritemSpacing="10" id="E2f-sV-nwY">
                                    <size key="itemSize" width="128" height="128"/>
                                    <size key="headerReferenceSize" width="0.0" height="0.0"/>
                                    <size key="footerReferenceSize" width="0.0" height="0.0"/>
                                    <inset key="sectionInset" minX="0.0" minY="0.0" maxX="0.0" maxY="0.0"/>
                                </collectionViewFlowLayout>
                                <cells/>
                                <connections>
                                    <outlet property="dataSource" destination="BYZ-38-t0r" id="asj-1t-8HN"/>
                                    <outlet property="delegate" destination="BYZ-38-t0r" id="yXY-1t-DAl"/>
                                </connections>
                            </collectionView>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="6Tk-OE-BBY"/>
                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                        <constraints>
                            <constraint firstItem="rK5-yg-3G0" firstAttribute="top" secondItem="6Tk-OE-BBY" secondAttribute="top" id="ItX-Wd-qRG"/>
                            <constraint firstItem="6Tk-OE-BBY" firstAttribute="trailing" secondItem="rK5-yg-3G0" secondAttribute="trailing" id="SpE-FH-Nx0"/>
                            <constraint firstItem="rK5-yg-3G0" firstAttribute="leading" secondItem="6Tk-OE-BBY" secondAttribute="leading" id="wEh-O0-lod"/>
                            <constraint firstItem="6Tk-OE-BBY" firstAttribute="bottom" secondItem="rK5-yg-3G0" secondAttribute="bottom" id="zNO-Hw-2Y1"/>
                        </constraints>
                    </view>
                    <connections>
                        <outlet property="collectionView" destination="rK5-yg-3G0" id="36H-TK-xOv"/>
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
