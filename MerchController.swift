//
//  MerchController.swift
//  MonkeyBar
//
//  Created by John Georgesen on 8/9/21.
//

import UIKit

class MerchController: UIViewController
{
    @IBOutlet var MainDropdown: UIView!
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var BeanieScroll: UIScrollView!
    @IBOutlet var HoodieScroll: UIScrollView!
    @IBOutlet var TShirtScroll: UIScrollView!
    
    @IBOutlet var BeanieButton: UIButton!
    @IBOutlet var HoodieButton: UIButton!
    @IBOutlet var TShirtButton: UIButton!
    
    @IBOutlet var TopBanner: UIView!
    
    private var menuDown = false
    

    override func viewDidLoad()
    {
        super.viewDidLoad()

        
        titleLabel?.font = UIFont(name: "Algerian", size: 25)
        
        //set dropdown to invisible initially
        MainDropdown!.isHidden = true;
        
        //init nav buttons
        BeanieScroll!.isHidden = false
        HoodieScroll!.isHidden = true
        TShirtScroll!.isHidden = true
        
        BeanieButton!.backgroundColor = UIColor.black
        BeanieButton!.setTitleColor(.white, for: .normal)

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

    @IBAction func dropdownButtonOnclick(_ sender: Any)
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
    @IBAction func BeanieOnClick(_ sender: Any)
    {
        BeanieScroll!.isHidden = false
        HoodieScroll!.isHidden = true
        TShirtScroll!.isHidden = true
        
        BeanieButton!.backgroundColor = UIColor.black
        BeanieButton!.setTitleColor(.white, for: .normal)
        
        HoodieButton!.backgroundColor = UIColor.white
        HoodieButton!.setTitleColor(.black, for: .normal)
        
        TShirtButton!.backgroundColor = UIColor.white
        TShirtButton!.setTitleColor(.black, for: .normal)
    }
    @IBAction func HoodieOnClick(_ sender: Any)
    {
        BeanieScroll!.isHidden = true
        HoodieScroll!.isHidden = false
        TShirtScroll!.isHidden = true
        
        BeanieButton!.backgroundColor = UIColor.white
        BeanieButton!.setTitleColor(.black, for: .normal)
        
        HoodieButton!.backgroundColor = UIColor.black
        HoodieButton!.setTitleColor(.white, for: .normal)
        
        TShirtButton!.backgroundColor = UIColor.white
        TShirtButton!.setTitleColor(.black, for: .normal)
    }
    @IBAction func TShirtOnClick(_ sender: Any)
    {
        BeanieScroll!.isHidden = true
        HoodieScroll!.isHidden = true
        TShirtScroll!.isHidden = false
        
        BeanieButton!.backgroundColor = UIColor.white
        BeanieButton!.setTitleColor(.black, for: .normal)
        
        HoodieButton!.backgroundColor = UIColor.white
        HoodieButton!.setTitleColor(.black, for: .normal)
        
        TShirtButton!.backgroundColor = UIColor.black
        TShirtButton!.setTitleColor(.white, for: .normal)
    }
    
}
