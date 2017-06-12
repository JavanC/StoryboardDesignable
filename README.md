# StoryboardDesignable
Easy way to instantiate ViewController from Storyboard.

## Requirements
* Swift 3.0
* Xcode 8
* iOS 8+

## Setup

* Copy **StoryboardDesignable.swift** to your Xcode Project.

![001](Doc/001.png)

* Add your Storyboards name Enum in **StoryboardDesignable.swift**.

```
enum Storyboard: String {
  	case Main               = "Main"
    case YourStoryboardName = "YourStoryboardName"
}
```

## Note

Set your ViewController's **Storyboard ID** is same the **Class Name**.

![002](Doc/002.png)

## Usage

Just instantiate by ViewController instantiate function!

Example:

```
let vc = YourViewController.instantiate(from: .StoryboardName)
self.navigationController?.pushViewController(vc, animated: true)
```

## Author

StoryboardDesignable, <fu6gjp4@gmail.com>.

