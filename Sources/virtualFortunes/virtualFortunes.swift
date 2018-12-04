import Foundation

func openJar(pathToJar: String) throws -> String? {
	/* Hopefully safe opening of a cookie jar */
	do {
		let cookieJar = try NSString(contentsOfFile: pathToJar, encoding: String.Encoding.utf8.rawValue)
		return String(cookieJar)
	}
	catch let error as NSError {
		print("K-space implotion, fatal outcome: \(error)")
		throw error
	}
}

func parseJar(jar: String!) -> [String] {
	/* Parses a cooike jar */
	// TODO
	// * a better handling of optionals
	// * return error if unable to parse jar
	return jar.components(separatedBy: "\n%\n")
}

func tellFortune(parsedJar: [String]) {
	/* Tells a random fortune from the parsed jar */
	if let fortune = parsedJar.randomElement() {
		print(fortune)
	} else {  // change into a do-catch error type situation?
		print("Cookie jar is empty!")
	}
}

