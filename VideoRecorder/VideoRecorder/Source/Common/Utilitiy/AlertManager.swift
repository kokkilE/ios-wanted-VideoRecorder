//
//  AlertManager.swift
//  VideoRecorder
//
//  Created by 조향래 on 2023/06/09.
//

import UIKit

struct AlertManager {
    func createSaveVideoAlert(_ completion: @escaping (String) -> ()) -> UIAlertController {
        let alertController = UIAlertController(title: "다음 이름으로 저장", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "파일명을 입력하세요."
        }
        
        let confirmAction = UIAlertAction(title: "저장", style: .default) { _ in
            if let textFields = alertController.textFields,
               let textField = textFields.first,
               let text = textField.text {
                completion(text)
            }
        }
        
        alertController.addAction(confirmAction)
        
        return alertController
    }
}