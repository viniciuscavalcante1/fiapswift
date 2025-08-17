import UIKit

class File {
    let name: String
    let ext: String
    let size: Double
    init(aName: String, anExt: String, aSize: Double) {
        name = aName
        ext = anExt
        size = aSize
    }
}

// Here we have two protocols: playable and sizeable. Both forces classes that implements them to follow their
// rigit rules: implement their class methods and properties, with the same type and that can be get and set.
// Protocols, as known as interfaces, they doesn't really define what their properties and methods are, but
// they just make their sign. The task to give them meaning is responsibility of the type that will implement the protocol.
// For instance, a mp3 can implement play function very different than a mov. Protocols are always inserted after super class,
// separated by comma.

protocol Sizeable {
    var width: Int { get set }
    var height: Int { get set }
}

protocol Playable {
    var duration: Double { get set }
    func play()
    func stop()
}

class Gif: File, Sizeable {
    var width: Int
    var height: Int
    var animated: Bool
    init(aName: String, aSize: Double, isAnimated: Bool, aWidth: Int, aHeight: Int) {
        width = aWidth
        height = aHeight
        animated = isAnimated
        super.init(aName: aName, anExt: "gif", aSize: aSize)
    }
}

class Png: File, Sizeable {
    var width: Int
    var height: Int
    init(aName: String, aSize: Double, aWidth: Int, aHeight: Int) {
        width = aWidth
        height = aHeight
        super.init(aName: aName, anExt: "png", aSize: aSize)
    }
}

class Mov: File, Sizeable, Playable {
    var width: Int
    var height: Int
    var duration: Double
    
    func play() {
        print("Vídeo está tocando")
    }
    
    func stop() {
        print("Vídeo está parado")
    }
    
    init(aName: String, aSize: Double, aWidth: Int, aHeight: Int, aDuration: Double) {
        width = aWidth
        height = aHeight
        duration = aDuration
        super.init(aName: aName, anExt: "mov", aSize: aSize)
    }
}

class Mp3: File, Playable {
    var duration: Double
    
    func play() {
        print("O som está tocando")
    }
    
    func stop() {
        print("O som está parado")
    }
    
    init(aName: String, aSize: Double, aDuration: Double) {
        duration = aDuration
        super.init(aName: aName, anExt: "mp3", aSize: aSize)
    }
}

// Type casting    
var gifFile = Gif(aName: "foto", aSize: 500, isAnimated: true, aWidth: 500, aHeight: 500)
var pngFile = Png(aName: "foto", aSize: 500, aWidth: 500, aHeight: 500)
var movFile = Mov(aName: "video", aSize: 500, aWidth: 500, aHeight: 500, aDuration: 3)
var mp3File = Mp3(aName: "musica", aSize: 500, aDuration: 3)

let files = [gifFile, pngFile, movFile, mp3File]

// Iterating through array to see if the file is playable.
// If its the case, we are going to play it. In order to do that, we first need to cast it to Playable
// and then call play method.
for file in files {
    
    // Here we can see if file is playable with reserved word is
    if file is Playable {
        print("\(file) \(file.name).\(file.ext) é playable")
        
        // We cant simple call file.play() because file is File type, not Playable yet.
        // And File dont have play method. So, we must cast it as a Playable with type casting!
        (file as! Playable).play()
    }
}



