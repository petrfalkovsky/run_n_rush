//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import connectivity_plus
import device_info_plus_macos
import file_selector_macos
import mobile_scanner
import package_info
import path_provider_foundation
import shared_preferences_foundation
import sqflite
import url_launcher_macos

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  ConnectivityPlugin.register(with: registry.registrar(forPlugin: "ConnectivityPlugin"))
  DeviceInfoPlusMacosPlugin.register(with: registry.registrar(forPlugin: "DeviceInfoPlusMacosPlugin"))
  FileSelectorPlugin.register(with: registry.registrar(forPlugin: "FileSelectorPlugin"))
  MobileScannerPlugin.register(with: registry.registrar(forPlugin: "MobileScannerPlugin"))
  FLTPackageInfoPlugin.register(with: registry.registrar(forPlugin: "FLTPackageInfoPlugin"))
  PathProviderPlugin.register(with: registry.registrar(forPlugin: "PathProviderPlugin"))
  SharedPreferencesPlugin.register(with: registry.registrar(forPlugin: "SharedPreferencesPlugin"))
  SqflitePlugin.register(with: registry.registrar(forPlugin: "SqflitePlugin"))
  UrlLauncherPlugin.register(with: registry.registrar(forPlugin: "UrlLauncherPlugin"))
}
