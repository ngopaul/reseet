//
//  ViewController.swift
//  reSEEt
//
//  Created by Caleb Kuo on 2/16/19.
//  Copyright © 2019 Caleb Kuo. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var testView: UIView!
    /// Firebase vision instance.
    // [START init_vision]
    // lazy var vision = Vision.vision()
    // [END init_vision]

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func chooseImage(_ sender: Any) {
        print("entered chooseimage")
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
            
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)

                
            } else {
                print("camera not available")
            }

        }))
        
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)

            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        
        self.present(actionSheet, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        print("imageset")
        imageView.image = image
        cloudstuff(image: image)

        
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func cloudstuff(image: UIImage) {
        print("entered cloudstuff")
        let vision = Vision.vision()
        print("vision dec")
        let textRecognizer = vision.cloudTextRecognizer()
        print("textrec dec")
        let viImage = VisionImage(image: image)
        print("viImage instantiated")
        
        textRecognizer.process(viImage) { result, error in
            guard error == nil, let result = result else {
//                let errorString = error?.localizedDescription ?? Constants.detectionNoResultsMessage
//                self.resultsText = "Text recognizer failed with error: \(errorString)"
//                self.showResults()
                // ...
                print("here")
                return
            }
            print("in here")
            // Recognized text
            
            
            let resultText = result.text
            //print("result.txt: " + result.text)
            for block in result.blocks {
                //print("inblcok loop")
                let blockText = block.text
                print("block: " + blockText)
                let blockConfidence = block.confidence
                let blockLanguages = block.recognizedLanguages
                let blockCornerPoints = block.cornerPoints
                //print(blockCornerPoints[0])
                let blockFrame = block.frame
                print(blockFrame)
                //let myBox  = [[UIView alloc] initWithFrame:CGRectMake(180, 35, 10, 10)]
                //let myView = UIView(frame: blockFrame)
                //myView.backgroundColor = UIColor.gray
                //myView.draw(blockFrame)
                
                
                
                //self.testView.backgroundColor = UIColor.gray
                //self.testView.draw(blockFrame)
                
                self.testView.frame = blockFrame
                //self.testView.setNeedsDisplay()
                
                
                //self.view
                //[self.view addSubview:myBox]
                for line in block.lines {
                    let lineText = line.text
                    let lineConfidence = line.confidence
                    let lineLanguages = line.recognizedLanguages
                    let lineCornerPoints = line.cornerPoints
                    let lineFrame = line.frame
                    for element in line.elements {
                        let elementText = element.text
                        let elementConfidence = element.confidence
                        let elementLanguages = element.recognizedLanguages
                        let elementCornerPoints = element.cornerPoints
                        let elementFrame = element.frame
                    }
                }
            }
            
            
            // Get the text, hopefully separated by \n and grouped together by spaces.
            // let resultText = result.text
//            let resultArray = resultText.characters.split{$0 == "\n"}.map(String.init)
//            let size = resultArray.count
//            var i = 0
//
//            // Make an empty dictionary to store the positions of words in ((x0, y0),(x1, y1)),word format
//            var word_positions : Array<(((IntegerLiteralType, IntegerLiteralType),(IntegerLiteralType, IntegerLiteralType)), String)> = []
//
//            // The current_word will be slowly built up symbol by symbol until it becomes a full 'word'
//            var current_word = ""
//            var x0 = 99999999
//            var y0 = 99999999
//            var x1 = -99999999
//            var y1 = -99999999
//            for block in result.blocks {
//                for line in block.lines {
//                    for symbol in line.elements {
//                        // add to the current word
//                        current_word += symbol.text
//                        // increase the rectangle selected for this word
//                        x0 = min(x0, symbol.cornerPoints[0][0])
//                        y0 = min(y0, symbol.cornerPoints[0][1])
//                        x1 = max(x1, symbol.cornerPoints[3][0])
//                        y1 = min(y1, symbol.cornerPoints[3][1])
//                        // check for if you have completed the word
//                        if resultArray[i] == current_word.replacingOccurrences(of: " ", with: "") {
//                            // finalize the current_word
//                            word_positions[i] = [((x0, y0), (x0, y0)), current_word]
//                            current_word = ""
//                            i += 1
//                        }
//                    }
//                }
//            }
//
//
//
//
//
            
        }
        print("outside text rec")
        

    }
    
    
}





