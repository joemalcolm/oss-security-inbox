X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/10/3
Message-ID: <8654447.8593062.1423550523425.JavaMail.zimbra@redhat.com>
Date: Tue, 10 Feb 2015 01:42:03 -0500 (EST)
From: Wade Mealing <wmealing@...hat.com>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: CVE-Request -- Linux kernel - panic on nftables rule flush
Content-Type: text/plain; charset=utf-8

Gday,

I'd like to request a CVE for a denial of service attack found here here https://bugzilla.kernel.org/show_bug.cgi?id=91441.

A remote attacker with the NET_CAP_ADMIN capability could use this to panic (denial of service) a system if they were able to flush a chain with a jump target.

More info: https://bugzilla.redhat.com/show_bug.cgi?id=1190966

Thanks

Wade Mealing
