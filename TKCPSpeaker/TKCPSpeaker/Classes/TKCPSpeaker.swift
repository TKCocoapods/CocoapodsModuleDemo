//
//  TKCPSpeaker.swift
//  Pods-TKCPSpeaker_Example
//
//  Created by ZhengXianda on 2022/3/9.
//

import UIKit
import TKCPHuman

public class TKCPSpeaker: NSObject {
    public static func intro() -> String {
        return TKCPHuman.intro() + " : " + "Speaker"
    }
}
