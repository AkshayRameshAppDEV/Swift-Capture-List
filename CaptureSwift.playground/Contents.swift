import UIKit

// Capture List
// There are 3 types - strong, weak, and unowned
// capture values
// To avoid strong reference cycles


// Strong Capturing - values inside closure will never get destroyed
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
    return singing
}

let singFunction = sing()
singFunction()
