#install sinatra
# gem install sinatra --no-rdoc --no-ri

#install shotgun 
# gem install shotgun

# require gems
require 'sinatra'
require 'sqlite3'

# run locally by running app $ ruby app.rb
# but we should run locally with shotgun because of the reload issue. $ shotgun app.rb

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# url /?name=Jen&age=25
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "500 King St"
end 


# url /great_job?name=jeff
get '/great_job' do
  "Good job #{params[:name]}"
end 


# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/:int_1/add/:int_2' do 
  int_1 = params[:int_1]
  int_2 = params[:int_2]
  x = int_1.to_i + int_2.to_i
  x.to_s
end 

# Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.
get '/student_search/:first_name' do
  name_array = []
  first_name = params[:first_name]
  student = db.execute("SELECT * FROM students")
  student.each do |row|
    if row[1].include? first_name
      name_array.push(row)
    end
  end 
  name_array.to_s
end
