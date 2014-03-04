X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/03/04/21
Message-ID: <20140304165955.GT12584@dhcp-25-225.brq.redhat.com>
Date: Tue, 4 Mar 2014 17:59:56 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0102 -- Linux kernel: security: keyring cycle detector DoS
Content-Type: text/plain; charset=utf-8

The problem is that search_nested_keyrings() sees two keyrings that have
matching type and description, so keyring_compare_object() returns true.
s_n_k() then passes the key to the iterator function -
keyring_detect_cycle_iterator() - which *should* check to see whether
this is
the keyring of interest, not just one with the same name and, leads to
BUG_ON.

An unprivileged local user could use this flaw to crash the system. 

Introduced by:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=b2a4df200d570b2c33a57e1ebfa5896e4bc81b69

References:
https://bugzilla.redhat.com/show_bug.cgi?id=1072419
https://lkml.org/lkml/2014/2/27/507

Upstream patch:
http://www.kernelhub.org/?msg=425013&p=2

-- 
Petr Matousek / Red Hat Security Response Team
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
