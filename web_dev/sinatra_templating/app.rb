# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/student_search' do 
  name = params['name']
  if name 
    name_array = []
    student = db.execute("SELECT * FROM students")
    student.each do |row|
      if row[1].include? name
        name_array.push(row)
      end
    end 
    @name_array = name_array[0]
  end 
  erb :search_student
end 



# Add an ERB template to the application in phase-0-tracks/web_dev/sinatra_templating. It can be relevant to the other pages or something totally different, but it should use at least one dynamic piece of data (which you'll populate in the next release).
