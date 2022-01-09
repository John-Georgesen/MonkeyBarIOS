//
//  CalendarViewController.swift
//  MonkeyBar
//
//  Created by John Georgesen on 8/5/21.
//

import UIKit

class FoodTruckController: UIViewController
{
    @IBOutlet var MainDropdown: UIView!
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var TopBanner: UIView!
    @IBOutlet var streetButton: UIButton!
    
    public var menuDown = false

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel?.font = UIFont(name: "Algerian", size: 25)
        
        //set dropdown to invisible initially
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
            streetButton!.isHidden = false;
        }
        else
        {
            menuDown = true;
            MainDropdown!.isHidden = false;
            streetButton!.isHidden = true;
        }
    }
    //when drop down button is clicked
    @IBAction func streetFoodFinder(_ sender: Any)
    {
        if let url = URL(string: "https://streetfoodfinder.com/c/oh/columbus")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func dropdownButtonOnclick(_ sender: Any)
    {
        if(menuDown == true)
        {
            menuDown = false;
            MainDropdown!.isHidden = true;
            streetButton!.isHidden = false;
        }
        else
        {
            menuDown = true;
            MainDropdown!.isHidden = false;
            streetButton!.isHidden = true;
        }
    }
    
    
    @IBAction func BGonClick(_ sender: Any)
    {
        if let url = URL(string: "https://bgsgrill.com/")
        {
            UIApplication.shared.open(url);
        }
    }
    
    @IBAction func BiteMeOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://bitemecorndogs.com/")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func CarbosOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://carbonarasgrill.com/")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func CheeseOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://carbonarasgrill.com/")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func FishOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://www.facebook.com/JsFishTaco")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func MartysWaffles(_ sender: Any)
    {
        if let url = URL(string: "http://martyswaffles.com/")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func stellarOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://www.facebook.com/SSECincy")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func seaCuisine(_ sender: Any)
    {
        if let url = URL(string: "https://www.facebook.com/SEACuisineFoodtruck/")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func mexicoOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://www.facebook.com/tasteofmexicocincinnati/")
        {
            UIApplication.shared.open(url);
        }
    }
    @IBAction func wickedOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://www.facebook.com/TheWickedLobstah/")
        {
            UIApplication.shared.open(url);
        }
    }
}
