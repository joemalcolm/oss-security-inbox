Received: (qmail 7863 invoked by uid 550); 8 Nov 2023 13:42:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16012 invoked from network); 8 Nov 2023 13:22:40 -0000
Content-Type: multipart/alternative;
 boundary="------------MxZbwV6Pyi0mT37NUsTxuksC"
Message-ID: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
Date: Wed, 8 Nov 2023 14:22:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com, submissions@packetstormsecurity.org,
 fulldisclosure@seclists.org, bugs@securitytracker.com
From: !CVE Team <contact@notcve.org>
Subject: [oss-security] !CVE: A new platform to track security issues not acknowledged by
 vendors

--------------MxZbwV6Pyi0mT37NUsTxuksC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

=======
Mission
=======

The mission of !CVE (read not CVE) is to track, identify and provide a
common space for !vulnerabilities that are not acknowledged by vendors but
still are serious security issues.

This project was presented a few days ago at Black Hat Toronto 2023 [1]
and will also be presented next week at DeepSec 2023 [2].


===
Why
===

According to MITRE's CNA rules section 7.1:

       "CNAs are left to their own discretion to determine whether
        something is a vulnerability."[3]

This poses a clear conflict of interest, since the same vendor is the one
deciding whether or not an issue is a vulnerability and therefore whether a
CVE is assigned to their own product or not.


==============
What is a !CVE
==============

    - A common place for !vulnerabilities (read not vulnerabilities)

    - Security issues not covered by the traditional CVE.

    - An identifier following common naming starting with an exclamation
      mark(!) Example: !CVE-2023-0001


============================
How to request a new !CVE ID
============================

The !CVE Project is alive and assigning !CVE-IDs for security issues that
present an advantage for an attacker.

You can request a !CVE ID at: https://notcve.org/form.php


======================
How !CVEs are assigned
======================

A panel will review !CVE requests and if qualifies, a new !CVE number will
be assigned and details will be publicly available.


==============================
How to access to !CVEs details
==============================

Using the search engine at https://notcve.org or a direct link to the !CVE
entry. For example, the first ever !CVE is available at:
https://notcve.org/view.php?id=!CVE-2023-0001


The search engine combines information from multiple sources and also
searches for regular CVEs in all fields from all sources. For example to
search by credit we can obtain CVE discovered by Google Project Zero:

https://notcve.org/search.php?query=Google+Project+Zero


=========================
What qualifies for a !CVE
=========================

Examples that qualifies for a !CVE:
-----------------------------------
    - A security issues that is not acknowledged by the vendor as a
      vulnerability.

    - A security issue acknowledged by a vendor as technically correct
      but outside their threat model.

    - A notified security issue that has not been assigned a CVE after
      90 days.

    - A published security issue without an assigned CVE.

Examples that do NOT qualify for a !CVE:
----------------------------------------
    - A software defect with no impact on security.

    - A generic security issue, you need to list one or more
      devices/software affected with your finding.

    - Well known attacks to unencrypted channels to obtain
      credentials: Telnet, FTP, etc.

    - You can read the FAQ [4] for more examples.



In short, we see the !CVE Project as a great initiative to track and
identify security issues that are not acknowledged by vendors but still are
important for the security community.


==========
References
==========

[1] 
https://www.blackhat.com/sector/2023/arsenal/schedule/index.html#cve-a-new-platform-for-unacknowledged-cybersecurity-vulnerabilities-36144

[2] https://www.deepsec.net/speaker.html#PSLOT667

[3] https://cve.mitre.org/cve/cna/CNA_Rules_v3.0.pdf

[4] https://notcve.org/faq.html




---
!CVE Team

[ A PGP key is available for encrypted communications at
https://notcve.org/contact.html ]
--------------MxZbwV6Pyi0mT37NUsTxuksC--
