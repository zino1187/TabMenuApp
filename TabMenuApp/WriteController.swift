//
//  WriteController.swift
//  TabMenuApp
//
//  Created by zino-mac on 2020/03/04.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class WriteController: UIViewController {

    @IBOutlet weak var t_input: UITextField!
    
    @IBAction func btnClick(_ sender: Any) {
        //이전 화면이 보유하 data 배열에 입력한
        //데이터를 동적으로 추가하자!!
        regist()
        
    }
    
    func regist(){
        //지금 현재 뷰컨트롤러 클래스를 포함하는
        //전체 네비게이션 컨트롤러를 이용하여, 나 아닌
        //다른 뷰컨트롤러에 접근할 수 있다..
        let previous = self.navigationController?.viewControllers[0] as! BoardListControllerTableViewController
        print(previous.data)
        
        let str = t_input.text! //입력한 값
        
        previous.data.append(str)//배열에 추가
        
        //화면갱신 !! tableView 컨포넌트 갱신
        previous.tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
