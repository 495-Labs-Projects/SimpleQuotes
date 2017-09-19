<h1>Part 1: Getting Started</h1>

<ol>
<li>
<p>Create a new rails application called "SimpleQuotes" and initialize a blank git repository inside the app:</p>

<pre><code>rails new SimpleQuotes
cd SimpleQuotes
git init .
</code></pre>
</li>
<li>
<p>Add all the files generated by rails to the repo and verify that all files are staged with the command <code>git status</code>. Commit these files by typing to git and verify again with <code>git status</code>.</p>

<pre><code>git add .
git commit -m 'Base rails app'
</code></pre>
</li>
<li>
<p>Checkout a new branch called "quote". We will merge this back into <code>master</code> later.</p>

<pre><code>git checkout -b quote
</code></pre>
</li>
<li>
<p>Create the <code>Quote</code> model and scaffolding using the rails generator. (Substitute the correct values):</p>

<pre><code>rails generate scaffold &lt;Model&gt; &lt;attribute&gt;:&lt;data type&gt;
</code></pre>
</li>
</ol>

<p>Your model should be <code>Quote</code>, with <code>body:string</code> and <code>source:string</code>. When generating the scaffold, multiple attributes (with colon and data type) are separated by a single space.</p>

<ol>
<li><p>Visit the <a href="http://apidock.com">Rails API documentation</a> from your browser for reference.</p></li>
<li><p>Open your rails project in your preferred editor.</p></li>
<li>
<p>Open the <code>config/database.yml</code> file and change the name of the development database to match the following:</p>

<div class="highlight highlight-yaml"><pre><span class="l-Scalar-Plain">development</span><span class="p-Indicator">:</span>
  <span class="c1"># ... other stuff</span>
  <span class="l-Scalar-Plain">database</span><span class="p-Indicator">:</span> <span class="l-Scalar-Plain">db/quotes_dev.sqlite3</span>
</pre></div>

<p><strong>Do not change anything else in the file!</strong></p>
</li>
<li>
<p>Go to the <code>db/migrate</code> directory and verify there is a file named <code>&lt;somenumber&gt;_create_quotes.rb</code>. Open this file and make sure the content is accurate.</p>

<p>Set the default value of <code>source</code> to "Anonymous".  To do this, change the line with <code>:source</code> to</p>

<div class="highlight highlight-ruby"><pre><span class="n">t</span><span class="o">.</span><span class="n">string</span> <span class="ss">:source</span><span class="p">,</span> <span class="ss">default</span><span class="p">:</span> <span class="s2">"Anonymous"</span>
</pre></div>
</li>
<li>
<p>Migrate the database:</p>

<pre><code>bundle exec rake db:migrate
</code></pre>
</li>
<li>
<p>Commit your work with git. First type <code>git status</code> to see what needs to be staged. You will notice that in addition to the <code>config/database.yml</code> change you made, rails automatically edited your <code>routes.rb</code> file to include routing information for the new model you created.</p>

<pre><code>git status
</code></pre>

<p>In addition, there are a number of new files related to the quotes scaffolding that need to be added to the project. Since these are all related, we will add them all at once to the staging level with <code>git add .</code>. </p>

<pre><code>  git add .
</code></pre>

<p>Now commit these changes from staging to the repository by typing. Type git log to see a history of the repository changes.</p>

<pre><code>  git commit -m "Quote model scaffolded; db minor edits"
</code></pre>
</li>
<li>
<p>Start up the development web server</p>

<pre><code>bundle exec rails server
</code></pre>
</li>
<li><p>Open up your browser and go to <a href="http://localhost:3000">localhost:3000</a> to view the application.  </p></li>
<li><p>Click on the "About the application environment" link to confirm all is working properly.</p></li>
<li><p>Add a <code>/quotes</code> to the end of the URL to get to the main quotes page.</p></li>
<li><p>Use the web ui to enter in at least three quotes from the <a href="http://67272.cmuis.net/files/67272/famous_quotes.pdf">famous quotes database</a>. Update one quote. Destroy one quote.</p></li>
<li>
<p>Now that the basic CRUD functionality is working and the app is populated with test data, let's merge it back to the master branch. </p>

