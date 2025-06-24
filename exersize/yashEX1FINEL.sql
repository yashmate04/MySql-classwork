/*
-- ----------------------------------------------------------Exercise--------------------------------------------------------------------------
Exersize – 1

1. Airline :
Airlines : ( airline_id, name, country )
Airports : ( airport_id, name, city, country )
Flights : ( flight_id, airline_id, origin_airport_id, destination_airport_id,
departure_time, arrival_time )
Passengers : ( passenger_id, name, email, phone ,address )
Bookings : ( booking_id, flight_id, passenger_id, seat_number, booking_date )

2 .Hotel :
Hotels : ( hotel_id , name , location , rating )
Rooms : ( room_id , hotel_id , room_type , price , availability )
Guests : ( guest_id , name , email , phone , email )
Reservations : ( reservation_id , guest_id , room_id , check_in , check_out )
Payments : ( payment_id , reservation_id , amount , payment_date ,
payment_method )

3 .Library :
Books: ( book_id, title, author, isbn, publisher )
Members: ( member_id, name, email, membership_date )
Loans: ( loan_id, book_id, member_id, loan_date, return_date )
Reservations: ( reservation_id, book_id, member_id, reservation_date )
Staff: ( staff_id, name, position, email )

4. College :
Students : (student_id, name, email, enrollment_date , phone )
Courses : ( course_id, course_name, credits )
Enrollments : ( enrollment_id, student_id, course_id, semester )
Professors : ( professor_id, name, department, email ,contact )
Departments : ( department_id, department_name, head_of_department )

5. Birthday Party :
Events: ( event_id, name, date, location, host_id )
Guests: ( guest_id, name, email, phone, address )
Invitations: ( invitation_id, event_id, guest_id, rsvp_status )
Vendors: ( vendor_id, name, service_type, contact_info )
Event_Vendors: ( event_vendor_id, event_id, vendor_id, service_details )

6. Hospital :
Patients: ( patient_id, name, dob, gender, contact_info )
Doctors: ( doctor_id, name, specialization, contact_info )
Appointments: ( appointment_id, patient_id, doctor_id, appointment_date,
reason )
Medical_Records: ( record_id, patient_id, doctor_id, diagnosis, treatment )
Billing: ( bill_id, patient_id, amount, billing_date, payment_status )

7. Travel Agent :
Customers: ( customer_id, name, email, phone , address )
Destinations: ( destination_id, location, description )
Packages: ( package_id, destination_id, package_name, price, duration )
Bookings: ( booking_id, customer_id, package_id, booking_date )
Payments: ( payment_id, booking_id, amount, payment_date,
payment_method )

8. E-learning platform :
Courses: ( course_id, title, description, instructor_id )
Instructors: ( instructor_id, name, email, bio )
Students: ( student_id, name, email, enrollment_date )
Enrollments: ( enrollment_id, student_id, course_id, enrollment_date )
Assessments: ( assessment_id, course_id, title, due_date )

9. Cab Services :
Drivers: ( driver_id, name, license_number, phone )
Vehicles: ( vehicle_id, driver_id, make, model, license_plate )
Customers: ( customer_id, name, email, phone )
Rides: ( ride_id, driver_id, customer_id, pickup_location, dropoff_location,
ride_date )
Payments: ( payment_id , ride_id, amount, payment_date, payment_method )

10. Social Media :
Users: ( user_id, username, email, password_hash, join_date )
Posts: ( post_id, user_id, content, post_date )
Comments: ( comment_id, post_id, user_id, content, comment_date )
Likes: ( like_id, post_id, user_id, like_date )
Followers: ( follower_id, user_id, follower_user_id, follow_date )

11.E-Commerce Platform :
Customers: ( customer_id, name, email, address )
Products: ( product_id, name, description, price, stock_quantity )
Orders: ( order_id, customer_id, order_date, total_amount )
Order_Items: ( order_item_id, order_id, product_id, quantity, price )
Payments: ( payment_id, order_id, payment_date, payment_method, amount )

12. Banking System :
Customers: ( customer_id, name, email, phone, address )
Accounts: ( account_id, customer_id, account_type, balance )
Transactions: ( transaction_id, account_id, transaction_date, amount,
transaction_type )
Loans: ( loan_id, customer_id, loan_type, amount, interest_rate, start_date,
end_date )
Payments: ( payment_id, loan_id, payment_date, amount )

13. Human Resources Management :
Employees: ( employee_id, name, email, phone, hire_date, department_id )
Departments: ( department_id, department_name, manager_id )
Salaries: ( salary_id, employee_id, amount, effective_date )
Attendance: ( attendance_id, employee_id, date, status )
Leaves: ( leave_id, employee_id, leave_type, start_date, end_date, status )

14. Inventory Management :
Products: ( product_id, name, description, price, stock_quantity )
Suppliers: ( supplier_id, name, contact_info )
Purchases: ( purchase_id, supplier_id, purchase_date, total_amount )
Purchase_Items: ( purchase_item_id, purchase_id, product_id, quantity, price
)
Stock_Levels: ( stock_level_id, product_id, quantity, last_updated )

15. Online Course Platform :
Courses: ( course_id, title, description, instructor_id )
Instructors: ( instructor_id, name, bio, email )
Students: ( student_id, name, email, registration_date )
Enrollments: ( enrollment_id, student_id, course_id, enrollment_date )
Modules: ( module_id, course_id, title, content )

16. Real Store Managemeent :
Stores: ( store_id, name, location, manager_id )
Employees: ( employee_id, name, position, store_id )
Products: ( product_id, name, price, stock_quantity )
Sales: ( sale_id, store_id, product_id, quantity, sale_date )
Suppliers: ( supplier_id, name, contact_info )

17. Clinic Appointment System :
Patients : ( patient_id, name, dob, gender, contact_info )
Doctors: ( doctor_id, name, specialization, contact_info )
Appointments: ( appointment_id, patient_id, doctor_id, appointment_date,
reason )
Prescriptions: ( prescription_id, appointment_id, medication, dosage, duration
)
Medical_History: ( history_id, patient_id, details, record_date )

18. Gaming Platform :
Users: ( user_id, username, email, password_hash, join_date )
Games: ( game_id, title, genre, release_date )
Scores: ( score_id, user_id, game_id, score, score_date )
Achievements: ( achievement_id, user_id, game_id, achievement_name,
date_earned )
Friends: ( friendship_id, user_id, friend_user_id, friend_since )

19. Theater Booking System :
Shows: ( show_id, title, genre, duration, rating )
Theaters: ( theater_id, name, location, capacity )
Seats: ( seat_id, theater_id, seat_number, row_number )
Bookings:( booking_id, show_id, user_id, seat_id, booking_date )
Users: ( user_id, name, email, phone )

20. fitness center :
Members: (member id , full_name , email , membership_type , JoinDate )
Trainers : ( id , fullname , specialization, email, AvailableHours )
Classes : (Class Id , Class Name , Instructor, Schedule, Capacity )
Equipment : ( id , name , quantity , LastMaintenance , condition )

21. petrol pump :
Fule type: (FuelID INT,FuelName,FuelType,FuelDescription,PricePerLitre)
Customer Table: (Customerid,Name,Vehiclenumber,Phonenumber,RegistrationDate)
Sales Table: (SaleID,CustomerID,FuelID,Quantity,TotalAmount)
Inventory Table: (InventoryID,FuelID,Quantity,LastUpdated DATETIME)
Employee Table : (EmployeeID, Name,Position, Shift,Salary)

22. Bank:
Customer Table: (CustomerID,FirstName,LastName,PhoneNumbr,Email)
Branch Table: (CustomerID,Name,VehicleNumber,PhoneNumber,RegistrationDate) 
Sales Table: (SaleID,CustomerID,FuelID,Quantity,TotalAmount)
Transactions Table: (TransactionID,AccountID INT,TransactionDate,Amount,TransactionType)
Employees Table: ( EmployeeID,FirstName,LastName,Position,BranchID)

23. Bus:
Bus Table: (bus_id,bus_number,bus_plate,capacity)
Driver Table: (driverid,drivername,contact,license,assignedbus)
Passenger Table: (passengerid,firstName,lastname,gender,contact_info) 
Schedule Table: (schedualid,busid,departre,arrivel,rout)
 Booking Table: (bookingid,passengerid,busid,seaat_number,booking_date)
 
24. Land
Land Table:landid,land size,landprice,landaddress,landcity)
Owner Table: (ownerid,firstname,lastname,contact,email)
Broker Table: (brokerid,brokername,brokeraddress,broker_phon_no,broker_commision)
Ownership Table: (owenershipid,landid,owenerid,resetration_date,owner,stetus)
Transaction Table: (transactionid,landid,byerid,brokerid,transaction_date)

25.Amezone
Product Table: (productid,productname,categgory,price,stock_quntity)
Customer Table: (customerid,firstname,lastname,email,phone_number)
Order Table: (orderid,customerid,order_date,total_amount,total_amount)
Supplier Table: (supplierid,suppliername,contactname,contact_email,phone_number)
Employee Table: (employeeid,firstname,lastname,postion,hire_date)
*/ 
                   
                   
                   
                   