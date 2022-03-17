import UIKit
import TKCPAnimal

public class TKCPDog: NSObject {
    public static func intro() -> String {
        return TKCPAnimal.intro() + " : " + "Dog"
    }
}
