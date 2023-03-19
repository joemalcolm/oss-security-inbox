X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/19/2
Message-ID: <CAGUWgD-icAVmX4LER-Ctu_98WYKd833tnS0ePLsu72iChJWshg@mail.gmail.com>
Date: Sun, 19 Mar 2023 15:05:24 +0200
From: Georgi Guninski <gguninski@...il.com>
To: oss-security@...ts.openwall.com
Subject: First result on google promotes insecure coding (XSS)
Content-Type: text/plain; charset=utf-8

>From my IP and cookie jar, searching google for
"tutorial python cgi" returns as first result [1]
on tutorialspoint.com

In "Simple URL Example:Get Method"

```
first_name = form.getvalue('first_name')
last_name  = form.getvalue('last_name')
print "<h2>Hello %s %s</h2>" % (first_name, last_name)
```

Besides cgi tutorial, this is XSS and CSRF tutorial by example.

Does the so called security "community" plan to reduce teaching
insecure code?

[1] https://www.tutorialspoint.com/python/python_cgi_programming.htm

-- 
We don't need no education, we don't need no thought control
Pink Floyd
