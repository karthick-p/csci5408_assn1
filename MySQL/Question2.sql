use busDB;
select trip_headsign, b.departure_time , b.trip_id from trips inner join (select trip_id, departure_time from stopTimes where departure_time >= '13:00:00' AND departure_time <= '14:00:00')b on b.trip_id = trips.trip_id;