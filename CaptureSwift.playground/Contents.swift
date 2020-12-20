import UIKit

// Capture List
// There are 3 types - strong, weak, and unowned
// capture values
// To avoid strong reference cycles


// Strong Capturing - values inside closure will never get destroyed

// Weak Capturing
// Unlike strong, the values inside is destroyed and set to nil
// the return value is always optional either contain a value or they don't

// unowned capturing
// its like implicitly unwrapping optional and need to be used carefully as they return nil
//

class Singer {
    func playSong() {
        print("hmm......")
    }
}

func sing() -> () -> Void {
    let eminem = Singer()
    let singing = {
        eminem.playSong()
        return
    }
    
    // weak capturing
    let singingWeak = { [weak eminem] in
        eminem?.playSong()
        return
    }
    
    // unowned capturing
    let singingUnowned = { [unowned eminem] in
        eminem.playSong()
        return
    }
    
    return singing
//    return singingWeak
//    return singingUnowned
}

let singFunction = sing()
singFunction()


