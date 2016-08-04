X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2183" "Thursday" "4" "August" "2016" "10:16:53" "+0100" "Cory Benfield" "cory@lukasa.co.uk" "<AE6B099E-CAAC-4258-9640-F024447258D7@lukasa.co.uk>" "72" "[oss-security] CVE-2016-6580, Python Priority: DoS via Unlimited Stream Insertion" nil nil nil "8" "2016080409:16:53" "[oss-security] CVE-2016-6580, Python Priority: DoS via Unlimited Stream Insertion" (number mark "U       cory@lukasa. Aug  4   72/2183  " thread-indent "\"[oss-security] CVE-2016-6580, Python Priority: DoS via Unlimited Stream Insertion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21560 invoked by uid 550); 4 Aug 2016 09:17:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21537 invoked from network); 4 Aug 2016 09:17:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lukasa-co-uk.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=+CRDv3fJ7fN4eSTZQD3g7MnglEZgOFkADhQv+Ec5FqQ=;
        b=mTBUPGSon749gUPRWoDu/QG2QCWznGv8u1INI/cbqlweIBiLlJgBB6+fHr7OYyOtCX
         VuCGX/87LGO+Zs3oJ2wLKT3XpRyJnIaOY7ig1G8Q6wvXJ8lJhlH6erx+1eacXhwhS8mA
         SW+oRm378b3rIIAyhfNXdKvk6XYi/3l570gj5Hh2pP1zU4EUz6UI7W0LYrHsqf2/DOFR
         wC6XIoq8RB8++h97/lM2jiYo9AvPNHilb8gJBQqhdBkPjye0kq/BGQMUlgoDN7OPgESr
         1wpYQ2ei5QPoKzFMOxhRnuAitl7jDtgYxH6ED4qXCmgXt8SKnrmOEzvinY8fkr7kzRGA
         sU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=+CRDv3fJ7fN4eSTZQD3g7MnglEZgOFkADhQv+Ec5FqQ=;
        b=flob4u+H5O0U+gTMybdL6rwActsj+g8iy1SYC6eVjhGXvl1ncMTeoDw8tVEZSCXniR
         MxkpIgmx+OVWwQ4zHe0slivSWlqhHYYGEZHCRSvb4f5BA/mDfjm9X+NvC50RSL8EK5Q6
         xjFEeKuHmfkRlviOEgsz9TFC30t1kgaTsNQRvLmhM9CStEfxoDJ3YYgvweVX/K5LE/eD
         qkAjNDweGyeuPXeFaT+5IqUOP3FAHLjQBuK269k/o+6YBeaM4/oJqobiQ3ih6SOhott6
         m2PU3CRJgs+uhgpZ4CPBV05K/H4vfi5AqtoeyV+8rJhuE21b6B1ZRUs5GQ/zczz414Tx
         +05A==
X-Gm-Message-State: AEkoouvWxU7ZLlIVdcu+qRJzARFjVdziHxfxKFVK4C3dRsoypQNy7jG3h14JJ5KXLF9wuw==
X-Received: by 10.28.146.211 with SMTP id u202mr73237243wmd.54.1470302215511;
        Thu, 04 Aug 2016 02:16:55 -0700 (PDT)
From: Cory Benfield <cory@lukasa.co.uk>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.0 \(3204\))
Message-Id: <AE6B099E-CAAC-4258-9640-F024447258D7@lukasa.co.uk>
Date: Thu, 4 Aug 2016 10:16:53 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3204)
Subject: [oss-security] CVE-2016-6580, Python Priority: DoS via Unlimited Stream Insertion

DoS via Unlimited Stream Insertion
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Hyper Project security advisory, August 4th 2016.

Vulnerability
-------------

A HTTP/2 implementation built using the priority library could be targetted=
 by
a malicious peer by having that peer assign priority information for every
possible HTTP/2 stream ID. The priority tree would happily continue to store
the priority information for each stream, and would therefore allocate
unbounded amounts of memory. Attempting to actually *use* a tree like this
would also cause extremely high CPU usage to maintain the tree.

We are not aware of any active exploits of this vulnerability, but as this
class of attack was publicly described in this report[1], users should assu=
me
that they are at imminent risk of this kind of attack.

Info
----

This issue has been given the name CVE-2016-6580.

Affected Versions
-----------------

This issue affects all versions of the priority library prior to 1.2.0.

The Solution
------------

In version 1.2.0, the priority library limits the maximum number of streams
that can be inserted into the tree. By default this limit is 1000, but it is
user-configurable.

If it is necessary to backport a patch, the patch can be found in
this GitHub pull request[2].

Recommendations
---------------

We suggest you take the following actions immediately, in order of preferen=
ce:

1. Update priority to 1.2.0 immediately, and consider revising the maximum
   number of streams downward to a suitable value for your application.
2. Backport the patch made available on GitHub.
3. Manually enforce a limit on the number of priority settings you'll allow=
 at
   once.

Timeline
--------

This class of vulnerability was publicly reported in this report[1] on the
3rd of August. We requested a CVE ID from Mitre the same day.

Priority 1.2.0 was released on the 4th of August, at the same time as the
publication of this advisory.


Thanks,

Cory Benfield, on behalf of the Python Hyper project.


[1]: http://www.imperva.com/docs/Imperva_HII_HTTP2.pdf
[2]: https://github.com/python-hyper/priority/pull/23=
