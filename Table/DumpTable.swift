import UIKit

@objc class DumpTable: UITableViewController {
    var objects: [NSDate] = [NSDate]()

    override func viewDidLoad() {
        super.viewDidLoad()

        objects.append(NSDate())
        objects.append(NSDate())
        objects.append(NSDate())

        tableView.isAccessibilityElement = true
        tableView.accessibilityLabel = "Thetable"
        tableView.accessibilityIdentifier = "Thetable"
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        let object = objects[indexPath.row]
        cell.textLabel!.text = object.description

        cell.isAccessibilityElement = true
        cell.accessibilityLabel = "Thecell"
        cell.accessibilityIdentifier = "Thecell"
        
        return cell
    }
}
