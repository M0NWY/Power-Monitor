<html>
<meta http-equiv="refresh" content="60">
<head>
 <title>Simon's power graphs</title>
 <style>
  body {
    font-family: calibri,verdana,sans-serif;
    font-size: 12px;
  }
  h2 {
    background: #ccccff;
    border-top: 1px solid #6666cc;
  }
 </style>
</head>
<?php exec("/home/simon/shedometry/makegraphs.sh");
?>
<body>

 <h1>Simon's power consumption graphs</h1>
 <h2>Current Use : <?php echo exec("cat /dev/shm/power"); ?> Watts</h2>

<p><b>Note:</b> The data is not calibrated, ie. the indicated consumption is not accurate. Data updated every minute.</p>

 <h2>Previous 10 minutes</h2>
 <p><img src="graphs/power-10min.png" /></p>

 <h2>Previous hour</h2>
 <p><img src="graphs/power-60min.png" /></p>

 <h2>Previous 6 hours</h2>
 <p><img src="graphs/power-6hour.png" /></p>


 <h2>Previous 24 hours</h2>
 <p><img src="graphs/power-day.png" /></p>


 <h2>Previous week</h2>
 <p><img src="graphs/power-week.png" /></p>


 <h2>Previous month</h2>
 <p><img src="graphs/power-month.png" /></p>

 <h2>Previous year</h2>
 <p><img src="graphs/power-year.png" /></p>

 <h2>Previous 10 years</h2>
 <p><img src="graphs/power-10year.png" /></p>


<p style="text-align: center;">Shamelessly stolen code from Paul Mutton 2008 by Simon Newhouse 2013 !</p>

</body>

</html>
