<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css"></link>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">    <title>Join CERA</title>
</head>
<body class="reg-body">
    <div class="welcome-msg">
        <h3>Welcome to CERA</h3>
        <p>Please fill the form below with accurate information as this is imporant for future identification with your patients.</p>
    </div>
    <form method="POST" action="processing.php">
        <input type="text" name="institutionName" placeholder="Your institution's name"/>
        <input type="text" name="location" placeholder="location"/>
        <input type="number" name="phoneNumber" placeholder="Phone number"/>
        <input type="text" name="emailAddress" placeholder="Email address"/>
        <input type="text" name="postalAddress" placeholder="Postal Address"/>
        <select name="conditions[]">
            <option selected disabled> Which of the following conditions do you cater to?</option>
            <option>Condition A</option>
            <option>Condition B</option>
            <option>Condition C</option>
        </select>
        <input type="password" id="reg-pw"  name="password" placeholder="password"/>
        <input type="submit" value="submit" name="reg-partner" class="pos-btn"/>
    </form>
</body>
</html>