X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/12/4
Message-ID: <20111212174705.GE1648@redhat.com>
Date: Mon, 12 Dec 2011 10:47:06 -0700
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: putty does not wipe keyboard-interactive replies from memory after authentication
Content-Type: text/plain; charset=utf-8

Putty 0.59-0.61 does not wipe keyboard-interactive replies from memory
after authentication.  If malware is installed on the system and can
access arbitrary memory locations, or if the memory is swapped to disk
or written in a crash dump file, it can expose sensitive authentication
information like passwords, public-key passphrases, etc.

This is fixed upstream in 0.62.

Could a CVE be assigned to this?

References:

http://www.chiark.greenend.org.uk/~sgtatham/putty/wishlist/password-not-wiped.html
http://svn.tartarus.org/sgt?view=rev&revision=9357
https://bugzilla.redhat.com/show_bug.cgi?id=766865
http://bugs.gentoo.org/show_bug.cgi?id=394429

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