<pre><code>git checkout master
git merge quote
</code></pre>
</li>
</ol>

<hr>

<h1>
<span class="mega-icon mega-icon-issue-opened"></span> Stop</h1>

<p>Show a TA that you have the Rails app set up, that the CRUD functionality of the app is working, and have properly saved the code to git. Make sure the TA initials your sheet.</p>

<hr>

<h1>Part 2: Model, View, and Controller</h1>

<ol>
<li><p>Download the <a href="https://github.com/profh/67272_lab4_starter">additional lab materials</a> from github.com.</p></li>
<li>
<p>Unzip the file and familiarize yourself with the contents. Go back to the command line and create a new git branch called 'styling' and check out the code to that branch so we can experiment with some styling.</p>

<pre><code>git checkout -b styling
</code></pre>
</li>
<li><p>Add the image <code>quips_n_quotes.png</code> to your <code>app/assets/images</code> directory.</p></li>
<li><p>Add the <code>my_styles.css</code> file to your <code>app/assets/stylesheets</code> directory.</p></li>
<li>
<p>Edit the <code>my_styles.css</code> stylesheet so that the base font is Verdana and font-size is 14px:</p>

<div class="highlight highlight-css"><pre><span class="nt">html</span><span class="o">,</span> <span class="nt">body</span> <span class="p">{</span>
  <span class="k">font-family</span><span class="o">:</span> <span class="n">Verdana</span><span class="p">;</span>
  <span class="k">font-size</span><span class="o">:</span> <span class="m">14px</span><span class="p">;</span>
<span class="p">}</span>
</pre></div>
</li>
<li>
<p>Edit the <code>h1</code> tags display text in bold and at a font-size 180% of the base size:</p>

<div class="highlight highlight-css"><pre><span class="nt">h1</span> <span class="p">{</span>
  <span class="k">font-size</span><span class="o">:</span> <span class="m">180%</span><span class="p">;</span>
  <span class="k">line-height</span><span class="o">:</span> <span class="m">1</span><span class="o">.</span><span class="m">5</span><span class="p">;</span>
<span class="p">}</span>
</pre></div>
</li>
<li>
<p>Now we want to edit the application layout (<code>app/views/layouts/application.html.erb</code>).</p>

<p>Use the following as a template to get you started. Make sure to look at the API documentation before asking a TA for help.</p>

<div class="highlight highlight-erb"><pre><span class="x">  &lt;html&gt;</span>
<span class="x">    &lt;head&gt;</span>
<span class="x">      &lt;meta http-equiv="Content-type" content="text/html; charset=utf-8"&gt;</span>
<span class="x">      &lt;title&gt;Quips and Quotes :: </span><span class="cp">&lt;%=</span> <span class="n">controller</span><span class="o">.</span><span class="n">controller_name</span><span class="o">.</span><span class="n">capitalize</span> <span class="cp">%&gt;</span><span class="x">&lt;/title&gt;</span>
<span class="x">      &lt;link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /&gt;</span>

<span class="x">      &lt;!-- #stylesheet: add my_styles using rails helper function# --&gt;</span>
<span class="x">      &lt;!-- #javascript: add defaults using rails helper function# --&gt;</span>

<span class="x">      </span><span class="cp">&lt;%=</span> <span class="n">csrf_meta_tag</span> <span class="cp">%&gt;</span><span class="x"></span>
<span class="x">    &lt;/head&gt;</span>

<span class="x">    &lt;body&gt;</span>
<span class="x">      &lt;div id="wrap"&gt;</span>
<span class="x">        &lt;div id="header"&gt;</span>
<span class="x">          </span><span class="cp">&lt;%=</span> <span class="n">link_to</span><span class="p">(</span><span class="n">image_tag</span><span class="p">(</span><span class="s1">'quips_n_quotes.png'</span><span class="p">),</span> <span class="n">home_path</span><span class="p">)</span> <span class="cp">%&gt;</span><span class="x"></span>
<span class="x">         &lt;/div&gt;</span>
<span class="x">         &lt;br /&gt;</span>

