require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html) 
doc.css(".headline-26OIBN").text.strip 

courses = doc.css(".title-oE5vT4")

courses.each do |course|
    if course.text.strip  == "Software Engineering" ||
        course.text.strip  ==  "Data Science"||
        course.text.strip  ==  "Cybersecurity Analytics"|| 
        course.text.strip  ==  "Cybersecurity Engineering"
    puts course.text.strip 
    end 
end

