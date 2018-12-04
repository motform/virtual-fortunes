// virtual-foruntes k-space shamanism inc
//
// Astaral interpretation by motform(.org) | GPL-3
// In memory of Mark Fisher, 1968—2017

import Utility
import Foundation

let parser    = ArgumentParser(usage: "<options> [path]", overview: "maximum slogan density")
let context   = parser.add(option: "--context", shortName: "-c", kind: Bool.self, usage: nil, completion: nil)
let path      = parser.add(positional: "path", kind: [String].self, optional: true, usage: nil, completion: nil)
let arguments = Array(CommandLine.arguments.dropFirst())

do {
	let result = try parser.parse(arguments) // Parse arguments
	var fortuneJar: String?

	// handle cases with argument jars, envVar jars and no Jar
	if let path = result.get(path) {  // Honor input arguments
		fortuneJar = try openJar(pathToJar: path.first!)
	} else if let envJar = ProcessInfo.processInfo.environment["FORTUNES_FILE"] {
		fortuneJar = try openJar(pathToJar: envJar)
	} else {
		print("No Cooike Jar found. Make sure FORTUNE_FILE is a valid environment variable.")
		exit(-1)
	}

	let parsedJar = parseJar(jar: fortuneJar)
	if let c = result.get(context), c {
		tellFortune(parsedJar: parsedJar, context: true)
	} else {
		tellFortune(parsedJar: parsedJar, context: false)
	}
}
catch {
	print(error)
}
