//
//  EndViewController.swift
//  Powerup
//
//  Created by SIMRANPREET KAUR on 29/03/18.
//  Copyright © 2018 Systers. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

     var dataSource: DataSource = DatabaseAccessor.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        // Configure score.
        do {
            let score = try dataSource.getScore()
            karmaPointsLabel.text = String(score.karmaPoints)
        } catch _ {
            // If the saving failed, show an alert dialogue.
            let alert = UIAlertController(title: warningTitleMessage, message: errorLoadingKarmaPoints, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: okText, style: .default))
            self.present(alert, animated: true, completion: nil)

            return
        }
    }


    @IBOutlet weak var karmaPointsLabel: UILabel!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
