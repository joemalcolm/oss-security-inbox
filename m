X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/28/5
Message-ID: <CALK=YjOnGoaY8ZXvjykf+tZQHY9hdZCXa-1+WZQEwSyn0Th8Dw@mail.gmail.com>
Date: Fri, 28 Nov 2014 09:44:32 -0500
From: Eric Covener <covener@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: "LuaAuthzProvider" in Apache HTTP Server mixes up arguments
Content-Type: text/plain; charset=utf-8

https://issues.apache.org/bugzilla/show_bug.cgi?id=57204

LuaAuthzProvider in Apache HTTP Server 2.4.3 and later allows users to
supply their own Lua scripts to perform authorization.  If the same
script is specified in httpd.conf  multiple times, with different
(free-form) arguments, only the last specified argument is used for
all invocations of the script.
