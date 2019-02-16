// Get the text, hopefully separated by \n and grouped together by spaces.
let resultText = result.text
let resultArray = result.characters.split{$0 == "\n"}.map(String.init)
let size = resultArray.count
let i = 0

// Make an empty dictionary to store the positions of words in ((x0, y0),(x1, y1)),word format
var word_positions: Dictionary<((Integer, Integer), (Integer, Integer)), String> = [((,),(,)):]

// The current_word will be slowly built up symbol by symbol until it becomes a full 'word'
let current_word = ""
let x0 = UInt8.max
let y0 = UInt8.max
let x1 = UInt8.min
let y1 = Unit8.min
for block in result.blocks {
    for paragraph in block.paragraphs {
        for word in paragraph.words {
            for symbol in word.symbols {
                // add to the current word
                current_word += symbol.text
                // increase the rectangle selected for this word
                x0 = min(x0, symbol.cornerPoints[0][0])
                y0 = min(y0, symbol.cornerPoints[0][1])
                x1 = max(x1, symbol.cornerPoints[3][0])
                y1 = min(y1, symbol.cornerPoints[3][1])
                // check for if you have completed the word
                if resultArray[i] == current_word.replacingOccurrences(of: " ", with: "") {
                    // finalize the current_word
                    word_positions[((x0, y0), (x0, y0))] = current_word
                    current_word = ""
                    i += 1
                }
            }
        }
    }
}
