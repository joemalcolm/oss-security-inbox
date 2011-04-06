X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/06/13
Message-ID: <1487479828.415095.1302112073310.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 6 Apr 2011 13:47:53 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE for ruby on rails XSS fixes
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> Hi,
> 
> Can someone assign a CVE for the XSS issue described in
> 
> https://github.com/rails/rails/blob/38df020c95beca7e12f0188cb7e18f3c37789e20/actionpack/CHANGELOG
> 

Here is the changelog text:

*Rails 3.0.6 (April 5, 2011)

* Fixed XSS vulnerability in `auto_link`.  `auto_link` no longer marks
  input as html safe.  Please make sure that calls to auto_link() are
  wrapped in a sanitize(), or a raw() depending on the type of input passed
  to auto_link().
  For example:

    <%= sanitize(auto_link(some_user_input)) %>

  Thanks to Torben Schulz for reporting this.  The fix can be found here:
  61ee3449674c591747db95f9b3472c5c3bd9e84d

Use CVE-2011-1497

Thanks.

-- 
    JB
