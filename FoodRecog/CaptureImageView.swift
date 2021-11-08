//
//  CaptureImageView.swift
//  FoodRecog
//
//  Created by xdeveloper on 8/11/2021.
//

import SwiftUI
import UIKit

struct CaptureImageView {
    
    /// MARK: - Properties
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
}

extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .camera  //comment out this line to enable previews for content view
        //above line enables camera for device
        
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<CaptureImageView>) {
        
    }
}

//struct CaptureImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        CaptureImageView()
//    }
//}
