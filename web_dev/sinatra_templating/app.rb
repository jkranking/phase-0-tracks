require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/:id' do
  @student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  erb :show
end 

get '/student/new' do
  erb :new
end

post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/update_student/:id' do
  @student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  erb :update_student
end

post '/update/:id' do
  db.execute("UPDATE students SET name=?, campus=?, age=? WHERE id=?", [params['name'], params['campus'], params['age'].to_i], [params[:id]])
  redirect '/'
end

get '/delete/:id' do 
  db.execute("DELETE FROM students WHERE id=?", [params[:id]])
  redirect '/'
end 
  
get '/student/search' do 
  name = params['name']
  name = name.downcase
  if name 
    name_array = []
    student = db.execute("SELECT * FROM students")
    student.each do |row|
      if row[1].downcase.include? name
        name_array.push(row)
      end
    end 
    @name_array = name_array
  end 
  erb :search_student
end 
