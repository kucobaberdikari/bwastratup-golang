package user

type RegisterUserInput struct {
	Name       string `json:"name" binding:"required"`
	Occupation string `json:"occupation" binding:"required"`
	Email      string `json:"email" binding:"required,email"`
	Password   string `json:"password" binding:"required"`
}

type LoginInput struct {
	Email    string `json:"email" form:"email" binding:"required,email"`
	Password string `json:"password" form:"password" binding:"required"`
}

type CheckEmailInput struct {
	Email string `json:"email" binding:"required,email"`
}

type FormCreateUserInput struct {
	Name        string `form:"name" binding:"required"`
	Email       string `form:"email" binding:"required,email"`
	Occupation  string `form:"occupation" binding:"required"`
	Password    string `form:"password" binding:"required"`
	Description string `form:"description" binding:"required"`
	Error       error
}

type FormUpdateUserInput struct {
	ID          int
	Name        string `json:"name" form:"name" binding:"required"`
	Email       string `json:"email" form:"email" binding:"required,email"`
	Occupation  string `json:"occupation" form:"occupation" binding:"required"`
	Description string `json:"description" form:"description" binding:"required"`

	Error error
}

type UpdatePasswordInput struct {
	Password string `json:"password" binding:"required"`
}

type GetUserByID struct {
	ID int `uri:"id" binding:"required"`
}
