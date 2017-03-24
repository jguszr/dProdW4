## Text sentiment Analisys tool

This application is based on the Gutemberg project.

The App concept is to experiment a Shiny App with R Studio
using some data to process something.

Based on it, I decided to use the Project Gutemberg as a data source.
To do So, I tried at first to use the *rVest* package to download and process the HTML into a plain text file.

Due SSL Limitations on the Shinny.io enviroment I download a few books
and use it as a data source.

Here is some book url examples 

* http://www.gutenberg.org/cache/epub/54412/pg54412.txt
* http://www.gutenberg.org/cache/epub/54415/pg54415.txt
* https://www.gutenberg.org/files/54373/54373-0.txt

Source code is available on the GitHub at https://github.com/jguszr/dProdW4

You can adjust date range and event types using control panel located on the left side. Filtered dataset can be downloaded using data tab.