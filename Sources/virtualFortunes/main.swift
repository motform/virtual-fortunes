// virtual-foruntes k-space shamanism inc
//
// Astaral interpretation by Motform(.org) | GPL-3
// In memory of Mark Fisher, 1968—2017

let fortuneJar = try openJar(pathToJar: "Fortunes/ccru-fortunes")
let parsedJar = parseJar(jar: fortuneJar)
tellFortune(jar: parsedJar)

