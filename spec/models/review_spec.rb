require 'rails_helper'

describe Review do
  it { should validate_presence_of :username }
  it { should validate_presence_of :text }
  it { should belong_to :book }
end
