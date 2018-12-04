import Foundation

func openFile(path: String) throws -> String? {
	do {
		let content = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
		return String(content)
	}
	catch let error as NSError {
		print("K-space implotion, fatal outcome: \(error)")
		throw error
	}
}

func parseJar(jar: String!) -> [String] {
	var parsedContents = [String]()
	var tempString = ""

	for character in jar {
		if character == "%" {
			parsedContents.append(tempString)
			tempString = ""
		} else if character == "\n" {
			// TODO: pass only on leading newline
		} else {
			tempString += String(character)
		}
	}
	return parsedContents
}

func tellFortune(jar: [String]) {
	if let fortune = jar.randomElement() {
		print(fortune)
	} else {
		print("Cookie jar is empty!")
	}
}

let ccruFortunes = try openFile(path: "Fortunes/ccru-fortunes")
let parsedJar = parseJar(jar: ccruFortunes)
tellFortune(jar: parsedJar)
