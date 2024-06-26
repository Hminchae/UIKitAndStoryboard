//
//  NewAndHotViewController.swift
//  Netflix
//
//  Created by 황민채 on 5/16/24.
//

import UIKit

class NewAndHotViewController: UIViewController {

    
    @IBOutlet weak var newAndHotTitleLabel: UILabel!
    
    @IBOutlet weak var searchTextFieldBackground: UIView!
    @IBOutlet weak var searchTextFieldIcon: UIImageView!
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var newAndHotFirstButton: UIButton!
    @IBOutlet weak var newAndHotSecondButton: UIButton!
    @IBOutlet weak var newAndHotThirdButton: UIButton!
    
    @IBOutlet weak var newAndHotMainLabel: UILabel!
    @IBOutlet weak var newAndHotSubLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newAndHotTitleLabel.text = "NEW & HOT 검색"
        newAndHotTitleLabel.font = .systemFont(ofSize: 24, weight: .heavy)
        
        searchTextFieldIcon.image = UIImage(systemName: "magnifyingglass")
        searchTextFieldIcon.tintColor = .lightGray
        
        searchTextFieldBackground.layer.cornerRadius = 8
        searchTextFieldBackground.layer.backgroundColor = UIColor.darkGray.cgColor
        
        searchTextField.placeholder = "게임, 시리즈, 영화를 검색하세요..."
        searchTextField.textColor = .white
        searchTextField.backgroundColor = .clear
        searchTextField.borderStyle = .none
        
        newAndHotFirstButton.cornerRadius = 15
        newAndHotFirstButton.setImage(UIImage(named: "blue"), for: .normal)
        newAndHotFirstButton.setTitle("공개예정", for: .normal)
        
        newAndHotSecondButton.cornerRadius = 15
        newAndHotSecondButton.setImage(UIImage(named: "turquoise"), for: .normal)
        newAndHotSecondButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        
        newAndHotThirdButton.cornerRadius = 15
        newAndHotThirdButton.setImage(UIImage(named: "pink"), for: .normal)
        newAndHotThirdButton.setTitle("TOP 10 시리즈", for: .normal)
        
        newAndHotMainLabel.textAlignment = .center
        newAndHotMainLabel.font = .systemFont(ofSize: 21, weight: .semibold)
        newAndHotMainLabel.numberOfLines = 2
        newAndHotMainLabel.text = "이런! \n찾으시는 공개 예정 작품이 없습니다."
        
        newAndHotSubLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
        newAndHotSubLabel.font = .systemFont(ofSize: 14)
        newAndHotSubLabel.textColor = .darkGray
        newAndHotSubLabel.textAlignment = .center
        
        newAndHotFirstButton.backgroundColor = .white
        newAndHotFirstButton.tintColor = .black
        
        newAndHotSecondButton.backgroundColor = .clear
        newAndHotSecondButton.tintColor = .white
        
        newAndHotThirdButton.backgroundColor = .clear
        newAndHotThirdButton.tintColor = .white
    }
    
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        mainButtonClicked(mainButton: newAndHotFirstButton,
                          etcButton1: newAndHotSecondButton,
                          etcButton2: newAndHotThirdButton,
                          str: "공개 예정 작품이")
    }
    @IBAction func secondButtonClicked(_ sender: UIButton) {
        mainButtonClicked(mainButton: newAndHotSecondButton,
                          etcButton1: newAndHotFirstButton,
                          etcButton2: newAndHotThirdButton,
                          str: "인기 작품이")
    }
    @IBAction func thirdButtonClicked(_ sender: UIButton) {
        mainButtonClicked(mainButton: newAndHotThirdButton,
                          etcButton1: newAndHotFirstButton,
                          etcButton2: newAndHotSecondButton,
                          str: "Top 10 시리즈가")
    }
    
    func mainButtonClicked(mainButton: UIButton, etcButton1: UIButton, etcButton2: UIButton, str: String) {
        mainButton.tintColor = .black
        etcButton1.tintColor = .white
        etcButton2.tintColor = .white
        mainButton.backgroundColor = .white
        etcButton1.backgroundColor = .clear
        etcButton2.backgroundColor = .clear
        newAndHotMainLabel.text = "이런! \n찾으시는 \(str) 없습니다."
    }
}
