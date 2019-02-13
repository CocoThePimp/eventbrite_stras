module EventHelper

  def participate
    if current_user != @event.user
       Attendance.all.each do |attendance|
         if attendance.user_id == current_user.id && attendance.event_id == @event.id
           @i = false
           break
         else
           @i = true
         end
       end
     end
   end
end