<span class="x">         &lt;div id="body"&gt;</span>
<span class="x">           </span><span class="cp">&lt;%=</span> <span class="k">yield</span> <span class="cp">%&gt;</span><span class="x"></span>
<span class="x">         &lt;/div&gt;</span>

<span class="x">         &lt;!-- #footer partial should go here later (but not yet...)# --&gt;</span>

<span class="x">      &lt;/div&gt;</span>
<span class="x">    &lt;/body&gt;</span>
<span class="x">  &lt;/html&gt;</span>
</pre></div>
</li>
<li>
<p>Make sure Rails can find the new home page by adding the code below to the <code>config/routes.rb</code> file.  Add this code right after the <code>resources :quotes</code> line.  (You can delete the comments after you read them and clean up the file as well.) </p>

<div class="highlight highlight-ruby"><pre><span class="n">resources</span> <span class="ss">:quotes</span>

<span class="n">get</span> <span class="s1">'home/index'</span> <span class="o">=&gt;</span> <span class="s1">'home#index'</span><span class="p">,</span> <span class="ss">as</span><span class="p">:</span> <span class="ss">:home</span>
<span class="n">root</span> <span class="ss">to</span><span class="p">:</span> <span class="s1">'home#index'</span>
</pre></div>
</li>
<li><p>Promote these changes to the staging level in git and then commit them to the repository's styling branch.</p></li>
<li>
<p>Start the rails server and in browser click on the logo at the top of the page.</p>

<p>Solve this error on your own.  (Just kidding...)</p>

<p>The problem is that the layout references a 'home_path'  to a controller that we have not yet created.</p>
</li>
<li>
<p>Go back to master and then create a new branch off master called 'home'.</p>

<div class="highlight highlight-bash"><pre>git checkout master
git checkout -b home
</pre></div>

