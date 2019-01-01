//
//  ViewController.swift
//  BookTracker
//
//  Created by Casey Stalnaker on 12/29/18.
//  Copyright © 2018 Casey Stalnaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //MARK : properties
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        photoImageView.isUserInteractionEnabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK : UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        bookNameLabel.text = textField.text
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let selectedImage = info [UIImagePickerController.InfoKey.originalImage] as! UIImage
        photoImageView.image = selectedImage
        
        // dismiss the picker
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // dismiss the picker
        dismiss(animated: true, completion: nil)
    }
    
    
    //MARK : Actions
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        print("Image Selected")
        nameTextField.resignFirstResponder()
        let imagePickerContoller = UIImagePickerController()
        // Only allow photos to be picked, not taken
        imagePickerContoller.sourceType = .photoLibrary
        imagePickerContoller.delegate = self
        present(imagePickerContoller, animated:true, completion: nil)
        
    }
    
    @IBAction func setDefaultText(_ sender: UIButton) {
        bookNameLabel.text = "TEST"
    }
    
    
}

