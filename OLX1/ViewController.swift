//
//  ViewController.swift
//  OLX1
//
//  Created by Abdulvoxid on 28/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let segmentedControll = UISegmentedControl()
    
    private let gmailLabelLogIn = UILabel()
    private let gmailTFLogIn = UITextField()
    private let passwordLabelLogIn = UILabel()
    private let passwordTFLogIn = UITextField()
    private var reSetPasswordBtnLogIn = UIButton()
    private var enterBtnLogIn = UIButton()
    private let orLineLogIn = UILabel()
    private var linkBtnLogIn = UIButton()
    private let termsLabelLogIn = UILabel()
    private var termsBtnLogIn = UIButton()
    
    private var linkBtnReg = UIButton()
    private let orLineReg = UILabel()
    private let gmailLabelReg = UILabel()
    private let gmailTFReg = UITextField()
    private let passwordLabelReg = UILabel()
    private let passwordTFReg = UITextField()
    private let termsLabelReg = UILabel()
    private var selectBtnReg = UIButton()
    private let selsectTermsLabelReg = UILabel()
    private var registrationBtnReg = UIButton()
    
    private var registrationView = UIView()
    private var logInView = UIView()
    
    private var isSecureTextEntry = true
    private var checker = false

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = .white
      
       setNavigation()
       setSegmentedControl()
        
       setGmailLogIn()
       setPasswordLogIn()
       setResetPasswordBtnLogIn()
       setEnterBtnLogIn()
       setOrLineLogIn()
       setLinkBtnLogIn()
       setTermsLabelLogIn()
       setTermsBtnLogIn()
       setlogInView()
        
        setRegistrationView()
        setLinkBtnReg()
        setOrLineReg()
        setGmailReg()
        setPasswordReg()
        setTermsLabelReg()
        setSelectBtnReg()
        setSelectTermsLabelReg()
        setRegistrationBtnReg()

    }
    @objc func changeIndex() {
        if segmentedControll.selectedSegmentIndex == 0 {
            registrationView.isHidden = true
            logInView.isHidden = false
        } else {
            registrationView.isHidden = false
            logInView.isHidden = true
        }
    }
    
    @objc func tappedToView() {
        view.endEditing(true)
    }
    
    @objc func showTappedLogIn() {
        isSecureTextEntry.toggle()
        passwordTFLogIn.isSecureTextEntry = isSecureTextEntry
    }
    
    @objc func showTappedReg() {
        isSecureTextEntry.toggle()
        passwordTFReg.isSecureTextEntry = isSecureTextEntry
    }
    
    @objc func selectBtnRegTapped() {
        checker.toggle()
        
        if checker {
            selectBtnReg.isSelected = true
        } else {
            selectBtnReg.isSelected = false
        }
    }
}

extension ViewController {
    func setlogInView() {
        logInView.frame = CGRect(x: 0, y: 236, width: UIScreen.main.bounds.width, height: 500)
        view.addSubview(logInView)
        logInView.backgroundColor = .white
    }
    
    func setRegistrationView() {
        registrationView.frame = CGRect(x: 0, y: 236, width: UIScreen.main.bounds.width, height: 500)
        view.addSubview(registrationView)
        registrationView.backgroundColor = .white
        registrationView.isHidden = true
    }
}

