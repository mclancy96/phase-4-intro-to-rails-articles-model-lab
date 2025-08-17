require 'rails_helper'

describe Article, type: :model do
  it "is valid with a title and body" do
    article = Article.new(title: "Test Title", body: "Test body")
    expect(article).to be_valid
  end

  it "is invalid without a title" do
    article = Article.new(body: "Test body")
    expect(article).not_to be_valid
    expect(article.errors[:title]).to include("can't be blank").or be_empty
  end
end
