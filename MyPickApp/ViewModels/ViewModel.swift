//
//  ViewModel.swift
//  MyPickApp
//
//  Created by Holly McBride on 21/02/2023.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
    
    @Published var list = [Services]()
    
    func getData(){
        
        //get ref to database
        let db = Firestore.firestore()
        
        //read thet documents at a specific path
        db.collection("services").getDocuments { snapshot, error in
            
            //check for errors
            if error == nil {
                // no error
                
                if let snapshot = snapshot {
                    
                    //update the list property in the main thread
                    DispatchQueue.main.async {
                    
                    
                    // get all the documents and create services
                        self.list = snapshot.documents.map { d in
                            
                            //create a service iteam for each doc returned
                            return Services(id: d.documentID,
                                            name: d["name"] as? String ?? "")
                        }
                    }
                }
            }
            else {
                // handle the error
            }
        }
        
    }
}
