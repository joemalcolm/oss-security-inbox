X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/05/17/3
Message-id: <a74c3ea5-9feb-431b-b37a-40bb3df1b75c@me.com>
Date: Fri, 17 May 2013 16:34:41 +0000 (GMT)
From: "Larry W. Cashdollar" <larry0@...com>
To: Open Source Security <oss-security@...ts.openwall.com>
Subject: Show In Browser 0.0.3 Ruby Gem /tmp file injection vulnerability
Content-Type: text/plain; charset=utf-8

TITLE: ﻿Show In Browser 0.0.3 Ruby Gem /tmp file injection vulnerability﻿

DATE: 5/15/2023

AUTHOR: Larry W. Cashdollar (@_larry0)

DOWNLOAD: https://rubygems.org/gems/show_in_browser

DESCRIPTION: Opens arbitrary text in your browser

VENDOR: Jonathan Leung

FIX: N/A

CVE: TBD

DETAILS: The following code uses the temporary file "/tmp/browser.html" insecurely.

  2   FILE_LOCATION = "/tmp/browser.html"
  3 
  4   class << self
  5 
  6     def show(html)
  7       file = File.open(FILE_LOCATION, 'w')
  8       file.write(html)
  9       file.close
 10 
 11       `open #{FILE_LOCATION}`

By a malicious user creating /tmp/browser.html first and repeatedly writing to it they can inject malicious html into the file right before it is about to be opened.

PoC:


nobody@...ter:/$ while (true); do echo "<script> alert('Hello'); </script>" >> /tmp/browser.html; done

Will pop up a java script alert in other gem users browser. 
Content of type "text/html" skipped
