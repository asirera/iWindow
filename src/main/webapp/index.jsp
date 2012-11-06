<!doctype html>

<html>
<head>
  <meta charset="utf-8">
  <title>iWindodWebServices</title>

  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/bootstrap2.css" rel="stylesheet">
  <link rel="css/bootstrap3.css">

  <!--
  IMPORTANT:
  This is Heroku specific styling. Remove to customize.
  -->
  <link href="css/heroku.css" rel="stylesheet">
  <style type="text/css">
    .instructions {
      display: none;
    }

    .instructions li {
      margin-bottom: 10px;
    }

    .instructions h2 {
      margin: 18px 0;
    }

    .instructions blockquote {
      margin-top: 10px;
    }

    .screenshot {
      margin-top: 10px;
      display: block;
    }

    .screenshot a {
      padding: 0;
      line-height: 1;
      display: inline-block;
      text-decoration: none;
    }

    .screenshot img, .tool-choice img {
      border: 1px solid #ddd;
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      border-radius: 4px;
      -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
      -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
      box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075);
    }
  </style>
  <!-- /// -->
  <script type="text/javascript">
    <!--
    function appname() {
      return location.hostname.substring(0, location.hostname.indexOf("."));
    }
    // -->
  </script>
</head>

<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a href="/" class="brand">asirera Web Services</a>
      <!--
      IMPORTANT:
      This is Heroku specific markup. Remove to customize.
      -->
      <a href="/" class="brand" id="heroku">by <strong>heroku</strong></a>
      <!-- /// -->
    </div>
  </div>
</div>

<div class="container" id="getting-started">
<div class="row">
<div class="span8 offset2">
<h1 class="alert alert-success">Web Services</h1>

<div class="page-header">
  <h1>Get started with your Spring MVC and Hibernate Application</h1>
</div>

<div style="margin-bottom: 20px">
  Web service: <a href="/people/">people page</a>.
 Web service: <a href="people.jsp">people page</a>. 
</div>


<ul id="tab" class="nav nav-tabs">
  <li class="active"><a href="#eclipse-instructions" data-toggle="tab">Use Eclip</a></li>
  <li><a href="#cli-instructions" data-toggle="tab">Use  Line</a></li>
</ul>

<div class="tab-content">


<div id="eclipse-instructions" class="instructions tab-pane active">
  <a name="using-eclipse"></a>

  <div class="alert alert-warn"></div>
  <ol>
    <li>
      <div class="modal hide" id="importAppSelect">
        <div class="modal-header">
          <a class="close" data-dismiss="modal"><i class="icon-remove"></i></a>
          
          <h3>Import App</h3>
          </div>
        <div class="modal-body"></div></div></li>
    <li>
      <div class="modal hide" id="importApp2">
        <div class="modal-header">
          <a class="close" data-dismiss="modal"><i class="icon-remove"></i></a>
          
          <h3>Select App to import</h3>
        </div>
        <div class="modal-body">
          <img src='https://template-app-instructions-screenshots.s3.amazonaws.com/eclipse/import_app_2.png'
               alt="Create app from template"/></div></div></li>
    <li>
      <div class="modal hide" id="importApp4">
        <div class="modal-header">
          <a class="close" data-dismiss="modal"><i class="icon-remove"></i></a>
          
          <h3>Local Project and Git Repository</h3>
        </div>
        <div class="modal-body"></div>
      </div>
    </li>
</ol>
  <h2>&nbsp;</h2>
  <ol>
    <li></li>
    <li></li>
  </ol>

  <h2>&nbsp;</h2>
  <ol>
  <li>
    <div class="modal hide" id="pushResults">
        <div class="modal-header">
          <a class="close" data-dismiss="modal"><i class="icon-remove"></i></a>
          
          <h3>Push Results</h3>
        </div>
        <div class="modal-body"></div></div></li>
  </ol>

  <div class="hero-unit">
    <h1>&nbsp;</h1>
</div>
</div>


<div id="cli-instructions" class="instructions tab-pane">
  <a name="using-cli"></a>

  <h2>Step 1. Setup your environment</h2>
  <ol>
    <li>Install the <a href="http://toolbelt.heroku.com">Heroku Toolbelt</a>.</li>
    <li>Install <a href="http://maven.apache.org/download.html">Maven</a>.</li>
  </ol>

  <h2>Step 2. Login to Heroku</h2>
  <code>heroku login</code>
  <blockquote>
    Be sure to create, or associate an SSH key with your account.
  </blockquote>
            <pre>
$ heroku login
Enter your Heroku credentials.
Email: naaman@heroku.com
Password:
Could not find an existing public key.
Would you like to generate one? [Yn] Y
Generating new SSH public key.
Uploading SSH public key /Users/Administrator/.ssh/id_rsa.pub
Authentication successful.</pre>

  <h2>Step 3. Clone the App</h2>
  <code>git clone -o heroku git@heroku.com:<script>document.write(appname())</script>.git</code>

  <h2>Step 4. Makes some changes to the app</h2>
  <ol>
    <li>Open <code>src/main/java/com/example/PersonServiceImpl.java in your favorite editor</code></li>
    <li>Query the people in alphabetical order by replacing line 29 with the following two lines:
                <pre class="once language-java">
Root&lt;Person&gt; from = c.from(Person.class);
c.orderBy(em.getCriteriaBuilder().asc(from.get("lastName")));
                </pre>
    </li>
  </ol>

  <h2>Step 5. Make sure the app still compiles</h2>
  <code>mvn clean package</code>

  <h2>Step 6. Deploy your changes</h2>
  <ol>
    <li><code>git commit -am "New changes to deploy"</code></li>
    <li><code>git push heroku master</code></li>
  </ol>

  <div class="hero-unit">
    <h1>Done!</h1>

    <p>You've just cloned, modified, and deployed a brand new app.</p>
    <a href="/people/" class="btn btn-primary btn-large">See your changes</a>

   
  </div>
</div>
</div>
</div>
</div>

<!-- end tab content -->
</div>


<script src="http://twitter.github.com/bootstrap/assets/js/jquery.js"></script>
<script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-modal.js"></script>
<script src="http://twitter.github.com/bootstrap/assets/js/bootstrap-tab.js"></script>
</body>
</html>