extension ViewController {
    func setNavigation() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Создать"
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.rgb(0, 47, 52)]
        
    }
    
    func setSegmentedControl() {
        view.addSubview(segmentedControll)
        segmentedControll.frame = CGRect(x: 15, y: 175, width: UIScreen.main.bounds.width - 30, height: 31)
        segmentedControll.insertSegment(withTitle: "Войти", at: 0, animated: false)
        segmentedControll.insertSegment(withTitle: "Зарегистроваться", at: 1, animated: false)
        segmentedControll.selectedSegmentIndex = 0
        segmentedControll.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.rgb(0, 47, 52)], for: .normal)
        segmentedControll.addTarget(self, action: #selector(changeIndex), for: .valueChanged)
            
    }
    
    func setGmailLogIn() {
        logInView.addSubview(gmailLabelLogIn)
        
        gmailLabelLogIn.frame = CGRect(x: 15, y: 5, width: UIScreen.main.bounds.width - 30, height: 14)
        gmailLabelLogIn.text = "Электронная почта или телефон"
        gmailLabelLogIn.font = .systemFont(ofSize: 12)
        gmailLabelLogIn.textColor = .rgb(0, 47, 52)
        
        logInView.addSubview(gmailTFLogIn)
        
        gmailTFLogIn.frame = CGRect(x: 15, y: 25, width: UIScreen.main.bounds.width - 30, height: 45)
        gmailTFLogIn.placeholder = "Введите адрес электронной почты или телефона"
        gmailTFLogIn.backgroundColor = .rgb(243, 243, 243)
        gmailTFLogIn.layer.cornerRadius = 5
    }
    
    func setPasswordLogIn() {
        logInView.addSubview(passwordLabelLogIn)
        
        passwordLabelLogIn.frame = CGRect(x: 15, y: 80, width: UIScreen.main.bounds.width - 30, height: 14)
        passwordLabelLogIn.text = "Пароль"
        passwordLabelLogIn.font = .systemFont(ofSize: 12)
        passwordLabelLogIn.textColor = .rgb(0, 47, 52)
        
        logInView.addSubview(passwordTFLogIn)
        
        passwordTFLogIn.frame = CGRect(x: 15, y: 100, width: UIScreen.main.bounds.width - 30, height: 45)
        passwordTFLogIn.placeholder = "Введите ваш пароль"
        passwordTFLogIn.isSecureTextEntry = isSecureTextEntry
        passwordTFLogIn.backgroundColor = .rgb(243, 243, 243)
        passwordTFLogIn.layer.cornerRadius = 5
        passwordTFLogIn.rightViewMode = .always
        let showSecureLogIn = UIButton(type: .system)
        
        passwordTFLogIn.addSubview(showSecureLogIn)
        showSecureLogIn.frame = CGRect(x: 280, y: 2, width: 90, height: 40)
        showSecureLogIn.setTitle("Показать", for: .normal)
        showSecureLogIn.setTitleColor(.rgb(0, 47, 52), for: .normal)
        showSecureLogIn.addTarget(self, action: #selector(showTappedLogIn), for: .touchUpInside)
        
        passwordTFLogIn.rightView = showSecureLogIn
    }
    
    func setResetPasswordBtnLogIn() {
        reSetPasswordBtnLogIn = UIButton(type: .system)
        reSetPasswordBtnLogIn.setTitle("Забыли пароль", for: .normal)
        reSetPasswordBtnLogIn.frame = CGRect(x: 15, y: 160, width: 130, height: 14)
        self.logInView.addSubview(reSetPasswordBtnLogIn)
        reSetPasswordBtnLogIn.setTitleColor(.rgb(0, 47, 52), for: .normal)
        reSetPasswordBtnLogIn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
    }
    
    func setEnterBtnLogIn() {
        enterBtnLogIn = UIButton(type: .system)
        enterBtnLogIn.setTitle("Войти", for: .normal)
        enterBtnLogIn.frame = CGRect(x: 15, y: 180, width: UIScreen.main.bounds.width - 30, height: 45)
       self.logInView.addSubview(enterBtnLogIn)
        enterBtnLogIn.setTitleColor(.white, for: .normal)
        enterBtnLogIn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        enterBtnLogIn.backgroundColor = UIColor.rgb(0, 47, 52)
        enterBtnLogIn.layer.cornerRadius = 5
    }
    
    func setOrLineLogIn() {
        logInView.addSubview(orLineLogIn)
        orLineLogIn.text = "-----------------------   Или   -----------------------"
        orLineLogIn.textColor = .rgb(0, 47, 52)
        orLineLogIn.frame = CGRect(x: 15, y: 255, width: 600, height: 18)
        orLineLogIn.font = .systemFont(ofSize: 15)
    }
    
    func setLinkBtnLogIn() {
        linkBtnLogIn = UIButton(type: .system)
        let appleLogoSymbol = UIImage(systemName: "applelogo")
        linkBtnLogIn.setImage(appleLogoSymbol, for: .normal)
        linkBtnLogIn.tintColor = .black
        linkBtnLogIn.setTitle("         Продолжить с Apple", for: .normal)
        linkBtnLogIn.frame = CGRect(x: 15, y: 305, width: UIScreen.main.bounds.width - 30, height: 45)
        self.logInView.addSubview(linkBtnLogIn)
        linkBtnLogIn.setTitleColor(.rgb(0, 47, 52), for: .normal)
        linkBtnLogIn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        linkBtnLogIn.layer.cornerRadius = 5
        linkBtnLogIn.layer.borderColor = UIColor.rgb(0, 47, 52).cgColor
        linkBtnLogIn.layer.borderWidth = 1
        linkBtnLogIn.backgroundColor = .white
    }
    
    func setTermsLabelLogIn() {
        logInView.addSubview(termsLabelLogIn)
        termsLabelLogIn.text = "При входе вы соглашаетесь с нашими"
        termsLabelLogIn.textColor = .rgb(0, 0, 0)
        termsLabelLogIn.frame = CGRect(x: 80, y: 355, width: 600, height: 18)
        termsLabelLogIn.font = .systemFont(ofSize: 12)
    }
    
    func setTermsBtnLogIn() {
        termsBtnLogIn = UIButton(type: .system)
        termsBtnLogIn.setTitle("Условиями использования", for: .normal)
        termsBtnLogIn.frame = CGRect(x: 20, y: 370, width: UIScreen.main.bounds.width - 30, height: 18)
       self.logInView.addSubview(termsBtnLogIn)
        termsBtnLogIn.setTitleColor(.rgb(0, 0, 0), for: .normal)
        termsBtnLogIn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
    }
    
    // Mark : registration view starts here
    
    func setLinkBtnReg() {
        linkBtnReg = UIButton(type: .system)
        let appleLogoSymbolReg = UIImage(systemName: "applelogo")
        linkBtnReg.setImage(appleLogoSymbolReg, for: .normal)
        linkBtnReg.tintColor = .black
        linkBtnReg.setTitle("         Продолжить с Apple", for: .normal)
        linkBtnReg.frame = CGRect(x: 15, y: 10, width: UIScreen.main.bounds.width - 30, height: 45)
        self.registrationView.addSubview(linkBtnReg)
        linkBtnReg.setTitleColor(.rgb(0, 47, 52), for: .normal)
        linkBtnReg.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        linkBtnReg.layer.cornerRadius = 5
        linkBtnReg.layer.borderColor = UIColor.rgb(0, 47, 52).cgColor
        linkBtnReg.layer.borderWidth = 1
        linkBtnReg.backgroundColor = .white
    }
    
    func setOrLineReg() {
        registrationView.addSubview(orLineReg)
        orLineReg.text = "-----------------------   Или   -----------------------"
        orLineReg.textColor = .rgb(0, 47, 52)
        orLineReg.frame = CGRect(x: 15, y: 85, width: 600, height: 18)
        orLineReg.font = .systemFont(ofSize: 15)
    }
    
    func setGmailReg() {
        registrationView.addSubview(gmailLabelReg)
        
        gmailLabelReg.frame = CGRect(x: 15, y: 130, width: UIScreen.main.bounds.width - 30, height: 14)
        gmailLabelReg.text = "Электронная почта или телефон"
        gmailLabelReg.font = .systemFont(ofSize: 12)
        gmailLabelReg.textColor = .rgb(0, 47, 52)
        
        registrationView.addSubview(gmailTFReg)
        
        gmailTFReg.frame = CGRect(x: 15, y: 150, width: UIScreen.main.bounds.width - 30, height: 45)
        gmailTFReg.placeholder = "Введите адрес электронной почты или телефона"
        gmailTFReg.backgroundColor = .rgb(243, 243, 243)
        gmailTFReg.layer.cornerRadius = 5
    }
    
    func setPasswordReg() {
        registrationView.addSubview(passwordLabelReg)
        
        passwordLabelReg.frame = CGRect(x: 15, y: 200, width: UIScreen.main.bounds.width - 30, height: 14)
        passwordLabelReg.text = "Пароль"
        passwordLabelReg.font = .systemFont(ofSize: 12)
        passwordLabelReg.textColor = .rgb(0, 47, 52)
        
        registrationView.addSubview(passwordTFReg)
        
        passwordTFReg.frame = CGRect(x: 15, y: 220, width: UIScreen.main.bounds.width - 30, height: 45)
        passwordTFReg.placeholder = "Введите ваш пароль"
        passwordTFReg.isSecureTextEntry = isSecureTextEntry
        passwordTFReg.backgroundColor = .rgb(243, 243, 243)
        passwordTFReg.layer.cornerRadius = 5
        passwordTFReg.rightViewMode = .always
        let showSecureReg = UIButton(type: .system)
        
        passwordTFReg.addSubview(showSecureReg)
        showSecureReg.frame = CGRect(x: 280, y: 2, width: 90, height: 40)
        showSecureReg.setTitle("Показать", for: .normal)
        showSecureReg.setTitleColor(.rgb(0, 47, 52), for: .normal)
        showSecureReg.addTarget(self, action: #selector(showTappedReg), for: .touchUpInside)
        
        passwordTFReg.rightView = showSecureReg
    }
    
    func setTermsLabelReg() {
        registrationView.addSubview(termsLabelReg)
        termsLabelReg.text = "Пароль дольжен содержать минимум 6 симболов. Чтобы пароль получился супернадежными, добавьте заглавные и строчные буквы, цыфры и специальные символы"
        termsLabelReg.textColor = .rgb(0, 0, 0)
        termsLabelReg.frame = CGRect(x: 15, y: 280, width: 382, height: 41)
        termsLabelReg.font = .systemFont(ofSize: 12)
        termsLabelReg.numberOfLines = 0
        termsLabelReg.preferredMaxLayoutWidth = 1200
        termsLabelReg.sizeToFit()
    }
    
    func setSelectBtnReg() {
        selectBtnReg = UIButton(type: .system)
        selectBtnReg.frame = CGRect(x: 15, y: 340, width: 24, height: 24)
       self.registrationView.addSubview(selectBtnReg)
        selectBtnReg.setTitleColor(.white, for: .normal)
        selectBtnReg.backgroundColor = .white
        selectBtnReg.layer.cornerRadius = 5
        selectBtnReg.layer.borderColor = UIColor.rgb(0, 47, 52).cgColor
        selectBtnReg.layer.borderWidth = 2
        selectBtnReg.addTarget(self, action: #selector(selectBtnRegTapped), for: .touchUpInside)
        selectBtnReg.setImage(.init(systemName: "checkmark"), for: .selected)
        selectBtnReg.setImage(nil, for: .normal)
    }
    
    func setSelectTermsLabelReg() {
        registrationView.addSubview(selsectTermsLabelReg)
        selsectTermsLabelReg.text = "Я соглащаюсь с правилами использования сервиса, а также с передачей и обработкой моих данных в OLX. Я подверждаю свое совершеннолетие и отвественность за размещение объявления "
        selsectTermsLabelReg.textColor = .rgb(0, 0, 0)
        selsectTermsLabelReg.frame = CGRect(x: 60, y: 340, width: 325, height: 41)
        selsectTermsLabelReg.font = .systemFont(ofSize: 12)
        selsectTermsLabelReg.numberOfLines = 0
        selsectTermsLabelReg.preferredMaxLayoutWidth = 1200
        selsectTermsLabelReg.sizeToFit()
    }
    
    func setRegistrationBtnReg() {
        registrationBtnReg = UIButton(type: .system)
        registrationBtnReg.setTitle("Зарегистроваться", for: .normal)
        registrationBtnReg.frame = CGRect(x: 15, y: 430, width: UIScreen.main.bounds.width - 30, height: 45)
       self.registrationView.addSubview(registrationBtnReg)
        registrationBtnReg.setTitleColor(.white, for: .normal)
        registrationBtnReg.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        registrationBtnReg.backgroundColor = UIColor.rgb(0, 47, 52)
        registrationBtnReg.layer.cornerRadius = 5
    }

}


extension UIColor {
    static func rgb( _ r : CGFloat, _ g : CGFloat, _ b: CGFloat) -> UIColor {
        UIColor(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
    }
}
