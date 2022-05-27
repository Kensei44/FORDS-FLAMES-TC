//
//  PicViewController.swift
//  FORDS FLAMES TC
//
//  Created by  on 5/27/22.
//

import UIKit
class PhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {


@IBOutlet weak var ImageDisplay: UIImageView!
@IBOutlet weak var libraryOutlet: UIButton!
@IBOutlet weak var cameraOutlet: UIButton!


override func viewDidLoad() {
    super.viewDidLoad()
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}

@IBAction func openCameraButton(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)

    }

@IBAction func openLibraryButton(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }

func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    dismiss(animated: true, completion: nil)
}
