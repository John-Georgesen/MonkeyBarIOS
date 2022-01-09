//
//  PicturesController.swift
//  MonkeyBar
//
//  Created by Mitchell Greer on 8/9/21.
//

import UIKit

class PicturesController: UIViewController
{
    @IBOutlet var MainDropdown: UIView!
    @IBOutlet var titleLabel: UILabel!
    
    private var imageNum = 1
    
    private var menuDown = false
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var HistoryLabel: UILabel!
    
    @IBOutlet var TopBanner: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel?.font = UIFont(name: "Algerian", size: 25)
        
        MainDropdown!.isHidden = true
        
        imageView.image = UIImage(named: "barview" + String(imageNum))!
        
        let timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
        
        //history tap
        let historyTap = UITapGestureRecognizer(target: self, action: #selector(PicturesController.historyFunction(sender:)))
        HistoryLabel.isUserInteractionEnabled = true
        HistoryLabel.addGestureRecognizer(historyTap)
        
        //bannertap
        let bannerTap = UITapGestureRecognizer(target: self, action: #selector(PicturesController.dropdownSelect(sender:)))
        TopBanner.isUserInteractionEnabled = true
        TopBanner.addGestureRecognizer(bannerTap)
    }
    @objc func changeImage()
    {
        if(imageNum == 7)
        {
            imageView.image = UIImage(named: "barview7")!
            
            imageNum = 1;
        }
        else
        {
            imageView.image = UIImage(named: "barview" + String(imageNum))!
            
            imageNum=imageNum+1;
        }
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
    @IBAction func historyFunction(sender: UITapGestureRecognizer)
    {
        if let url = URL(string: "https://themonkeybarandgrille.com/our-building")
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
