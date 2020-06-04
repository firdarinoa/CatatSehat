//
//  HomeViewController.swift
//  CatatSehat
//
//  Created by Firda Sahidi on 04/06/20.
//  Copyright (c) 2020 Firda Sahidi. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import HealthKit
import HealthKitUI

class HomeViewController: UIViewController {
    private(set) var viewModel: HomeViewModel!
    fileprivate var router: HomeRouter!
    fileprivate let disposeBag = DisposeBag()
    let healthManager:HealthKitManager = HealthKitManager()
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var stepsLabel: UILabel!
    @IBOutlet weak var addCaloriesLabel: UILabel!
    @IBOutlet weak var addWeightLabel: UILabel!
    @IBOutlet weak var addStepsLabel: UILabel!
    
    
    init(withViewModel viewModel: HomeViewModel, router: HomeRouter) {
        self.viewModel = viewModel
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    func load(withViewModel viewModel: HomeViewModel, router: HomeRouter) {
        self.viewModel = viewModel
        self.router = router
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupLayout()
        setupRx()
    }
}

// MARK: Setup
private extension HomeViewController {
    func readDataFromHealthKit() {
        guard   let dateOfBirth = HKObjectType.characteristicType(forIdentifier: .dateOfBirth),
        let bloodType = HKObjectType.characteristicType(forIdentifier: .bloodType),
        let biologicalSex = HKObjectType.characteristicType(forIdentifier: .biologicalSex),
        let bodyMassIndex = HKObjectType.quantityType(forIdentifier: .bodyMassIndex),
        let height = HKObjectType.quantityType(forIdentifier: .height),
        let bodyMass = HKObjectType.quantityType(forIdentifier: .bodyMass),
        let activeEnergy = HKObjectType.quantityType(forIdentifier: .activeEnergyBurned) else {
        return
            
        }
    }
    
    func setupViews() {
        
    }

    func setupLayout() {
    
    }

    func setupRx() {
    
    }
}
