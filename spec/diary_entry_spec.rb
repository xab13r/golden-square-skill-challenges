require 'diary_entry'

RSpec.describe DiaryEntry do
	it "constructs" do
		diary_entry = DiaryEntry.new("my_title", "my_content")
		expect(diary_entry.title).to eq "my_title"
		expect(diary_entry.contents).to eq "my_content"
	end
	
	describe "#count_words" do
		it "return the number words in the contents" do
			diary_entry = DiaryEntry.new("my_title", "some contents here")
			expect(diary_entry.count_words).to eq 3
		end
		
		it "returns zero when the content is empty" do
			diary_entry = DiaryEntry.new("my_title", "")
			expect(diary_entry.count_words).to eq 0
		end
	end
	
	describe "#reading_time" do
		context "given a wpm fo seome sensible number (200)" do
			it "returns the ceiling of the number of minutes it takes to read the contents" do
				diary_entry = DiaryEntry.new("my_title", "one " * 550)
				expect(diary_entry.reading_time(200)).to eq 3
			end
		end
		
		context "given a wpm of 0" do
			it "fails" do
				diary_entry = DiaryEntry.new("my_title", "one two three")
				expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
			end
		end
	end
	
	describe "#reading_chunk" do
		context "with a text readable within the time" do
			it "returns the full contents" do
				diary_entry = DiaryEntry.new("my_title", "one two three")
				chunk = diary_entry.reading_chunk(200, 1)
				expect(chunk).to eq "one two three"
			end
		end
		
		context "given a wpm of 0" do
			it "fails" do
				diary_entry = DiaryEntry.new("my_title", "one two three")
				expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above zero."
			end
		end
		
		context "with a text unreadable within the time" do
			it "returns a readable chunk" do
				diary_entry = DiaryEntry.new("my_title", "one two three")
				chunk = diary_entry.reading_chunk(2, 1)
				expect(chunk).to eq "one two"
			end
			
			it "return the next chunk, next time we are asked" do
				diary_entry = DiaryEntry.new("my_title", "one two three")
				diary_entry.reading_chunk(2, 1)
				chunk = diary_entry.reading_chunk(2, 1)
				expect(chunk).to eq "three"
			end
			
			it "restarts after reading the whole contents" do
				diary_entry = DiaryEntry.new("my_title", "one two three")
				diary_entry.reading_chunk(2, 1)
				diary_entry.reading_chunk(2, 1)
				chunk = diary_entry.reading_chunk(2, 1)
				expect(chunk).to eq "one two"
			end
			
			it "restarts if it finishes exactly on the end" do
				diary_entry = DiaryEntry.new("my_title", "one two three")
				diary_entry.reading_chunk(2, 1)
				diary_entry.reading_chunk(1, 1)
				chunk = diary_entry.reading_chunk(2, 1)
				expect(chunk).to eq "one two"
			end
		end
	end
end