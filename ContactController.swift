//
//  ContactController.swift
//  MonkeyBar
//
//  Created by John Georgesen on 8/9/21.
//

import UIKit

class ContactController: UIViewController
{
    @IBOutlet var MainDropdown: UIView!
    @IBOutlet var titleLabel: UILabel!
    
    //text links
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var instagramLabel: UILabel!
    @IBOutlet var facebookLabel: UILabel!
    @IBOutlet var websiteLabel: UILabel!
    @IBOutlet var employLabel: UILabel!
    @IBOutlet var reserveLabel: UILabel!
    @IBOutlet var TopBanner: UIView!
    
    private var menuDown = false

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel?.font = UIFont(name: "Algerian", size: 25)
        
        MainDropdown!.isHidden = true;
        
        //employ tap
        let employTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.employFunction(sender:)))
        employLabel.isUserInteractionEnabled = true
        employLabel.addGestureRecognizer(employTap)
        
        //reserve tap
        let reserveTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.reserveFunction(sender:)))
        reserveLabel.isUserInteractionEnabled = true
        reserveLabel.addGestureRecognizer(reserveTap)
        
        //phone tap
        let phoneTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.phoneFunction))
        phoneNumber.isUserInteractionEnabled = true
        phoneNumber.addGestureRecognizer(phoneTap)
        
        //address tap
        let addressTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.addressFunction(sender:)))
        addressLabel.isUserInteractionEnabled = true
        addressLabel.addGestureRecognizer(addressTap)
        
        //email tap
        let emailTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.emailFunction(sender:)))
        emailLabel.isUserInteractionEnabled = true
        emailLabel.addGestureRecognizer(emailTap)
        
        //insta tap
        let instTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.instaFunction(sender:)))
        instagramLabel.isUserInteractionEnabled = true
        instagramLabel.addGestureRecognizer(instTap)
        
        //face tap
        let faceTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.facebookFunction(sender:)))
        facebookLabel.isUserInteractionEnabled = true
        facebookLabel.addGestureRecognizer(faceTap)
        
        //web tap
        let webTap = UITapGestureRecognizer(target: self, action: #selector(ContactController.websiteFunction(sender:)))
        websiteLabel.isUserInteractionEnabled = true
        websiteLabel.addGestureRecognizer(webTap)
        
        //bannertap
        let bannerTap = UITapGestureRecognizer(target: self, action: #selector(PicturesController.dropdownSelect(sender:)))
        TopBanner.isUserInteractionEnabled = true
        TopBanner.addGestureRecognizer(bannerTap)
    }
    @IBAction func dropdownSelect(sender: UITapGestureRecognizer)
    {
        if(menuDown == true)
        {
            menuDown = false;
            MainDropdown!.isHidden = true;
        }
        else
        {
            menuDown = true;
            MainDropdown!.isHidden = false;
        }
    }
    @IBAction func phoneFunction(sender: UITapGestureRecognizer)
    {
        guard let number = URL(string: "tel://" + "5137814246") else { return }
        UIApplication.shared.open(number)
    }
    @IBAction func employFunction(sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://themonkeybarandgrille.com/employment-application")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func reserveFunction(sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://themonkeybarandgrille.com/book-a-space")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func addressFunction(sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://www.google.com/maps/dir//The+Monkey+Bar+%26+Grille,+7837+Old+3C+Hwy,+Maineville,+OH+45039/@39.322015,-84.2541457,17z/data=!3m1!5s0x8840f86b031ab659:0x8f177810925732!4m8!4m7!1m0!1m5!1m1!1s0x8840f83f3bcd238f:0xf9846f653aa9fb75!2m2!1d-84.2519449!2d39.3219804")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func emailFunction(sender: UITapGestureRecognizer)
    {
        let email = "themonkeybarandgrill@gmail.com"
        if let url = URL(string: "mailto:\(email)") {
          if #available(iOS 10.0, *) {
            UIApplication.shared.open(url)
          } else {
            UIApplication.shared.openURL(url)
          }
        }
    }
    @IBAction func instaFunction(sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://www.instagram.com/themonkeybarandgrille/?hl=en")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func facebookFunction(sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://www.facebook.com/918921888496963")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func websiteFunction(sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://www.themonkeybarandgrille.com/")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func dropdownOnClick(_ sender: Any)
    {
        if(menuDown == true)
        {
            menuDown = false;
            MainDropdown!.isHidden = true;
        }
        else
        {
            menuDown = true;
            MainDropdown!.isHidden = false;
        }
    }
}
