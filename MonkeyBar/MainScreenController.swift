//
//  MainScreenController.swift
//  MonkeyBar
//
//  Created by Mitchell Greer on 8/6/21.
//

import UIKit

class MainScreenController: UIViewController
{
    @IBOutlet var MainDropdown: UIView!
    private var menuDown = false

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var TopBanner: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel?.font = UIFont(name: "Algerian", size: 25)
        
        MainDropdown!.isHidden = true;
        
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
