<?php 
    require_once __DIR__ . '/partials/getpartimens.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <h1 class="mb-5">
            Departments Archive
        </h1>
        <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>EMAIL</th>
                        <th>WEBSITE</th>
                        <th>PHONE</th>
                        <th>ACTIVE</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        if(!empty($departments)) :
                            foreach($departments as $department) : ?>
                            <tr>
                                 <td> 
                                     <?php echo $department['id']?>
                                 </td>
                                 <td> 
                                     <?php echo $department['name']?>
                                 </td>
                                 <td> 
                                     <?php echo $department['email']?>
                                 </td>
                                 <td> 
                                     <?php echo $department['website']?>
                                 </td> 
                                 <td> 
                                     <?php echo $department['phone']?>
                                 </td> 
                                 <td>
                                     <a href="./show.php?id=<?php echo $department['id']?>">
                                         view
                                     </a>
                                 </td>
                            </tr>

                            <?php endforeach;
                        endif; ?>
                </tbody>
        </table>
    </div>
</body>
</html>