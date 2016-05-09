X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1486" "Monday" "9" "May" "2016" "19:25:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160509232519.6082F52E015@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml" "^Cc:" nil nil "5" "2016050923:25:19" "[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml" (number mark "        cve-assign@m May  9   42/1486  " thread-indent "\"[oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml\"\n") "<CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>" ("<CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20069 invoked by uid 550); 9 May 2016 23:25:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20051 invoked from network); 9 May 2016 23:25:32 -0000
In-Reply-To: <CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>
Message-Id: <20160509232519.6082F52E015@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon,  9 May 2016 19:25:19 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requested: two stack exhaustation parsing xml files using mxml
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found two stack exhaustion conditions that can easily crash mxml
> when parsing an xml.

(The two example XML documents seem dissimilar. For example,
stack-exhaustion-2.xml starts with "<?xml" whereas
stack-exhaustion-1.xml does not.)


> Recursion using mxmlDelete at mxml-node.c:217 (stack-exhaustion-1.xml)

Use CVE-2016-4570.


> Recursion using mxml_write_node at mxml-file.c:2739 (stack-exhaustion-2.xml)

Use CVE-2016-4571.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXMRwEAAoJEHb/MwWLVhi2WDIP/jQvTGHSQ5QKY3VfTq5WaVji
Ykggk/CpRwh8z7Cf3xPdNkWv4dUXh8mG0f7w7hJNiVMP7wywinNUh9mLCorwKdkQ
4I8dQxKdF3OaGXnGHQxBKnQTRGZJmgNVs+ShQKOQIPxlC7F+fd5XF3kz8yC6oCdc
hfiGkKH0p987wDExPluTuztFNmGrYpEPt22i644dDw7GegtvG0Fm7D5V6SsxTIsI
SYztQnZod9S/MmgKRrThakIKr9/uzFTDEcCiOVlJwBAdiKaPjO3CZMgSiINHXicU
75fNVh67FKFJDIYe4jRASdMabRgnVSLZdXP/VTcBo3lJa8A6v5wnhXn0HbPx0NPL
P/sfs29Q6WV5Ean9uGCWqGi2ME3420xUFSu0/0xo4ewaj5QKPoQOJJM2tEy6U3wS
uWmjYfh0K6wxUT7oQCo9Itlf/utgJqSA75K4J1UFfjbKNqKamA/hcCNcHmSzVSxK
cBItGvGPDH+OjYA61wIOJt6PVwuSPGpcXpZPUG95t6eNXVjoSsbKAXfZbotbE5xd
k02vrTth2t4rYwgbjfVJ2eYnW8yE42XGKzDzVTd01mohUNxXl8WzE2YPyYu6g6fx
oXuGPZlUVtPuYjy6rLSGZ3VQoi7JUwOp4raUGHM5EVFhLCHDCzOt2quyxwqJ9omR
o07Fd42eg20ZAHDPfcoS
=/ZGU
-----END PGP SIGNATURE-----
