X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/30/3
Message-ID: <Pine.GSO.4.64.1103301314540.20552@faron.mitre.org>
Date: Wed, 30 Mar 2011 13:19:58 -0400 (EDT)
From: "Steven M. Christey" <coley@...-smtp.mitre.org>
To: oss-security <oss-security@...ts.openwall.com>
cc: "Steven M. Christey" <coley@...-smtp.mitre.org>, Rickard Green <rickard@...ang.org>, Bjorn-Egil Dahlberg <psyeugenic@...il.com>, Sverker Eriksson <sverker@...ang.org>, Patrik Nyblom <pan@...ang.org>, Raimo Niskanen <raimo@...ang.org>, Bjorn Gustavsson <bjorn@...ang.org>, Niclas Axelsson <burbas@...ang.org>, Hans Bolinder <hasse@...ang.org>
Subject: Re: CVE Request -- Erlang/OTP R14, Erlang/OTP R14B01, Erlang/OTP R14B02 -- multiple security fixes
Content-Type: text/plain; charset=utf-8


Some informal guidance on vulnerabilities in language 
interpreters/compilers: if there's a reasonable chance that an API 
function's correctness is affected, and that API function could be used by 
an application to process untrusted data (and/or affect the application's 
control flow), then it is generally treated as a security concern.  When 
API correctness is *not* affected - but applications could just use it in 
an insecure way - then the applications are "blamed" for the issue (the 
classic example is C's strcpy() function, which has a significant design 
limitation that many application programmers don't take into account, 
leading to buffer overflows.)

So for issues like "inexact comparisons" (whatever those are ;-) there is 
the consideration of whether such functionality is likely to be used when 
implementing security-related functionality.  For issues like incorrectly 
reporting error status from an API function, that may be a candidate for a 
CVE if the incorrect status report could have downstream effects on an 
application's correctness.

- Steve
