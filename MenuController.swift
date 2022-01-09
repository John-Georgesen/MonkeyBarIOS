//
//  MenuController.swift
//  MonkeyBar
//
//  Created by Mitchell Greer on 8/9/21.
//

import UIKit
import WebKit

class MenuController: UIViewController
{
    @IBOutlet var MainDropdown: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var BourbonWebView: WKWebView!
    @IBOutlet var OnTapWV: WKWebView!
    @IBOutlet var WineWV: WKWebView!
    @IBOutlet var CocktailsWV: WKWebView!
    @IBOutlet var BourbonScroll: UIScrollView!
    @IBOutlet var CocktailScroll: UIScrollView!
    @IBOutlet var TopBanner: UIView!
    
    private var menuDown = false
    
    //determines the link the open slides button goes to
    private var buttonNum = 1

    override func viewDidLoad()
    {
        super.viewDidLoad()

        
        titleLabel?.font = UIFont(name: "Algerian", size: 25)
        
        MainDropdown!.isHidden = true;
        
        //open inital webview
        //show calendar in webview
        BourbonWebView!.load(URLRequest(url: URL(string:"https://docs.google.com/presentation/d/e/2PACX-1vT1qY3Toe6Ynwu6GBFSbL8IO_emRQ96PrcS_xQQoUlrW2hpE138vwP1wuDErZRX4kWm3u3Hv-KgSUg5/embed?start=true&loop=false&delayms=60000&rm=minimal")!))
        
        OnTapWV!.load(URLRequest(url: URL(string:"https://docs.google.com/presentation/d/e/2PACX-1vQh0ivKhILY0SrD_goWBQ1eRAyR1E6cdsIcyCbAX6cD5GqAqNX5Yz-MYfQt9oFK2jA-C1eTEkCEeEQN/embed?start=true&loop=true&delayms=5000&rm=minimal")!))
        
        WineWV!.load(URLRequest(url: URL(string:"https://docs.google.com/presentation/d/e/2PACX-1vTpsHtAG_FQNng5iLtUHCMD8d3ATE-4akLN2bO-cAbiK7ByKA17aEWliMC9rLG3e1LFJZ_a4vgP67Al/embed?start=true&loop=true&delayms=5000&rm=minimal")!))
        
        CocktailsWV!.load(URLRequest(url: URL(string:"https://docs.google.com/presentation/d/e/2PACX-1vRGYoG_qpfcjcrlTdACJnJNRrOhwvQ5PoBcS5O59maskAvY2WkWuEjeYQUxmeP76Q/embed?%20start=false&loop=false&delayms=3000&rm=minimal&slide=id.p1")!))
        
        OnTapWV!.isHidden = true;
        WineWV!.isHidden = true;
        CocktailsWV!.isHidden = true;
        BourbonWebView!.isHidden = false;
        BourbonScroll!.isHidden = false;
        CocktailScroll!.isHidden = true;
        
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
    
    @IBAction func OnTapOnClick(_ sender: Any)
    {
        buttonNum = 1
        
        OnTapWV!.isHidden = false;
        WineWV!.isHidden = true;
        CocktailsWV!.isHidden = true;
        BourbonWebView!.isHidden = true;
        BourbonWebView!.isHidden = true;
    }
    @IBAction func BourbonOnClick(_ sender: Any)
    {
        buttonNum = 2
        
        OnTapWV!.isHidden = true;
        WineWV!.isHidden = true;
        CocktailsWV!.isHidden = true;
        BourbonWebView!.isHidden = false;
        BourbonWebView!.isHidden = false;
        CocktailScroll!.isHidden = true;
        
    }
    @IBAction func CocktailsOnClick(_ sender: Any)
    {
        buttonNum = 3
        OnTapWV!.isHidden = true;
        WineWV!.isHidden = true;
        CocktailsWV!.isHidden = false;
        BourbonWebView!.isHidden = true;
        BourbonWebView!.isHidden = true;
        CocktailScroll!.isHidden = false;
    }
    @IBAction func WineOnClick(_ sender: Any)
    {
        buttonNum = 4
        
        OnTapWV!.isHidden = true;
        WineWV!.isHidden = false;
        CocktailsWV!.isHidden = true;
        BourbonWebView!.isHidden = true;
        BourbonWebView!.isHidden = true;
        CocktailScroll!.isHidden = true;
    }
    
    @IBAction func OpenInSlides(_ sender: Any)
    {
        //ontap link
        if(buttonNum == 1)
        {
            if let url = URL(string: "https://docs.google.com/presentation/d/e/2PACX-1vQh0ivKhILY0SrD_goWBQ1eRAyR1E6cdsIcyCbAX6cD5GqAqNX5Yz-MYfQt9oFK2jA-C1eTEkCEeEQN/embed?start=true&loop=true&delayms=5000&rm=minimal")
            {
                UIApplication.shared.open(url);
            }
        }
        //bourbon link
        else if(buttonNum == 2)
        {
            if let url = URL(string: "https://themonkeybarandgrille.com/bourbon")
            {
                UIApplication.shared.open(url);
            }
        }
        //cocktail link
        else if(buttonNum == 3)
        {
            if let url = URL(string: "https://docs.google.com/presentation/d/e/2PACX-1vRGYoG_qpfcjcrlTdACJnJNRrOhwvQ5PoBcS5O59maskAvY2WkWuEjeYQUxmeP76Q/embed?%20start=false&loop=false&delayms=3000&rm=minimal&slide=id.p1")
            {
                UIApplication.shared.open(url);
            }
        }
        //wine link
        else
        {
            if let url = URL(string: "https://docs.google.com/presentation/d/e/2PACX-1vTpsHtAG_FQNng5iLtUHCMD8d3ATE-4akLN2bO-cAbiK7ByKA17aEWliMC9rLG3e1LFJZ_a4vgP67Al/embed?start=true&loop=true&delayms=5000&rm=minimal")
            {
                UIApplication.shared.open(url);
            }
        }
    }
    
}
