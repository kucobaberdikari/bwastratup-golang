package user

type UserFormatter struct {
	ID          int    `json:"id"`
	Name        string `json:"name"`
	Occupation  string `json:"occupation"`
	Email       string `json:"email"`
	Description string `json:"description"`
	Token       string `json:"token"`
	ImageURL    string `json:"image_url"`
}

func FormatUser(user User, token string) UserFormatter {
	formatter := UserFormatter{
		ID:          user.ID,
		Name:        user.Name,
		Occupation:  user.Occupation,
		Description: user.Description,
		Email:       user.Email,
		Token:       token,
		ImageURL:    user.AvatarFileName,
	}
	return formatter
}

func FormatUserDetail(user User) UserFormatter {
	formatter := UserFormatter{
		ID:          user.ID,
		Name:        user.Name,
		Occupation:  user.Occupation,
		Description: user.Description,
		ImageURL:    user.AvatarFileName,
	}
	return formatter
}

func FormatUserEdit(user User) UserFormatter {
	formatter := UserFormatter{
		ID:          user.ID,
		Name:        user.Name,
		Occupation:  user.Occupation,
		Email:       user.Email,
		Description: user.Description,
		ImageURL:    user.AvatarFileName,
	}
	return formatter
}

type UserUpdate struct {
	ID          int    `json:"id"`
	Name        string `json:"name"`
	Occupation  string `json:"occupation"`
	Email       string `json:"email"`
	Description string `json:"description"`
	ImageURL    string `json:"image_url"`
}

func FormatUserUpdate(user User) UserUpdate {
	formatter := UserUpdate{
		ID:          user.ID,
		Name:        user.Name,
		Occupation:  user.Occupation,
		Email:       user.Email,
		ImageURL:    user.AvatarFileName,
		Description: user.Description,
	}
	return formatter
}
