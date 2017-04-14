require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { should have_many(:items).dependent(:destroy) }
  it { validate_presence_of(:title) }
  it { validate_presence_of(:created_by) }
end
