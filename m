X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/08/09/1
Message-ID: <5023463B.2040008@redhat.com>
Date: Thu, 09 Aug 2012 10:40:19 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: gnome-keyring: improper caching of gpg password/passphrase
Content-Type: text/plain; charset=utf-8

Hi All,

gnome-keyring does not obey the configuration asking it
to stop caching passphrases after a while.

More details and patches available at the following
references:

https://bugzilla.gnome.org/show_bug.cgi?id=681081
https://bugzilla.redhat.com/show_bug.cgi?id=845426

Upstream bug suggests that this is a regression from 3.3.x.
But it seems some older versions may also be affected.

Can a CVE id be please assigned to this issue?

Thanks!


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
