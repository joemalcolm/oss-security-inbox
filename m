X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1881" "Wednesday" "27" "January" "2016" "20:39:35" "+0000" "Matthew Wild" "mwild1@gmail.com" "<CAJt9-x6kPqB6N+qT=70uYvF00sFECT8hBhLzJU9SZJ-q7p_F9g@mail.gmail.com>" "74" "[oss-security] CVE-2016-0756: Prosody XMPP server: insecure dialback key generation/validation algorithm" nil nil nil "1" "2016012720:39:35" "[oss-security] CVE-2016-0756: Prosody XMPP server: insecure dialback key generation/validation algorithm" (number mark "U       mwild1@gmail Jan 27   74/1881  " thread-indent "\"[oss-security] CVE-2016-0756: Prosody XMPP server: insecure dialback key generation/validation algorithm\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22294 invoked by uid 550); 27 Jan 2016 20:40:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22276 invoked from network); 27 Jan 2016 20:40:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=ocNRp3+XWuAXRIafwOLb/Y3/Xb52kvWMfhygw+jhXns=;
        b=OGfVjUQ3GDjknx+Mvq/xP4f8apX4MZ6qArpOMBTVPH0ABOMFyCA4GfdWfJIYcIQ4V5
         cReghuhN/SvvFcekhHuspm3svrHez4Aji1ASra1itfnr7smtaUiIqa6fnDzYYRUepu27
         B6716HMUQkovKq8qm+KJBKW8nf1gIfH9pymWFVa0yS5dhkKgZrkKWDbxtTJnpznawoGI
         DIYgux0dBA2WT0cXs3RRQNcUxdqq4FJeNQarYJQsBO7Huqxd+Fs1w8CpcFPMtyNCAXiN
         BgpYkkCKcO4W2OVQuR0HcqZ35PAka1L4BOquBRe4Xi+dVURX7wzd/w0KkYTHU3ahi/lJ
         8ltA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=ocNRp3+XWuAXRIafwOLb/Y3/Xb52kvWMfhygw+jhXns=;
        b=a1mrIR118O4jhWUPREPPQKhGxPRHEE4VVTsD8XHmP6xH3ScpFJvz9Vi5Z6/aIdK1Wv
         kMye89Rg7ThA6UfpAISzxJ7LBdAxe5frJqAC6xa6tlKEt9Nkb1EdFzTkUNoXKmxwhJLI
         SefRBE5vN/6RvoVgU8UJi83JPzf17g75R4PsQJ8FPll0nF5BsZioJq7aND84bRrsIFfi
         zhcyznq4OOWxXJc5M6ixsioNf2eKsvZO6BRv0XjYhqlHxzzlivEhdIRcsPKdJVYwcDqO
         cDuRSq649CeCprP+apwQ1EHH55HH9L8EfiLACy2B2yU7Bli9npudDXb9019cb43yHIvt
         xiYQ==
X-Gm-Message-State: AG10YOTLlKNGz/h/86sJXN9GIwLZmn7weeejeMjcpI08Gtcv+NPkkYTAEeG8RupJIIGkzJzqhkya0Pf30ihBJg==
X-Received: by 10.25.32.16 with SMTP id g16mr3627341lfg.82.1453927194677; Wed,
 27 Jan 2016 12:39:54 -0800 (PST)
MIME-Version: 1.0
From: Matthew Wild <mwild1@gmail.com>
Date: Wed, 27 Jan 2016 20:39:35 +0000
Message-ID: <CAJt9-x6kPqB6N+qT=70uYvF00sFECT8hBhLzJU9SZJ-q7p_F9g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-0756: Prosody XMPP server: insecure dialback key
 generation/validation algorithm

A vulnerability has been found and fixed in the Prosody XMPP server.

CVE-2016-0756
-------------

Project
  ~ Prosody XMPP server
URL
  ~ https://prosody.im/
CVE
  ~ CVE-2016-0756
Date
  ~ 2016-01-27

Affected versions
  ~ All versions prior to 0.9.10
Affected Prosody modules
  ~ mod_dialback
Fixed versions
  ~ 0.9.10, 0.10 nightly build 201, trunk nightly build 612

Description
-----------

The flaw allows a malicious XMPP server to impersonate the vulnerable
domain to any
XMPP domain whose domain name includes the attacker's domain as a suffix.

For example, 'bber.example' would be able to connect to 'jabber.example' and
successfully impersonate any vulnerable server on the network.

Affected configurations
-----------------------

The default configuration is affected. Servers with mod_dialback
disabled are not affected.

Servers with s2s_secure_auth enabled will reject incoming
impersonation attempts (that is,
servers attempting to impersonate other domains will be rejected), but
may still be impersonated to other servers on the network.

Temporary mitigation
--------------------

Disable mod_dialback by adding "dialback" to your modules_disabled
list in the global
section of your config file, and restart Prosody:

   modules_disabled = { "dialback" }

Note that disabling dialback will affect interoperability with servers
that do not have trusted
TLS certificates.

Advice
------

All users should upgrade to 0.9.10, or check their OS distribution for
security updates. Users of development branches (0.10, trunk) should
upgrade to the latest nightly builds.

Credits
-------

The flaw was discovered and responsibly disclosed to us by Thijs Alkemade.

Links
-------

 - https://prosody.im/security/advisory_20160127/
 - http://blog.prosody.im/prosody-0-9-10-released/
 - https://prosody.im/issues/issue/596
 - https://hg.prosody.im/0.9/rev/5c6e78dc1864
