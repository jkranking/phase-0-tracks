require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("calendar.db")

create_table_events = <<-SQL
  CREATE TABLE IF NOT EXISTS events(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    time TIME,
    date_id INT,
    FOREIGN KEY (date_id) REFERENCES date(id)
  )
SQL

create_table_dates = <<-SQL
  CREATE TABLE IF NOT EXISTS dates(
    id INTEGER PRIMARY KEY,
    date DATE
  )
SQL

db.execute(create_table_events)
db.execute(create_table_dates)

# add test rows
# db.execute("INSERT INTO events (name, location, time, date_id) VALUES ('rails workshop', '83 S. King Street, Suite 250, Seattle, WA', strftime('%H:%M', 'now'), 1)")
# db.execute("INSERT INTO dates (date) VALUES (date('now'))")

def lookup_by_date(db, date)
    puts "On #{date} you have the following events:"
  db.execute("SELECT dates.date, events.name, events.time, events.location FROM events, dates WHERE events.date_id = dates.id AND dates.date = ?", [date]) do |row|
    puts "#{row[1]}, is at #{row[3]} and is located at #{row[2]}"
  end 
end 

def show_week(db)
  week = []
  d = Date.today
  int = 0
  7.times do |int| 
    week.push((d + int).to_s)
    int +=1
  end
  puts "You have following events for the next 7 days:"
  db.execute("SELECT dates.date, events.name, events.time, events.location FROM events, dates WHERE events.date_id = dates.id") do |row|
    if week.include? row[0]
      puts "On #{row[0]}, your event, #{row[1]}, is at #{row[3]} and is located at #{row[2]}"
    end 
  end 
end 

def lookup_by_event(db, event)
  positiive_search = false
  db.execute("SELECT dates.date, events.name, events.time, events.location FROM events, dates WHERE events.date_id = dates.id") do |row|

    # Instead of running "SELECT" to find the specific event, I'm searching for the event on the row via include? (as shown below) so that users don't have type the exact event to pull it up and can instead type a keyword which will now pull up the event from the database. I use this syntax throughout the program.  

    if row[1].include? event
      puts "On #{row[0]}, your event, #{row[1]}, is at #{row[3]} and is located at #{row[2]}"
      positive_search = true 
    else puts "Sorry, I could not find that event" if positive_search == false
    end 
  end 
end 

def create_event(db, date, name, time, location)
  date_id = db.execute("SELECT dates.id FROM dates WHERE dates.date = ?", [date]) 
    if date_id == []
      db.execute("INSERT INTO dates (date) VALUES (?)", [date])
      date_id = db.execute("SELECT dates.id FROM dates WHERE dates.date = ?", [date])
      db.execute("INSERT INTO events (name, time, location, date_id) VALUES (?, ?, ?, ?)", [name, location, time, date_id])
    else db.execute("INSERT INTO events (name, time, location, date_id) VALUES (?, ?, ?, ?)", [name, location, time, date_id])
    end 
  row = db.execute("SELECT dates.date, events.name, events.time, events.location FROM events JOIN dates ON events.date_id = dates.id WHERE events.name = ?", [name])
  puts "Your event, #{row[0][1]}, on #{row[0][0]} at #{row[0][3]} and located at #{row[0][2]} was saved to your calendar"
end 

def edit_event(db, event, column, edit)
  positiive_search = false
  db.execute("SELECT events.name FROM events") do |row|
    if row[0].include? event
      db.execute("UPDATE events SET '#{column}'=? WHERE events.name=?", [edit, row[0]])
      puts "Your event has been updated." 
      positiive_search = true 
    else puts "Sorry, I could not find that event" if positiive_search == false
    end 
  end
end

def delete_event(db, event)
  db.execute("SELECT events.id, events.name FROM events") do |row|
    if row[1].include? event
    db.execute("DELETE FROM events WHERE id=?", [row[0]])
    end 
  end 
  puts "The #{event} event was deleted from your calendar"
end 

#driver code
# edit_event(db, "rails", "time", "12:30")
# delete_event(db, "ruby")
# show_week(db)
# create_event(db, 2016-11-4, "rails", "12:00", "downtown")

loop do 
  puts 
  puts "What would you like to do in your calendar?"
  puts "to look up by date, type 'date'"
  puts "to show the next 7 days type 'week'"
  puts "to look up by event, type 'event'"
  puts "to add a new event, type 'add event'"
  puts "to edit or delete an event, type 'edit'"
  puts "to exit your Calendar, type 'quit'"
  response = gets.chomp.downcase
  break if response == 'quit'
  if response == "date"
    puts "Please type what date you would like to look up, for example, 11/02/2016"
    response = gets.chomp.to_str.split("/")
    date_array = []
    date_array.push(response[2], response[0], response[1])
    date = date_array.flatten.join("-")
    lookup_by_date(db, date)
  elsif response == "week"
    show_week(db)
  elsif response == "event"
    puts "Please type what event you are looking for"
    event = gets.chomp.downcase
    lookup_by_event(db, event)
  elsif response == "add event"
    puts "Please type the date of the event, for example, 11/02/2016"
    response = gets.chomp.to_str.split("/")
    date_array = []
    date_array.push(response[2], response[0], response[1])
    date = date_array.flatten.join("-")
    puts "Please type the name of the event"
    name = gets.chomp
    puts "Please type the time of the event in military time, for example, 16:30"
    time = gets.chomp
    puts "Please type the location of the event"
    location = gets.chomp
    create_event(db, date, name, time, location)
  elsif response == "edit"
    puts "Type 'edit' if you would like to edit your calendar or 'delete' if you would like to delete an event."
    response = gets.chomp.downcase
    if response == "delete"
      puts "what event would you like to delete?"
      event = gets.chomp
      delete_event(db, event)
    else  puts "what event do you want to edit?"
      event = gets.chomp
      puts "What would you like to edit from #{event}? Type, 'date', 'name', 'time', or 'location'?"
      column = gets.chomp
      puts "What would you like to change the #{column} to?"
      edit = gets.chomp
      edit_event(db, event, column, edit)
    end 
  else puts "I didn't understand your response"
  end 
end 

puts "Thanks for visiting your Calendar!"
