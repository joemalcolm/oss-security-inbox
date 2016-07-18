X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2366" "Monday" "18" "July" "2016" "08:17:03" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1zwb63tApRBJsjpD3DoPO-FRcQtLTMqqo-Y_a-363TCA@mail.gmail.com>" "85" "Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others" nil nil nil "7" "2016071814:17:03" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" (number mark "U       kseifried@re Jul 18   85/2366  " thread-indent "\"Re: [oss-security] A CGI application vulnerability for PHP, Go, Python and others\"\n") "<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>" ("<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27702 invoked by uid 550); 18 Jul 2016 14:17:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27681 invoked from network); 18 Jul 2016 14:17:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=t8twZALnUDXBlCGPezXHj49/6wWaAdDqEks6+JuCTZw=;
        b=ddGLDBBFh0162STzlt3bpufihgP32sxh7IF9fv5GRQdXjnYToWyN0zHkKODUCdHfuE
         xpC3uOhrfCmGN0ShmQYj+LjEYcd4h0x1jK5XsSEOemsOedzGZ0NUdkcExfQmtIyuGcfJ
         sly1SPBjkcJQe4YMBoIsScDMMF2Pxz6+B2SJ4zFS5Cjwu8qeEPF9jk6HHQDN5qkrFcUN
         KA9Gh6ikvP8MBL8LCjBxcGdwVZdeJ9uoMs4ru6/4Y7XHraXlNwkbnR03Vhd0hxkHookE
         9nwEz5PndhK+o3xtE5SGVgRiqs6+xZj7awWQz19lxA58A64+pkcxeOeDa6IJ/AoU5ZP0
         uL5Q==
X-Gm-Message-State: ALyK8tIruBW8ScuwBHKATbdGQaecBqYna1YLKmdlKfCUgruWdXOjSSejdhi73D1bBaogIwbCmoDdOL60MJnzkFPD
X-Received: by 10.202.93.9 with SMTP id r9mr2372798oib.23.1468851424143; Mon,
 18 Jul 2016 07:17:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
References: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Mon, 18 Jul 2016 08:17:03 -0600
Message-ID: <CANO=Ty1zwb63tApRBJsjpD3DoPO-FRcQtLTMqqo-Y_a-363TCA@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a113d43e65d60a00537e99f78
Subject: Re: [oss-security] A CGI application vulnerability for PHP, Go,
 Python and others

--001a113d43e65d60a00537e99f78
Content-Type: text/plain; charset=UTF-8

Also the current list of CVEs is:

CVE-2016-5385 PHP
CVE-2016-5386 Go
CVE-2016-5387 Apache HTTPD
CVE-2016-1000104 mod_fcgi
CVE-2016-1000105 Nginx cgi script
CVE-2016-5388 Tomcat
CVE-2016-1000107 Erlang HTTP Server
CVE-2016-1000108 YAWS
CVE-2016-1000109 HHVM FastCGI
CVE-2016-1000110 Python CGIHandler
CVE-2016-1000111 Python twisted

there will of course be more. From my Google doc:

CVE counting for httpoxy

This document essentially discusses the CVE counting strategy for the
httpoxy issue.

Essentially there are two main cases where a CVE is assigned for the
httpoxy issue:


   1.

   A web server, programming language or framework (and in some limited
   situations the application itself) sets the environmental variable
   HTTP_PROXY from the user supplied Proxy header in the web request, or sets
   a similarly used variable (essentially when the request header turns from
   harmless data into a potentially harmful environmental variable)
   2.

   A web application makes use of HTTP_PROXY or similar variable unsafely
   (e.g. fails to check the request type) resulting in an attacker controlled
   proxy being used (essentially when HTTP_PROXY is actually used unsafely)


Some  examples of situations where a web server, programming language or
framework would qualify for a CVE regarding httpoxy:


   1.

   PHP passes the proxy as HTTP_PROXY, as such applications commonly import
   and use HTTP_*
   2.

   mod_cgi/fast_cgi and related CGI programs set HTTP_PROXY based on the
   request header
   3.

   An application uses an HTTP request library that trusts HTTP_PROXY
   resulting in attacker control of requests


Some  examples of situations where a web server, programming language or
framework would NOT qualify for a CVE regarding httpoxy:


   1.

   A web server such as Apache passes the proxy header to a programming
   language or framework
   2.

   A library trusts HTTP_PROXY, the library does not earn a CVE, the
   application using it would qualify for a CVE, and generally speaking
   whatever set the HTTP_PROXY variable would also earn a CVE






--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d43e65d60a00537e99f78--
