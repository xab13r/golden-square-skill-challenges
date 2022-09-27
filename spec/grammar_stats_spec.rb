require 'grammar_stats'

RSpec.describe GrammarStats do
	it "constructs" do
		grammar_stats = GrammarStats.new
	end
	
	describe "#check" do
		it "returns true if the text begins with a capital letter and ends with a sentence-ending punctuation mark" do
			grammar_stats = GrammarStats.new
			check = grammar_stats.check("This is a good sentence.")
			expect(check).to eq true
		end
		
		it "returns false if the text does not begins with a capital letter and ends with a sentence-ending punctuation mark" do
			grammar_stats = GrammarStats.new
			check = grammar_stats.check("this is not a good sentence")
			expect(check).to eq false
		end
		
		context "when argument is not a string" do
			it "fails" do
				grammar_stats = GrammarStats.new
				expect { grammar_stats.check(2343) }.to raise_error "Text must be a string"
			end
		end
		
		context "if passed an empty string" do
			it "fails" do
				grammar_stats = GrammarStats.new
				expect { grammar_stats.check("") }.to raise_error "Please add some text"
			end
		end
	end
	
	describe "percentage_good" do
		context "if passing two correct blocks" do
			it "returns 100" do
				grammar_stats = GrammarStats.new
				check = grammar_stats.check("This is a good sentence.")
				check = grammar_stats.check("Another good one.")
				expect(grammar_stats.percentage_good).to eq 100
			end
		end
		
		context "if passing one correct block and one incorrect block" do
			it "returns 50" do
				grammar_stats = GrammarStats.new
				check = grammar_stats.check("This is a good sentence.")
				check = grammar_stats.check("not another good one.")
				expect(grammar_stats.percentage_good).to eq 50
			end
		end
		
		context "if passing two incorrect blocks" do
			it "returns 0" do
				grammar_stats = GrammarStats.new
				check = grammar_stats.check("not a good sentence.")
				check = grammar_stats.check("not another good one.")
				expect(grammar_stats.percentage_good).to eq 0
			end
		end
		
		context "if no text has been passed" do
			it "fail" do
				grammar_stats = GrammarStats.new
				expect { grammar_stats.percentage_good }.to raise_error "Please check some text before"
			end
		end
		
	end
end