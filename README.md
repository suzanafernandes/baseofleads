# Base of Leads

# Through this guide you will install: 

Ruby (2.3.3 or higher)

Selenium Webdriver (3.2.1) 

Cucumber (2.4.0)

Gherkin (4.1.1)

Text Editor or IDE (SublimeText, Atom, Notepad++, Eclipse)

Firefox 


# Requirements

Step 1: Browser Setup - Install FireFox

Step 2: Install Ruby, Cucumber, Selenium and other dependencies

$> brew install ruby

$> gem install bundler

$> sudo gem install selenium-webdriver -v 3.2.1

$> gem install cucumber

$> gem install rspec

# How to test

$> cucumber

Cucumber can also write the results to a file in different formats: HTML, JSON, JUnit, etc.

$> cucumber -f pretty -f html -o report.html
