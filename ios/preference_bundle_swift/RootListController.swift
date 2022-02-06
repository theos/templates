import UIKit

class RootListController: PSListController {

	override var specifiers: NSMutableArray? {
		get {
			if value(forKey: "_specifiers") == nil {
				self.specifiers = loadSpecifiers(fromPlistName: "Root", target: self)
			}
			return value(forKey: "_specifiers") as? NSMutableArray
		}

		set {
			super.specifiers = newValue
		}
	}

}
