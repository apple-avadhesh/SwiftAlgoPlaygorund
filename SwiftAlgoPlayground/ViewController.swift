//
//  ViewController.swift
//  SwiftAlgoPlayground
//
//  Created by PC Gamer on 26/10/20.
//

import UIKit
import Algorithms

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkIndexed()
    }
    
    //MARK: Test Algo
    func checkCombinations() {
        let nums = [1, 2, 3, 30, 40]
        for combo in nums.combinations(ofCount: 2) {
            print(combo)
        }
    }
    
    func checkPermutations() {
        let nums = [1, 2, 3]
        for permutation in nums.permutations() {
            print(permutation)
        }
    }
    
    func checkRotate() {
        var nums = [1, 2, 3, 4, 5, 6]
        let index = nums.rotate(toStartAt: 2)
        print(nums)
        print(index)
    }
    
    func checkChain() {
        let nums = chain([1, 2, 3], 4...10)
        print(Array(nums))
        let name = chain("avadhesh", " sharma")
        print(String(name))
    }
    
    func checkProduct() {
        let devices = ["iPad", "iPhone", "Macbook", "MacMini"]
        for (year, device) in product(2018...2020, devices) {
            print(year, device)
        }
    }
    
    func checkCycle() {
        
        //MARK: Infinite
        for (odd, n) in zip([true, false].cycled(), 1...) {
            print(odd, n)
        }
        
        //MARK: Specify number of times
        for x in (1...3).cycled(times: 3) {
            print(x)
        }
    }
    
    func checkSampling() {
        let source = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        
        print(Array(source.randomSample(count: 5)))
        //Output: [6, 2, 4, 7, 9]
        
        print(Array(source.randomStableSample(count: 5)))
        //Output: [6, 2, 4, 7, 9]
    }
    
    func checkUnique() {
        let nums = [1, 2, 3, 6, 6, 5, 3, 2, 3, 3, 2, 2, 2, 1]
        let unique = nums.uniqued()
        print(unique)
        
        //Output:  [1, 2, 3, 6, 5]
    }
    
    func checkChunked() {
        let numbers = [10, 20, 30, 10, 40, 40, 10, 20]
        let chunks = numbers.chunked(by: { $0 <= $1 })
        
        for slice in chunks {
            print(Array(slice))
        }
    }
    
    func checkChunkedOn() {
        let names = ["Vishal", "Viral", "Avadhesh", "Harry", "James", "Apex" ]
        let group = names.chunked(on: \.first!)
        
        for slice in group {
            print(Array(slice))
        }
    }
    
    func checkIndexed() {
        let numbers = [10, 20, 30, 40, 50]
        var matchingIndices: Set<Int> = []
        for (i, n) in numbers.indexed() {
            if n.isMultiple(of: 20) {
                matchingIndices.insert(i)
            }
        }
        print(matchingIndices)
    }
}