<p>Stop for a minute and look at your <code>app/assets/images</code> directory – the image you added is gone as are a number of other files you added! (Not really, it just isn't part of this branch so it looks as if it were gone - we will bring it back shortly.) </p>

<p>In the meantime, let’s continue on and create the new <code>home</code> branch.</p>
</li>
<li>
<p>Now we can create a home controller with an index action:</p>

<div class="highlight highlight-bash"><pre>bundle <span class="nb">exec </span>rails generate controller Home index
</pre></div>

<p>This will create a controller called 'home_controller' with an index action as well as the associated view. </p>
</li>
<li>
<p>Go to the <code>app/controllers/home_controller.rb</code> file and add the following line to the <code>index</code> method:</p>

<div class="highlight highlight-ruby"><pre><span class="k">def</span> <span class="nf">index</span>
  <span class="c1"># ... existing code</span>
  <span class="vi">@quote</span> <span class="o">=</span> <span class="no">Quote</span><span class="o">.</span><span class="n">get_random_quote</span>
<span class="k">end</span>
</pre></div>
</li>
<li>
<p>Replace the generic contents of <code>app/views/home/index.html.erb</code> with the sample code below.  Of course, replace each of the commented erb tags (<code>&lt;%= %&gt;</code>) with the appropriate line of code.</p>

<div class="highlight highlight-erb"><pre><span class="x">&lt;p&gt;This site is an eclectic set of (somewhat) famous quotes. Today's quote of the day is as follows:&lt;/p&gt;</span>
<span class="x">&lt;p&gt;&amp;nbsp;&lt;/p&gt;</span>

<span class="x">&lt;h1&gt;</span><span class="cp">&lt;%=</span> <span class="c1"># QUOTE BODY GOES HERE </span><span class="cp">%&gt;</span><span class="x">&lt;/h1&gt;&lt;br&gt;</span>

<span class="x">&lt;h2&gt;</span><span class="cp">&lt;%=</span> <span class="c1"># SOURCE GOES HERE </span><span class="cp">%&gt;</span><span class="x">&lt;/h2&gt;</span>

<span class="x">&lt;p&gt;&amp;nbsp;&lt;/p&gt;</span>
<span class="cp">&lt;%=</span> <span class="n">link_to</span> <span class="s1">'Add a new quote to our list'</span><span class="p">,</span> <span class="n">new_quote_path</span> <span class="cp">%&gt;</span><span class="x"></span>
</pre></div>
</li>
<li>
<p>Open the <code>Quote</code> model in <code>app/models/quote.rb</code> and add in the method <code>get_random_quote</code> below.  </p>

<div class="highlight highlight-ruby"><pre><span class="c1"># Method to get a random quote for home page</span>
<span class="c1"># </span>
<span class="c1"># @return [Quote]</span>
<span class="c1">#   the random quote </span>
<span class="k">def</span> <span class="nc">self</span><span class="o">.</span><span class="nf">get_random_quote</span>
  <span class="nb">self</span><span class="o">.</span><span class="n">all</span><span class="o">.</span><span class="n">sample</span>
<span class="k">end</span>
</pre></div>

<p>Add in some basic validation by requiring a body for the quote.  The appropriate code would be:</p>

<div class="highlight highlight-ruby"><pre>  <span class="n">validates_presence_of</span> <span class="ss">:body</span>
</pre></div>
</li>
<li><p>Commit all these changes to git.</p></li>
<li>
<p>Now we need to merge these changes onto the master branch. Switch back to the master branch now.  Using the command <code>git merge home</code> to pull the contents of the home branch into the master branch.  </p>

<pre><code>git checkout master
git merge home
</code></pre>

<p>Commit these changes to git.</p>
</li>
<li><p>When we restart the server, we see the correct information displayed on <code>home/index</code>, but no styling or image can be seen. That’s because we haven’t merged the contents of the styling branch into the master branch. Do that now and see that the appropriate styling exists.</p></li>
<li>
<p>Finally, it's time to add a statement of ownership to the footer of every page.</p>

<p>In the <code>app/views</code> directory create a new directory called <code>partials</code>.</p>
</li>
<li>
<p>Create a new file in that directory called <code>_footer.html.erb</code> and add the contents shown below.  </p>

<div class="highlight highlight-erb"><pre><span class="x">&lt;div id="footer"&gt;</span>
<span class="x">  &lt;div id="copy"&gt;</span>
<span class="x">    Webmaster: </span><span class="cp">&lt;%=</span> <span class="c1"># your mail_to link goes here; encode with javascript </span><span class="cp">%&gt;</span><span class="x"> </span>
<span class="x">    Copyright &amp;copy; 2016</span>
<span class="x">  &lt;/div&gt;</span>
<span class="x">&lt;/div&gt;</span>
</pre></div>

<p>Note that you need to edit the <a href="http://apidock.com/rails/ActionView/Helpers/UrlHelper/mail_to">mail_to link</a> so that it displays your name, references your email address and is encoded with Javascript (to prevent spammers from harvesting it).</p>
</li>
<li>
<p>Go to the <code>application.html.erb</code> file in the layouts directory and replace the #footer partial# comment with an erb tag that renders the partial footer you just created.</p>

<div class="highlight highlight-ruby"><pre><span class="o">&lt;%=</span> <span class="n">render</span> <span class="ss">partial</span><span class="p">:</span> <span class="s1">'partials/footer'</span> <span class="o">%&gt;</span>
</pre></div>

<p>Note that we don't include the <code>_</code> (underscore) or extension (<code>.html.erb</code>).</p>
</li>
<li><p>Restart the web server and view the site. Reload the home page several times to see new quotes appear.</p></li>
<li><p>Add new quotes (try once to skip the body and see the error message that is given) in the quotes section.</p></li>
<li><p>Commit the changes to git.</p></li>
</ol>

<hr>

<h1>
<span class="mega-icon mega-icon-issue-opened"></span> Stop</h1>

<p>Show a TA that your website is working, has a footer and random quote, and that you have committed your changes to git. Make sure the TA initials your sheet.</p>

<hr>

<h1>Part 3: Submitting to a Remote Repository</h1>

<p>There is a great tutorial online for using remote repositories that I encourage you to check out later at <a href="https://www.atlassian.com/git/tutorial/remote-repositories">atlassian.com</a>.  Our goal here is to get you to submit a project to a remote repository today so we know you are prepared to do so when we start phase 2.  We will be submitting the lab you finished and have stored in a local git repository.</p>

<ol>
<li><p>Go to <a href="http://darkknight.hss.cmu.edu/users/password/new">http://darkknight.hss.cmu.edu/users/password/new</a> and type in your andrew email address (e.g. <a href="mailto:andrewid@andrew.cmu.edu">andrewid@andrew.cmu.edu</a>). Check your Andrew Email and you should see an link to reset your DarkKnight password. Once you have done that login with your new password. Ask a TA if you need help.</p></li>
<li><p>You will have to upload your SSH key to the gitlab server.  There is a <a href="http://67272.cmuis.net/files/67272/GitLab_Instructions.pdf">document</a> that will walk you through this process and TAs can help you with this as well.   (<em>As you go through this tutorial, please remember that you are not Sally User, so replace 'suser' with your own Andrew ID.</em>)</p></li>
<li><p>Once your key is saved to gitlab, switch to the home directory of your project.  Be sure this is where your git repository is by typing <code>ls -a</code> and seeing that you have a hidden <code>.git</code> directory there.</p></li>
<li><p>Verify that you currently have no remote repository specified by typing <code>git remote -v</code>.  The -v flag tells us to be verbose and print out the remote url, if it exists.  You should get no results from this command.</p></li>
<li>
<p>Add a connection to the remote repository called 'origin' by typing the command below (replacing your Andrew ID where appropriate).  The reason this is phase_1.git is that this portion of the lab counts as credit for part of Phase 1.</p>

<div class="highlight highlight-bash"><pre>git remote add origin git@darkknight.hss.cmu.edu:YOURANDREWID/SimpleQuotes.git
</pre></div>
</li>
<li><p>Verify that the connection to the remote repository exists by retyping <code>git remote -v</code>.  Now you should see two urls listed for origin -- one to push and the other to fetch.</p></li>
<li>
<p>Push your code out to the remote repository with the command:</p>

<div class="highlight highlight-bash"><pre>git push origin master
</pre></div>
</li>
<li><p>Go to <a href="http://darkknight.hss.cmu.edu/">darkknight.hss.cmu.edu</a> and verify your project and all its files are in the remote repository.</p></li>
</ol>

<hr>

<h1>
<span class="mega-icon mega-icon-issue-opened"></span> Stop</h1>

<p>Show a TA that you have completed the first part. Make sure the TA initials your sheet.</p>

<hr>

<h1>Part 4: SQLite Practice</h1>

<p><strong>Note: If you are out of time, you may finish this last part outside of lab. You will get full credit for this lab.</strong></p>

<ol>
<li>Now we will practice interacting with the database directly. Using the SQLite Manager in Firefox, <a href="http://menial.co.uk/base/">Base</a>, or the command line, open the <code>db/quotes_dev.sqlite3</code> database. </li>
</ol>

<p>If you want to use the command line, you can type <code>rails db</code> as a shortcut to open the database. Typing <code>.quit</code> will return you to the command line. Typing <code>.mode column</code> and <code>.header on</code> will make the output more readable.</p>

<ol>
<li>Experiment with the interface by adding, deleting and searching for quotes using SQL. When you are ready, demonstrate to a TA that you can perform all three of these operations in SQLite Manager or on the command line.</li>
</ol>

<hr>

<h1>
<span class="mega-icon mega-icon-issue-opened"></span> Stop</h1>

<p>Show a TA that you can work with a sqlite3 database. Make sure the TA initials your sheet. You are now finished with the lab.</p>

<hr>
  </div>
