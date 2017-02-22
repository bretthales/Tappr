//
//  ViewController.swift
//  Tappr
//
//  Created by Brett Hales on 15/2/17.
//  Copyright © 2017 Brett Hales. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet weak var tableView: NSTableView!
    
    var objects: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    self.objects.add("Supergeek")
    self.objects.add("Leukaemia Foundation")
    self.objects.add("Vitality Tea")
    self.objects.add("New Merchant")
        
    self.tableView.reloadData()
        
    
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    //: MARK: - Table View
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return self.objects.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        
        var cellView = tableView.make(withIdentifier: "cell", owner: self) as! NSTableCellView
        
        cellView.textField!.stringValue = self.objects.object(at: row) as! String
        
        return cellView
        
    }
    
    func tableViewSelectionDidChange(_ notification: Notification) {
        
        if (self.tableView.numberOfSelectedRows > 0)
        {
        
        let selecteditem = self.objects.object(at: self.tableView.selectedRow) as! String
        
        print(selecteditem)
        
        self.tableView.deselectRow(self.tableView.selectedRow)
    }

    }
    
    
    
}

