import Foundation

// safe opening of cookie jar
func openJar(pathToJar: String) throws -> String? {
	do {
		let cookieJar = try NSString(contentsOfFile: pathToJar, encoding: String.Encoding.utf8.rawValue)
		return String(cookieJar)
	}
	catch let error as NSError {
		print("K-space implotion, fatal outcome: \(error)")
		throw error
	}
}

// parse the jar the simple way
// TODO: a better handling of optionals
func parseJar(jar: String!) -> [String] {
	return jar.components(separatedBy: "\n%\n")
}

// tell a random fortune from the parsed jar
func tellFortune(jar: [String]) {
	if let fortune = jar.randomElement() {
		print(fortune)
	} else {  // change into a do-catch error type situation?
		print("Cookie jar is empty!")
	}
}

