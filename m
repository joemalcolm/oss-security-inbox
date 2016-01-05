X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/05/5
Message-ID: <20160105101345.GA13653@lorien.valinor.li>
Date: Tue, 5 Jan 2016 11:13:46 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files
Content-Type: text/plain; charset=utf-8

Hi,

iptables-persistent (in Debian) is a loader for netfilter configuration
using a plugin-based architecture.

iptables-persistent is vulnerable to a (local) information leak due to
world-readable rules files. It was reported in Debian in

https://bugs.debian.org/764645

And fixed via

https://anonscm.debian.org/cgit/collab-maint/iptables-persistent.git/commit/?id=37905034f07e94c4298a1762b39b7bbd4063c0df

Could you assign a CVE for this issue?

p.s.: There is a fork of iptables-persistent. But I have not checked
if the fork https://github.com/zertrin/iptables-persistent is as well
affected by this issue).

Regards,
Salvatore
