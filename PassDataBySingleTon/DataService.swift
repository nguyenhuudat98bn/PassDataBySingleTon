//
//  DataService.swift
//  PassDataBySingleTon
//
//  Created by nguyễn hữu đạt on 5/10/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import Foundation

class DataService {
    
    static let shared : DataService = DataService()
    private var _numbers : [Int]?
    var numbers : [Int] {
        get {
            if _numbers == nil {
                getNumber()
            }
            return _numbers ?? []
        }
        set {
            _numbers = newValue
        }
    }
    
    private func getNumber() {
        _numbers = []
        _numbers = [Int](1...10)
    }
    func insertNumber(from number: Int) {
        _numbers?.append(number)
    }
    func removeData(from index: IndexPath) {
        _numbers?.remove(at: index.row)
        
    }
}
