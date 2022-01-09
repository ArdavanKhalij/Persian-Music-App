//
//  shurMain.swift
//  musicapp
//
//  Created by Ardavan.A Khalij on 5/14/20.
//  Copyright © 2020 Ardavan.A Khalij. All rights reserved.
//

import UIKit

let shurList = ["درآمد اول و خارا","کرشمه","رهاوی","سلمک","شهناز","قرچه","رضوی","حسینی","دوبیتی","زیرکش سلمک","مثنوی"
,"گلریز","بیات کرد","جوادخانی","روح الارواح"
]
let shurPoems1 = ["چو بشنوی سخن اهل دل مگو که خطاست","چو بشنوی سخن اهل دل مگو که خطاست","در اندرون من خسته دل ندانم کیست","مرا به کار جهان هرگز التفات نبود","مرا به کار جهان هرگز التفات نبود","از آن به دیر مغانم عزیز می‌دارند","چنین که صومعه آلوده شد ز خون دلم","هنگام سپیده دم خروس سحری","بیا تا گل برافشانیم و می در ساغر اندازیم","موج از این بار چنان کشتی طاقت بشکست","بشنو این نی چون شکایت می‌کند"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
let shurPoems2 = ["سخن شناس نه‌ای جان من خطا این جاست","سخن شناس نه‌ای جان من خطا این جاست" ,"که من خموشم و او در فغان و در غوغاست","رخ تو در نظر من چنین خوشش آراست","رخ تو در نظر من چنین خوشش آراست","که آتشی که نمیرد همیشه در دل ماست","گرم به باده بشویید حق به دست شماست","دانی که چرا همی کند نوحه گری","فلک را سقف بشکافیم و طرحی نو دراندازیم","که عجب دارم اگر تخته به ساحل برود","از جداییها حکایت می‌کند"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
let shurPoems3 = [" "," "," "," "," "," "," ","یعنی که نمودند در آیینهٔ صبح","اگر غم لشکر انگیزد که خون عاشقان ریزد"," ","کز نیستان تا مرا ببریده‌اند"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
let shurPoems4 = [" "," "," "," "," "," "," ","کز عمر شبی گذشت و تو بی خبری","من و ساقی به هم تازیم و بنیادش براندازیم"," ","در نفیرم مرد و زن نالیده‌اند"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
let shurPoems5 = [" "," "," "," "," "," "," "," "," "," ","سینه خواهم شرحه شرحه از فراق"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
let shurPoems6 = [" "," "," "," "," "," "," "," "," "," ","تا بگویم شرح درد اشتیاق"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
let shurPoems7 = [" "," "," "," "," "," "," "," "," "," ","من به هر جمعیتی نالان شدم"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]
let shurPoems8 = [" "," "," "," "," "," "," "," "," "," ","جفت بدحالان و خوش‌حالان شدم"," "," "," "," "," "," "," "," "," "," "," "," "," "," "]

var shurIndex = 0

class shurMain: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shurList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "ShurCell")
        cell.textLabel?.text = shurList[indexPath.row]
        cell.textLabel!.font = UIFont(name:"IRANSans-Light", size: 18.0)
        cell.textLabel?.textAlignment = .center
        cell.backgroundColor = #colorLiteral(red: 0.00861901883, green: 0.2309203148, blue: 0.4288270175, alpha: 1)
        cell.textLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        shurIndex = indexPath.row
        performSegue(withIdentifier: "segueShur", sender: self)
    }
    
    @IBOutlet weak var shurDescription: UITextView!
    @IBOutlet weak var table: UITableView!
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
         
    override func viewDidLoad() {
        super.viewDidLoad()
        ShurDescStyle()
//        replay.layer.cornerRadius = replay.frame.size.height/2
//        replay.clipsToBounds = true
//        stop.layer.cornerRadius = stop.frame.size.height/2
//        stop.clipsToBounds = true
//        play.layer.cornerRadius = play.frame.size.height/2
//        play.clipsToBounds = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func ShurDescStyle(){
        shurDescription.layer.cornerRadius = 7
        shurDescription.clipsToBounds = true
        table.separatorStyle = .singleLine
        table.separatorColor = #colorLiteral(red: 0.9989085793, green: 0.5450980392, blue: 0, alpha: 1)
        table.layer.cornerRadius = 7
        table.clipsToBounds = true
        table.layer.borderWidth = 4
        table.layer.borderColor = #colorLiteral(red: 0.9989085793, green: 0.5450980392, blue: 0, alpha: 1)
        shurDescription.layer.borderWidth = 4
        shurDescription.layer.borderColor = #colorLiteral(red: 0.9989085793, green: 0.5450980392, blue: 0, alpha: 1)
        shurDescription.font = UIFont(name:"IRANSans-Light", size: 16.0)
        
    }
    
}
