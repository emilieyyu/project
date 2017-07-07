require "test_helper"

describe Textbook do
    describe "validity" do
        let(:textbook) {Textbook.new}
        
        before do
            textbook.valid?
        end
        
        it "requires a user" do
            textbook.errors[:user].must_include "can't be blank"
        end
        
        it "requires a description" do
            textbook.errors[:description].must_include "can't be blank"
        end
        
        it "requires a name" do
            textbook.errors[:name].must_include "can't be blank"
        end
        
        it "requires a price" do
            textbook.errors[:price].must_include "can't be blank"
        end
        
        it "requires a course" do
            textbook.errors[:course].must_include "can't be blank"
        end
        
        it "requires an instructor" do
            textbook.errors[:instructor].must_include "can't be blank"
        end
        
        it "requires the name to be unique for the same user" do
            existing_textbook = create (:textbook)
            textbook.name = existing_textbook.name
            textbook.user = existing_textbook.user
            textbook.valid?
            
            textbook.errors[:name].must_include"has already been taken"
        end
    end
end
