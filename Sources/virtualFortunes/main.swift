// virtual-foruntes k-space shamanism inc
//
// Astaral interpretation by motform(.org) | GPL-3
// In memory of Mark Fisher, 1968—2017

import Utility
import Foundation

let parser = ArgumentParser(usage: "<options> [path]", overview: "maximum slogan density")

// let capitalize = parser.add(option: "--capitalize", shortName: "-c", kind: Bool.self, usage: nil, completion: nil)
let path = parser.add(positional: "path", kind: [String].self, optional: true, usage: nil, completion: nil)

let arguments = Array(CommandLine.arguments.dropFirst())
do {
	let result = try parser.parse(arguments) // Parse arguments
	var fortuneJar: String?

	if let path = result.get(path) {  // Prefer input arguments
		fortuneJar = try openJar(pathToJar: path.first!)
	} else if let envJar = ProcessInfo.processInfo.environment["FORTUNE_FILE"] {
		fortuneJar = try openJar(pathToJar: envJar)
	} else {
		print("Not Cooike Jar found. Make sure FORTUNE_FILE is a valid environment variable.")
		exit(-1)
	}
	let parsedJar = parseJar(jar: fortuneJar)
	tellFortune(parsedJar: parsedJar)
}
catch {
	print(error)
}
