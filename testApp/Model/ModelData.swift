//
//  ModelData.swift
//  testApp
//
//  Created by 이유리 on 2023/03/21.
//

import Foundation

var landmarks : [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("main bundle 에서 \(filename)을 찾을 수 없습니다.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("main bundle 에 있는 \(filename)를 열 수 없습니다. 에러메세지 : \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("\(filename)을 \(T.self)로 파싱할 수 없습니다. 에러메세지 : \n\(error)")
    }
}
