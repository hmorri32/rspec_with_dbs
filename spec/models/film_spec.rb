RSpec.describe Film do
  describe "Class Methods" do
    describe ".total_box_office_sales" do
      it "returns total box office sales for all films" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)

        expect(Film.total_box_office_sales).to eq(7)
      end

      it "returns box office average for all films" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)

        expect(Film.average_box_office_sales).to eq(3.5)
      end
    end
  end

  describe 'Validations' do
    it "is invalid without a title" do
      film = Film.new(year: 2017, box_office_sales: 2)

      expect(film).to_not be_valid
    end

    it "is invalid without a year" do
      film = Film.new(title: 'cool', box_office_sales: 2)

      expect(film).to_not be_valid
    end

    it "is invalid without box_office_sales" do
      film = Film.new(title: 'cool', year: 2017)

      expect(film).to_not be_valid
    end
  end
end