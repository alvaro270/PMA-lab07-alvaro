import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var lblLikes: UILabel!
    @IBOutlet weak var imagePost: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        //hace que el perfil tenga contorno circular
        imageProfile.layer.cornerRadius = imageProfile.frame.size.width / 2
        imageProfile.layer.borderWidth = 2
        imageProfile.layer.borderColor = UIColor(named: "ButtonColor")?.cgColor
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
