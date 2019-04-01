namespace WebApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Linq;
    using System.Threading.Tasks;

    public class UserViewModel
    {
        [Display(Name = "User Id")]
        public long UserId { get; set; }

        [Required(ErrorMessage = "User Name is required")]
        [MaxLength(60, ErrorMessage = "Do not enter more than 60 characters")]
        [Display(Name = "User Name")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "First Name is required")]
        [MaxLength(60, ErrorMessage = "Do not enter more than 60 characters")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Last Name is required")]
        [StringLength(60, ErrorMessage = "Do not enter more than 60 characters")]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public bool? IsActive { get; set; }
        public DateTime? CreatedOn { get; set; }
        public long? CreatedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public long? ModifiedBy { get; set; }
        public string ConnectionId { get; set; }
    }

    public class UserRoleViewModel
    {
        public string UserName { get; set; }

        public long UserId { get; set; }

        public int RoleId { get; set; }

        public string RoleName { get; set; }
    }
}
