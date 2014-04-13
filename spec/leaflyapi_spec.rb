require 'spec_helper'

describe Leaflyapi do
    describe '.all' do
        it "returns an array of strains" do
            #pending # no code
            strains = Leaflyapi::Strains.all
            expect(strains).to be_a Array
        end
    end
    describe '.keys' do
      it "returns an array of strings for strain names" do
        keys = Leaflyapi::Strains.keys
        expect(keys).to be_a Array
        expect(keys.first).to be_a String
      end
    end
    describe '.find_by_key(key)' do
      it "returns a single strain by its key" do
        strain = Leaflyapi::Strains.find_by_key("girl-scout-cookie")
        expect(strain).to be_a Object
        expect(strain.key).to eq 'girl-scout-cookie'
      end
    end
    describe '.find_by_category(category)' do
      it "some stuff" do
        pending #code
      end
    end
end