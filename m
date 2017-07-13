X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1169" "Thursday" "13" "July" "2017" "08:01:53" "-0500" "William A Rowe Jr" "wrowe@apache.org" "<CACsi250wmYb_CynSUb_JXgtrZfKU5mVt=FKxvGqCV-fqwxq=HA@mail.gmail.com>" "35" "[oss-security] CVE-2017-9788: Uninitialized memory reflection in mod_auth_digest" nil nil nil "7" "2017071313:01:53" "[oss-security] CVE-2017-9788: Uninitialized memory reflection in mod_auth_digest" (number mark "U       wrowe@apache Jul 13   35/1169  " thread-indent "\"[oss-security] CVE-2017-9788: Uninitialized memory reflection in mod_auth_digest\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18424 invoked by uid 550); 13 Jul 2017 13:06:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5422 invoked from network); 13 Jul 2017 13:02:08 -0000
X-Gm-Message-State: AIVw1101N8Lgi5sFA3KXZvtZqUCnmet3ktPCld5NQ/w4hQ7lWDigyJUP
	7iEemdfF478192S2ur/Wg9ktFjfJvxpk
X-Received: by 10.25.216.82 with SMTP id p79mr1320524lfg.35.1499950914078;
 Thu, 13 Jul 2017 06:01:54 -0700 (PDT)
MIME-Version: 1.0
From: William A Rowe Jr <wrowe@apache.org>
Date: Thu, 13 Jul 2017 08:01:53 -0500
X-Gmail-Original-Message-ID: <CACsi250wmYb_CynSUb_JXgtrZfKU5mVt=FKxvGqCV-fqwxq=HA@mail.gmail.com>
Message-ID: <CACsi250wmYb_CynSUb_JXgtrZfKU5mVt=FKxvGqCV-fqwxq=HA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2017-9788: Uninitialized memory reflection in mod_auth_digest

CVE-2017-9788: Uninitialized memory reflection in mod_auth_digest

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
all versions through 2.2.33 and 2.4.26

Description:
The value placeholder in [Proxy-]Authorization headers
of type 'Digest' was not initialized or reset
before or between successive key=3Dvalue assignments.
by mod_auth_digest
Providing an initial key with no '=3D' assignment
could reflect the stale value of uninitialized pool
memory used by the prior request, leading to leakage
of potentially confidential information, and a segfault

Mitigation:
All users of httpd should upgrade to 2.4.27 (or minimally
2.2.34, which will receive no further security releases.)
Alternately, the administrator could configure httpd to
reject requests with a header matching a complex regular
expression identifing where =3D character does not occur
in the first key=3Dvalue pair, as in the following syntax;
[Proxy-]Authorization: Digest key[,key=3Dvalue]

Credit:
The Apache HTTP Server security team would like to thank Robert =C5=9Awi=C4=
=99cki
for reporting this issue.

References:
https://httpd.apache.org/security_report.html
