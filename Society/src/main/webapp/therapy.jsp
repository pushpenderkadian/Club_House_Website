<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.SecretTherapy" %>
<%@page import="org.hibernate.Session" %>
<%@page import="java.util.List" %>
<%@page import="org.hibernate.query.Query" %>
<%
Session s = FactoryProvider.getFactory().openSession();
Transaction tx = s.beginTransaction();
Query q = s.createQuery("FROM SecretTherapy");
List<SecretTherapy> ST = q.list();
tx.commit();
s.close();
%>
<!DOCTYPE jsp>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Therapy</title>
    <link rel="stylesheet" href="./css/therapy.css">
    <link rel="stylesheet" href="./css/navbar.css">
    <link rel="shortcut icon" href="media/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <header class="top-head">
        <a class="logo" href="/"><img src="media/logo.png" alt="logo" height="60px"></a>
        <nav>
            <ul class="nav-links">
                <li><a class="gym" href="index.jsp">Home</a></li>
          <li><a class="gym" href="gym.jsp">Gym</a></li>
          <li><a class="gym" href="pool.jsp">Pool</a></li>
          <li><a class="gym" href="parking.jsp">Parking</a></li>
          <li><a class="gym" href="feedback.jsp">Anonymous Feedback</a></li>
          <li><a class="gym" href="login.jsp">Login</a></li>
            </ul>
        </nav>
        <p class="menu kbc">Menu</p>
    </header>
    <div class="overlay">
        <a class="close">&times;</a>
        <div class="overlay__content">
        <a href="index.jsp">Home</a>
        <a href="gym.jsp">Gym</a>
        <a href="pool.jsp">Pool</a>
        <a href="parking.jsp">Parking</a>
        <a href="feedback.jsp">Anonymous Feedback</a>
        <a href="login.jsp">Login</a>
        </div>
    </div>
    <div class="pool-container">
        <h2>Secret Therapy</h2>
    <form action="SecretTherapySlotBook" method="post">
        <div class="pool-slots">
            <table>
                <tr>
                    <th>TIMINGS</th>
                    <th>BOOK</th>
                    <th>Psychiatrist</th>
                    <th>TIMINGS</th>
                    <th>BOOK</th>
                    <th>Psychiatrist</th>
                </tr>
                <tr>
                    <td>7:00-7:30</td>
                    <td>
                <%if(ST.get(0).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="1" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(0).isBooked()){
                	out.println(ST.get(0).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                    <td>7:30-8:00</td>
                       <td>
                <%if(ST.get(1).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="2" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(1).isBooked()){
                	out.println(ST.get(1).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                </tr>
                <tr>
                    <td>8:00-8:30</td>
                        <td>
                <%if(ST.get(2).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="3" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(2).isBooked()){
                	out.println(ST.get(2).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                    <td>8:30-9:00</td>
                       <td>
                <%if(ST.get(3).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="4" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(3).isBooked()){
                	out.println(ST.get(3).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                 
                </tr>
                <tr>
                    <td>17:00-17:30</td>
                       <td>
                <%if(ST.get(4).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="5" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(4).isBooked()){
                	out.println(ST.get(4).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                    <td>17:30-18:00</td>
                       <td>
                <%if(ST.get(5).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="6" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(5).isBooked()){
                	out.println(ST.get(5).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                 
                </tr>
                <tr>
                    <td>18:00-18:30</td>
                       <td>
                <%if(ST.get(6).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="7" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(6).isBooked()){
                	out.println(ST.get(6).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                    <td>18:30-19:00</td>
                       <td>
                <%if(ST.get(7).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="8" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(7).isBooked()){
                	out.println(ST.get(7).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                </tr>
                <tr>
                    <td>19:00-19:30</td>
                       <td>
                <%if(ST.get(8).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="9" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(8).isBooked()){
                	out.println(ST.get(8).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                    <td>19:30-20:00</td>
                       <td>
                <%if(ST.get(9).isBooked()){
                	out.println("Booked");
                }else{ 	%>
               
                        <button type="submit" value="10" name="slot" class="booking">Book</button>
                 <% }%>
                    </td>
                    <td>
                    <%if(ST.get(9).isBooked()){
                	out.println(ST.get(9).getDocName());
                }else{ 
                out.println("");
                }	%>
                
                    </td>
                </tr>
                <tr>
                <td>
				   <div class="btn-group">

					<select name="docName" class="btn btn-primary dropdown-toggle" required>
					  <option value="" selected disabled hidden>Choose Psychiatrist</option>
					  <option class="dropdown-item"  value="Dr. Ketan Parmar">Dr. Ketan Parmar</option>
					  <option class="dropdown-item" value="Dr. Naazneen Ladak">Dr. Naazneen Ladak</option>
					  <option class="dropdown-item"  value="Dr. Rohan Bhalla">Dr. Rohan Bhalla</option>
					  <option class="dropdown-item"  value="Dr. Aditya Nair">Dr. Aditya Nair</option>
					</select>
				   
				  </div>
				  </td>
				  </tr>
            </table>
        </div>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/navbar.js"></script>
</body>
</html>