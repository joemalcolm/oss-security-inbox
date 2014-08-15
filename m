X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/15/5
Message-ID: <FDB32F43-A947-47FF-AD46-F3395531F5A0@redhat.com>
Date: Fri, 15 Aug 2014 07:44:44 -0600
From: "Vincent Danen" <vdanen@...hat.com>
To: "OSS Security List" <oss-security@...ts.openwall.com>
Subject: CVE request for accountsservice local encrypted password disclosure flaw
Content-Type: text/plain; charset=utf-8

The upstream bug report was opened in 2012, so this probably requires a 2012 CVE.

Just cutting-and-pasting from our bug entry:

It was reported that accountsservice invokes usermod with the -p parameter when calling SetPassword(), which can leak encrypted passwords locally (being that they are briefly visible via ps).

As noted in the upstream bug:

The relevant code is in src/user.c in the user_change_password_authorized_cb() function:

        argv[0] = "/usr/sbin/usermod";
        argv[1] = "-p";
        argv[2] = strings[0];
        argv[3] = "--";
        argv[4] = user->user_name;
        argv[5] = NULL;

strings[0] has been set to the crypted password in user_set_password(). The crypted password has been passed from the client (ie: gnome-control-center).

This has not yet been corrected upstream.

References:

https://bugs.freedesktop.org/show_bug.cgi?id=55000
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=757912
https://bugzilla.redhat.com/show_bug.cgi?id=1130538


Thanks.

-- 
Vincent Danen / Red Hat Product Security

Download attachment "signature.asc" of type "application/pgp-signature" (711 bytes)
