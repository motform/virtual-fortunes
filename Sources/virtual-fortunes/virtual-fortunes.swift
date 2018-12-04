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
	var parsedJar = jar.components(separatedBy: "\n%\n")
	parsedJar.removeLast()  //if you correctly finish your file with a %, there should be an empty slot
	return parsedJar
}

func tellFortune(parsedJar: [String], context: Bool) {
	/* Tells a random fortune from the parsed jar */
	if let fortune = parsedJar.randomElement() {
		if context {
			print(fortune)
		} else {
			let fortuneWithoutContext = fortune.components(separatedBy: "\"")
			print(fortuneWithoutContext[1])
		}
	} else {  // change into a do-catch error type situation?
		print("Cookie jar is empty!")
	}
}

