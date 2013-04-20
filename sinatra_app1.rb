require "rubygems"
require "sinatra"

get '/'  do
  time_when_1st_page_presented = Time.now.strftime("%m/%d/%Y - %H:%m")
  "
  <html>
	<style>
		fieldset {
			background-color: #AAAAFF;
		}

		label {
			clear: left;
			float: left;
			width: 5em;
			text-align: right;
			margin-right: .5em;
		}

		textarea {
			float: left;
			background-color: #CCCCFF;
			width: 80%;
		}

		h3 {
			color: red;
		}

		#button_style {
			float: left;
			clear: both;
			margin-left: 8em;
			marin-top: 1em;
			background-color: #0000cc;
			color: #FFFF11;
		}
	</style>

  	  <body>
  	  	<h3>Please type only a smart thing</h3>
		<form action='/reverse'>
		  <fieldset>
	  	  	<label>Your Blog:</label>
	  	  	<textarea name='blog' rows = '30'></textarea>
		  	<input id='button_style' type='submit'>
		  </fieldset>
		</form>
	  </body>
  </html>
  "

end

get '/reverse' do 
	date = Time.now.strftime("%m/%d/%Y")
	time = Time.now.strftime("%H:%m")
	l = params[:blog].length
	"
	#{params[:blog].gsub(/\n/,'</br>')}

	<h3 style='border: 2px blue dashed;'>
	The length of the text is #{l} characters including spaces, plus each carriage return count as 2 more chars.</br>
	Yes, of course we can filter spaces and \\n from chars counts. Maybe later</br>
	It was sent on #{date} at #{time}</br>
	</h3>
	"
end
