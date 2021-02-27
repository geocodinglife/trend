Todo
# 19 Web Scraping
rails g scaffold Link url text:text && rails g scaffold PageRank rank:integer link:references

This was inspired by a private project of mine and is meant to be an introduction to web scraping. If you have another idea for web scraping, you can do that instead, the main thing I want you to learn here is using the delayed job gem for something.

https://news.ycombinator.com/

Do a GET request to Hacker news page (not sure if they block automated traffic, if so we will have to use another newspaper :-) )

Use Nokogiri to parse the HTML that is returned. https://github.com/sparklemotion/nokogiri

Nokogiri will turn the result into traversable nested nodes.

For this page, record the link URL and the visible text of the link. Create a second table with the page rankings

link
url
text (visible link text ie <a href="google.com">CAPTURE THIS</a>)

page_rank
link_id
rank:integer

Then, track the page rank over time. Display your results in Rails (can use scaffolding but use Bootstrap for the UI). Create a data for page rank using HighCharts, google charts, or another simple charting library. Just want to track one link's rank on one chart.

Looking at your data, tell me if you can find any patterns or trends that you can report.
