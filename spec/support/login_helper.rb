module LoginHelper
  def login_valid
    visit '/'
    click_link('Log In')
    current_path.should == '/login'
    fill_in(:email, :with => @crookshanks.email)
    fill_in(:password, :with => @crookshanks.password)
    click_button('Log In')
    current_path.should == '/'
    expect(page).to have_content("Hello, #{@crookshanks.name}!")
  end

  def login_invalid
    visit '/'
    click_link('Log In')
    current_path.should == '/login'
    fill_in(:email, :with => "Not")
    fill_in(:password, :with => "signed up")
    click_button('Log In')
    current_path.should == '/sessions'
    expect(page).to have_content('Log In')
  end

  def signup_valid
    visit '/'
    click_link('Sign Up')
    current_path.should == '/signup'
    fill_in("Name", :with => @kitten.name)
    fill_in("Email", :with => @kitten.email)
    fill_in("Password", :with => @kitten.password)
    fill_in("Password confirmation", :with => @kitten.password_confirmation)
    click_button('Sign Up')
    current_path.should == '/'
    visit '/users'
    expect(page).to have_content("#{@kitten.name}")
  end

  def signup_invalid
    visit '/'
    click_link('Sign Up')
    current_path.should == '/signup'
    fill_in("Name", :with => @invalid_user.name)
    fill_in("Email", :with => @invalid_user.email)
    fill_in("Password", :with => @invalid_user.password)
    fill_in("Password confirmation", :with => @invalid_user.password_confirmation)
    current_path.should == '/signup'
  end

end