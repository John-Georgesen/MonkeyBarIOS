//
//  CalendarController.swift
//  MonkeyBar
//
//  Created by John Georgesen on 8/5/21.
//

import UIKit
import SafariServices
import WebKit

class CalendarController: UIViewController
{

    @IBOutlet var MainDropdown: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var calendarWebView: WKWebView!
    
    @IBOutlet var TopBanner: UIView!
    
    private var menuDown = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        titleLabel?.font = UIFont(name: "Algerian", size: 25)
        
        //set dropdown to invisible initially
        MainDropdown!.isHidden = true;
        
        //show calendar in webview
        calendarWebView.load(URLRequest(url: URL(string:"https://calendar.google.com/calendar/embed?src=rn0oj632dj9n4u4o9s42v671jg%40group.calendar.google.com&ctz=America%2FNew_York")!))
        
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

    //when drop down button is clicked
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
    
    //when open calendar button is clicked
    @IBAction func openCalendarOnClick(_ sender: Any)
    {
        if let url = URL(string: "https://calendar.google.com/calendar/embed?src=rn0oj632dj9n4u4o9s42v671jg%40group.calendar.google.com&ctz=America%2FNew_York")
        {
            UIApplication.shared.open(url);
        }
    }
    
    
}
