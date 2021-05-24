# README

This is a skill tests for ayenda.com developed by Harold Mideros

- To run the project you must be run the follow commands

- <code> $ rails db:drop db:create db:migrate</code>
- <code> $ rails server </code>


- To populate database with information from spotify, you need api credentials from https://developer.spotify.com/dashboard.

- <code>$ rails credentials:edit</code>

and put your api spotify credentias as bellow
<code>
<br>
potify:
<br>
&nbsp;&nbsp;&nbsp;&nbsp;client_id: <your_client_id>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;client_secret: <your_client_secret>
</code>

finally you can execute the rake task

- <code>$ rails fetch:spotify</code>
