<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration Form</title>
    <%@ include file="header.jsp"%>
</head>
<body>
<div class="container">
    <div class="panel">
        <div class="panel-default">
            <div class="rows">
                <div class="col-md-2"></div>
                    <div class="col-md-8 jumbotron">
                        <form action="save_user" method="post" class="form-horizontal">
                            <fieldset>
                                <legend>User Registration Form</legend>
                                <div class="form-group">
                                    <label>User Name</label>
                                    <input type="text" name="username" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" name="password" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>User Email</label>
                                    <input type="email" name="email" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>DOB</label>
                                    <input type="date" name="dob" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Mobile No</label>
                                    <input type="number" name="mobileNo" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Gender</label>
                                    <input type="radio" name="gender" value="Male">Male
                                    <input type="radio" name="gender" value="Female">Female

                                </div>
                                <div class="form-group">
                                    <label>Hobbies</label>
                                    <input type="checkbox" name="hobbies" value="reading">Reading
                                    <input type="checkbox" name="hobbies" value="playing">Playing

                                </div>
                                <div class="form-group">
                                    <label>Nationality</label>
                                    <select name="nationality" class="form-control">
                                        <option value="Nepalese">Nepalese</option>
                                        <option value="Indian">Indian</option>
                                        <option value="American">American</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Comments</label>
                                    <textarea rows="5" cols="20" name="comments" class="form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Submit" class="btn btn-success">
                                </div>
                            </fieldset>
                        </form>
                    </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>