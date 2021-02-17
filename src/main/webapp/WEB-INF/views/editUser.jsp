<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit User Registration Form</title>
    <%@ include file="header.jsp"%>

</head>
<body>
<div>
    <div>
        <form action="update_user" method="post">
            <div>
                <label>User Id</label>
                <input type="number" name="id" value="${user.id}" readonly >
            </div>
            <div>
                <label>User Name</label>
                <input type="text" name="username" value="${user.username}">
            </div>
            <div>
                <label>Password</label>
                <input type="password" name="password" value="${user.password}">
            </div>
            <div>
                <label>User Email</label>
                <input type="email" name="email" value="${user.email}">
            </div>
            <div>
                <label>DOB</label>
                <input type="date" name="dob" value="${user.dob}" >
            </div>
            <div>
                <label>Mobile No</label>
                <input type="number" name="mobileNo" value="${user.mobileNo}">
            </div>
            <div>
                <label>Gender</label>
                <input type="radio" name="gender" value="Male" ${user.gender=='Male'?'checked':''}>Male
                <input type="radio" name="gender" value="Female" ${user.gender=='Female'?'checked':''}>Female

            </div>
            <div>
                <label>Hobbies</label>
                <input type="checkbox" name="hobbies" value="reading"
                <c:if test="${fn:contains(user.hobbies,'reading')}">checked</c:if>>Reading
                <input type="checkbox" name="hobbies" value="playing"
                <c:if test="${fn:contains(user.hobbies,'playing')}">checked</c:if>>Playing

            </div>
            <div>
                <label>Nationality</label>
                <select name="nationality">
                    <option value="Nepalese" ${user.nationality=='Nepalese'?'selected':''}>Nepalese</option>
                    <option value="Indian" ${user.nationality=='Indian'?'selected':''}>Indian</option>
                    <option value="American" ${user.nationality=='American'?'selected':''}>American</option>

                </select>
            </div>
            <div>
                <label>Comments</label>
                <textarea rows="5" cols="20" name="comments"> ${user.comments}"</textarea>
            </div>
            <div>
                <input type="submit" value="Submit">
            </div>
        </form>
    </div>
</div>
</body>
</html>