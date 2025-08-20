require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validations" do
    it "is valid with a title and body" do
      article = Article.new(title: "Test Title", body: "Test body")
      expect(article).to be_valid
    end

    it "is invalid without a title" do
      article = Article.new(body: "Test body")
      expect(article).not_to be_valid
      article.validate
      expect(article.errors[:title]).to include("can't be blank")
    end

    it "is valid with a title and empty body" do
      article = Article.new(title: "Test Title", body: "")
      expect(article).to be_valid
    end

    it "is invalid with a nil title" do
      article = Article.new(title: nil, body: "Test body")
      expect(article).not_to be_valid
      article.validate
      expect(article.errors[:title]).to include("can't be blank")
    end
  end

  context "database persistence" do
    it "can be saved with valid attributes" do
      article = Article.new(title: "Persisted Title", body: "Some body")
      expect { article.save! }.not_to raise_error
      expect(article.persisted?).to be true
    end

    it "raises error when saving without a title" do
      article = Article.new(body: "No title")
      expect { article.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context "attribute types" do
    it "has a string title and text body" do
      article = Article.new(title: "Type Test", body: "Type body")
      expect(article.title).to be_a(String).or be_nil
      expect(article.body).to be_a(String).or be_nil
    end
  end
end
