X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/24/2
Message-ID: <20190624061443.kzsgc6rz7noznnnu@jwilk.net>
Date: Mon, 24 Jun 2019 08:14:43 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: curl: Windows OpenSSL engine code injection
Content-Type: text/plain; charset=utf-8

* Daniel Stenberg <daniel@...x.se>, 2019-06-24, 07:46:
>A non-privileged user or program can put code and a config file in a 
>known non-privileged path (under `C:/usr/local/`) that will make curl 
>automatically run the code (as an openssl "engine") on invocation. If 
>that curl is invoked by a privileged user it can do anything it wants.
[...]
>CWE-94: Code Injection

I think CWE-426 (Untrusted Search Path) would be more appropriate for 
this bug.

-- 
Jakub Wilk
