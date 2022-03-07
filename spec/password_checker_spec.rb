require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true when password length is >= 8" do
    password_checker = PasswordChecker.new
    password_true = password_checker.check("lsdkfhtje")
    expect(password_true). to eq true
  end

  it "fails when password length is < 8" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("thekd") }.to raise_error "Invalid password, must be 8+ characters."
  end
end