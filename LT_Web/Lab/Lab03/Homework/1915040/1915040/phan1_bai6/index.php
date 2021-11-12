<?php
if(isset($_POST['first_name'])){
    $err = [];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $day = $_POST['day'];
    $month = $_POST['month'];
    $year = $_POST['year'];
    $about = $_POST['about'];

    if (strlen($first_name) < 2 || strlen($first_name) > 30) $err[] = 'Tên phải có độ dài từ 2 - 30 kí tự.';
    if (strlen($last_name) < 2 || strlen($last_name) > 30) $err[] = 'Họ phải có độ dài từ 2 - 30 kí tự.';
    $regex = "/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/";
    if (!preg_match($regex, $email)) $err[] = 'Email không đúng định dạng.';
    if (strlen($password) < 2 || strlen($password) > 30) $err[] = 'Password phải có độ dài từ 2 - 30 kí tự.';
    if ($day == 'Day') $err[] = 'Thiếu ngày sinh.';
    if ($month == 'Month') $err[] = 'Thiếu tháng sinh.';
    if ($year == 'Year') $err[] = 'Thiếu năm sinh.';
    if (strlen($about) > 1000) $err[] = 'About chỉ giới hạn 1000 kí tự.';
    if(count($err)>0)echo implode(" ",$err);
    else echo("Complete!");
};
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bai 3</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="card mx-auto" style="max-width: 500px;">
            <div class="card-header">
                <h1 class="text-center">Register</h1>
            </div>
            <div class="card-body">
                <form action="#" method = "POST" novalidate>
                    <div class="form-group">
                        <label for="first-name" class="form-label">First Name</label>
                        <input type="text" class="form-control js-first-name" placeholder="First Name" name = "first_name">
                    </div>
                    <div class="form-group">
                        <label for="last-name" class="form-label">Last Name</label>
                        <input type="text" class="form-control js-last-name" placeholder="Last Name" name = "last_name">
                    </div>
                    <div class="form-group">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control js-email" placeholder="Email" name = "email">
                    </div>
                    <div class="form-group">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control js-password" placeholder="Password" name= "password">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Birthday</label>
                        <div class="row">
                            <div class="col-4">
                                <select class="form-select js-day" name = "day">
                                    <option selected>Day</option>
                                </select>
                            </div>
                            <div class="col-4">
                                <select class="form-select js-month" name = "month">
                                    <option selected>Month</option>
                                </select>
                            </div>
                            <div class="col-4" name = "year">
                                <select class="form-select js-year" name = "year">
                                    <option selected>Year</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group js-gender">
                        <label for="gender">Gender</label>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="male" checked=true>
                                    <label class="form-check-label" for="male">
                                        Male
                                    </label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="female">
                                    <label class="form-check-label" for="female">
                                        Female
                                    </label>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="other">
                                    <label class="form-check-label" for="other">
                                        Other
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Country</label>
                        <select class="form-select js-country">
                            <option selected>Viet Nam</option>
                            <option>Australia</option>
                            <option>United States</option>
                            <option>India</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="form-group ">
                        <label for="about">About</label>
                        <textarea name="about" id="about" rows="3" class="form-control js-about"></textarea>
                    </div>
                    <div class="form-group d-flex mt-2 justify-content-center">
                        <button class="btn btn-primary me-2" type="submit" id="submit">Submit</button>
                        <button class="btn btn-warning ms-2" type="reset" id="reset">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
<script>
    const $ = document.querySelector.bind(document);
    const day = $('.js-day');
    const month = $('.js-month');
    const year = $('.js-year');

    var noDay = 31;

    function checkLeapYear(year) {
        if (year % 4 != 0) {
            return false;
        } else if (year % 400 == 0) {
            return true;
        } else if (year % 100 == 0) {
            return false;
        } else {
            return true;
        }
    }

    function getNoDay() {
        monthVal = month.value;
        yearVal = year.value;
        if (monthVal == 2) {
            if (checkLeapYear(yearVal)) noDay = 29;
            else noDay = 28;
        }
        else if (monthVal == 4 || monthVal == 6 || monthVal == 9 || monthVal == 11) noDay = 30;
        else noDay = 31;
    }

    function renderDay() {
        for (let i = 0; i < noDay; i++) {
            const opt = document.createElement('option');
            opt.innerHTML = i + 1;
            opt.value = i + 1;
            day.appendChild(opt);
        }
    }

    function changeDay() {
        const oldNoDay = noDay;
        getNoDay();
        if (oldNoDay != noDay) {
            if (noDay > oldNoDay) {
                for (let i = 0; i < noDay - oldNoDay; i++) {
                    const opt = document.createElement('option');
                    opt.innerHTML = oldNoDay + i + 1;
                    opt.value = oldNoDay + i + 1;
                    day.appendChild(opt);
                }
            }
            else {
                for (let i = 0; i < oldNoDay - noDay; i++) {
                    day.removeChild(day.querySelector('option:last-child'));
                }
            }
        }
    }

    getNoDay();
    renderDay();

    month.addEventListener('change', changeDay)

    year.addEventListener('change', changeDay)

    for (let i = 0; i < 12; i++) {
        const opt = document.createElement('option');
        opt.innerHTML = i + 1;
        opt.value = i + 1;
        month.appendChild(opt);
    }

    var currDay = new Date();
    for (let i = currDay.getFullYear(); i >= 1930; i--) {
        const opt = document.createElement('option');
        opt.innerHTML = i;
        opt.value = i;
        year.appendChild(opt);
    }
</script>

</html>