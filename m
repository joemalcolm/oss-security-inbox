X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/09/1
Message-ID: <4D51E4A8.5060408@gentoo.org>
Date: Wed, 09 Feb 2011 01:49:44 +0100
From: Stefan Behte <craig@...too.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: CVE request for feh
Content-Type: text/plain; charset=utf-8

Hi,

I guess there is no CVE request for this one yet:

On https://bugs.launchpad.net/ubuntu/+source/feh/+bug/607328 seegooon wrote:

--------------------------------------------------
Hi, I've just discovered that feh is vulnerable to rewriting any user file:

      tmpname_timestamper =
         estrjoin("", "/tmp/feh_", cppid, "_", basename, NULL);
...
            execlp("wget", "wget", "-N", "-O", tmpname_timestamper, newurl,
                   quiet, (char*) NULL);

If attacker knows PID of feh and knows the URL, it can create the link
to any user file. wget would overwrite it.

--------------------------------------------------

Thanks in advance,

Craig
