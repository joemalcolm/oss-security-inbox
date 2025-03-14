Received: (qmail 3276 invoked by uid 550); 14 Mar 2025 18:53:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3255 invoked from network); 14 Mar 2025 18:53:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1741978406; bh=S377WoJTu2wNaeyLgbePzg6jE3hdhwm6+LU9PgnkKR4=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=YvVFhLZ47STgtr5sfL5iPii3IQlQB2FqU2ITTkGdaUwh7q16POOyiSsoPW5JwhXmp
	 M3bdspDSTgs0lEb5ufX475nzNnQmnTqBg+aBSzR2uOQtS6cph/2HeUDvIFHpnKOeum
	 3iEp1D1ZrbvxQTeeReP4ANzmvO42cGxiec8U+wV+/rONO+8d/Sf+P/2shIDd1ADvGn
	 ikDYsaji8pQnTZ5NBiuftx6Q3uVOFZgJE2G0qN5lQYW2CEM7HCOT45emwFuiBiD/js
	 tZjJFLbxt88lR2eEOKW5g/BVkzMcl+HEO3AxY6/R8WWl2cAPlJCfca/RpcrdTyWeUS
	 PYZ9nYzKWC4hw==
Original-Subject: expat vulnerability CVE-2024-8176 / impact of recursion stack
 overflow vulnerabilities
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Fri, 14 Mar 2025 19:53:24 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250314195324.02b25dae@hboeck.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] expat vulnerability CVE-2024-8176 / impact of recursion stack
 overflow vulnerabilities

Hello,

A vulnerability (CVE-2024-8176) has been fixed in expat, a widely used
xml parser library:
https://blog.hartwork.org/posts/expat-2-7-0-released/
Info about the vuln has been posted here already. expat 2.7.0 fixes
multiple variations of stack overflows due to recursion and can be
triggered by using a large number of nested entities. Scripts to
generate example payloads for testing can be found in the project's
issue tracker: https://github.com/libexpat/libexpat/issues/893

I had some discussions with the maintainer of expat before this was
published about the security impact. We believe that this is likely, in
most cases, "only" a crash/denial of service type of bug.

Here is what I believe to be the case:

* Recursion stack overflow can lead to a stack clash, which might
  enable memory corruption and code execution. There has been some
  detailed investigation of this type of vulnerability by Qualys in
  2017:
  https://blog.qualys.com/vulnerabilities-threat-research/2017/06/19/the-st=
ack-clash
  https://www.qualys.com/2017/06/19/stack-clash/stack-clash.txt

* As a response to this research, it was concluded that existing
  countermeasures for these types of vulnerabilities are insufficient,
  and a new compiler flag -fstack-clash-protection was introduced:
  https://developers.redhat.com/blog/2020/05/22/stack-clash-mitigation-in-g=
cc-part-3
  The -fstack-clash-protection flag is available in recent versions of
  gcc and clang, and many distributions have it enabled by default.
  There also have been changes to glibc and the Linux kernel in
  response:
  https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2017-1000366 (glibc)
  https://bugzilla.redhat.com/show_bug.cgi?id=3DCVE-2017-1000364 (Linux
  kernel)

I believe from the above that current systems should not be vulnerable
to this type of vulnerability. I am unsure about systems that do not
apply -fstack-clash-protection. My understanding of these types of
vulnerabilities is limited, and by posting this here, I hope that
people more familiar with it will have a closer look. I am also not
sure how widely these mitigations have been applied and whether there
are major distributions not using -fstack-clash-protection by default.

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
