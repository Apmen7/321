//
//  ViewController.swift
//  PetProfileCodeLayout
//
//  Created by Armen on 07.09.2023.
//

import UIKit

final class PetViewController: UIViewController {
    
    // MARK: - Private Properties
    private let mainView = UIView()
    private let sendMessageButton = UIButton()
    private let profileButton = UIButton()
    private let stackView = UIStackView()
    private let ava = UIImageView()
    private let dog = UIImageView()
    private let onlineIcon = UIImageView()
    private let genderIcon = UIImageView()
    private let dogNameLabel = UILabel()
    private let timeLabel = UILabel()
    private let starImage = UIImageView()
    private let labelAboutPet = UILabel()
    private let petInformationLabel = UILabel()
    // MARK: - Public Properties
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        setupLayout()
        view.backgroundColor = UIColor(red: 0.12, green: 0.13, blue: 0.13, alpha: 1)
    }
    // MARK: - Private methods
    
}

    // MARK: - Extensions
private extension PetViewController {
    
    func setupLayout() {
        configureMainView()
        configureSendMessageButton()
        configureProfileButton()
        configureStackView()
        configureImageView()
        configureDogView()
        configureOnlineIcon()
        configureGenderIcon()
        configureDogNameLabel()
        configureLabelOfTime()
        configureStarImage()
        configureLabelAboutPet()
        configureInformationOfPet()
    }
    
    func configureMainView() {
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 15
    }
    
    func configureSendMessageButton() {
        view.addSubview(sendMessageButton)
        sendMessageButton.translatesAutoresizingMaskIntoConstraints = false
        sendMessageButton.backgroundColor = .tintColor
        sendMessageButton.layer.cornerRadius = 32
        sendMessageButton.setTitle("Написать сообщение", for: .normal)
        
        NSLayoutConstraint.activate([
            sendMessageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sendMessageButton.heightAnchor.constraint(equalToConstant: 60),
            sendMessageButton.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 20),
            sendMessageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 19)
        ])
    }
    
    func configureProfileButton() {
        view.addSubview(profileButton)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.setTitle("Перейти в профиль", for: .normal)
        profileButton.setTitleColor(.gray, for: .normal)
        
        NSLayoutConstraint.activate([
            profileButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileButton.topAnchor.constraint(equalTo: sendMessageButton.bottomAnchor, constant: 20)
        ])
    }
    
    func configureStackView() {
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        stackView.addArrangedSubview(mainView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 246),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 166),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10)
        ])
    }
    
    func configureImageView() {
        ava.image = UIImage(named: "ava")
        ava.contentMode = .scaleAspectFit
        ava.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(ava)
        
        ava.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20).isActive = true
        ava.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
    }
    
    func configureDogView() {
        dog.image = UIImage(named: "dog")
        dog.contentMode = .scaleAspectFit
        dog.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(dog)
        
        dog.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        dog.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 50).isActive = true
    }
    
    // Online Icon
    func configureOnlineIcon() {
        onlineIcon.image = UIImage(named: "Online")
        onlineIcon.contentMode = .scaleAspectFit
        onlineIcon.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(onlineIcon)
        
        onlineIcon.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 70).isActive = true
        onlineIcon.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 85).isActive = true
    }
    
    func configureGenderIcon() {
        genderIcon.image = UIImage(named: "icon")
        genderIcon.contentMode = .scaleAspectFit
        genderIcon.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(genderIcon)
        
        genderIcon.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        genderIcon.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 180).isActive = true
    }
    
    private func configureDogNameLabel() {
        dogNameLabel.text = "Бима"
        dogNameLabel.contentMode = .scaleToFill
        dogNameLabel.textColor = .black
        dogNameLabel.font = UIFont.boldSystemFont(ofSize: 25)
        dogNameLabel.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(dogNameLabel)
        
        dogNameLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        dogNameLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 115).isActive = true
    }
    
    func configureLabelOfTime() {
        timeLabel.text = "На прогулке еще 30 минут"
        timeLabel.contentMode = .scaleToFill
        timeLabel.textColor = .gray
        timeLabel.font = .systemFont(ofSize: 14)
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(timeLabel)
        
        timeLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 70).isActive = true
        timeLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 115).isActive = true
    }
    
    // Star Image
    func configureStarImage() {
        starImage.image = UIImage(named: "star")
        starImage.contentMode = .scaleAspectFit
        starImage.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(starImage)
        
        starImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30).isActive = true
        starImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 320).isActive = true
    }
    
    func configureLabelAboutPet() {
        labelAboutPet.text = "О питомце"
        labelAboutPet.contentMode = .scaleToFill
        labelAboutPet.textColor = .black
        labelAboutPet.font = .systemFont(ofSize: 15)
        labelAboutPet.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(labelAboutPet)
        
        labelAboutPet.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 100).isActive = true
        labelAboutPet.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
    }
    
    func configureInformationOfPet() {
        petInformationLabel.text = "Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона."
        petInformationLabel.numberOfLines = 0
        petInformationLabel.lineBreakMode = .byWordWrapping
        petInformationLabel.textColor = .gray
        petInformationLabel.font = .systemFont(ofSize: 14)
        petInformationLabel.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(petInformationLabel)
        
        petInformationLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 80).isActive = true
        petInformationLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        petInformationLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
        petInformationLabel.bottomAnchor.constraint(equalTo: mainView.bottomAnchor).isActive = true
    }
}
