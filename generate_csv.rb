# coding: utf-8
require 'fileutils'
require "pry"

train_csv_path = "./ZUCK_data/train/data.csv"
test_csv_path = "./ZUCK_data/test/data.csv"

FileUtils.touch(train_csv_path) unless FileTest.exist?(train_csv_path)
FileUtils.touch(test_csv_path) unless FileTest.exist?(test_csv_path)


test_data_paths = Dir.glob("./ZUCK_data/test/zuckerberg/*.jpg")
train_data_paths = Dir.glob("./ZUCK_data/train/zuckerberg/*.jpg")


File.open(test_csv_path, "w") do |f|
  test_data_paths.each { |path| f.puts("#{path}, 0") }
end
File.open(train_csv_path, "w") do |f|
  train_data_paths.each { |path| f.puts("#{path}, 0") }
end