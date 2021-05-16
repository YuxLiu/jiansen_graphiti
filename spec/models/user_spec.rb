require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }
  it { should validate_uniqueness_of :username }
  it { should validate_presence_of :username }
end
