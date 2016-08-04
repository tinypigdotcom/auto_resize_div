        use Dancer2;
        get '/' => sub { q{
 <?xml version="1.0" encoding="utf-8"?>
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
          <title>Conforming XHTML 1.0 Strict Template</title>
          <script  type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      </head>
      <body>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>
        This is necessary<br>

        <style>
        /* The Modal (background) */
        .Davemodalclass {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 999; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.7); /* Black w/ opacity */
        }

        /* Modal Content */
        .Davemodal-content {
            margin: auto;
            width: 80%;
            text-align: center;
        }
        </style>

        <!-- The Modal -->
        <div id="Davemodal" class="Davemodalclass">

        <!-- Modal content -->
        <div class="Davemodal-content Daveclose">
            <img id="myImg" src="dave1.jpg" width="300" height="200" style="display:hidden">
        </div>

        </div>

        <script>
        // Get the modal
        var Davemodal = document.getElementById('Davemodal');

        // Get the <span> element that closes the modal
        var Davespan = document.getElementsByClassName("Daveclose")[0];

        // When the user clicks anywhere inside the modal, close it
        Davespan.onclick = function() {
            Davemodal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == Davemodal) {
                Davemodal.style.display = "none";
            }
        }
        // A $( document ).ready() block.
        $( document ).ready(function() {
            Davemodal.style.display = "block";
            console.log( "ready!" );
        });
        </script>
      </body>
  </html>
        }};
        get '/hello' => sub { "Hello World" };
        dance;

