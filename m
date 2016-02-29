X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["468" "Monday" "29" "February" "2016" "10:15:39" "+0100" "Adam Maris" "amaris@redhat.com" "<56D40C3B.3090806@redhat.com>" "19" "[oss-security] CVE request: Heap buffer overflow in pcretest" nil nil nil "2" "2016022909:15:39" "[oss-security] CVE request: Heap buffer overflow in pcretest" (number mark "U       amaris@redha Feb 29   19/468   " thread-indent "\"[oss-security] CVE request: Heap buffer overflow in pcretest\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18357 invoked by uid 550); 29 Feb 2016 09:15:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18334 invoked from network); 29 Feb 2016 09:15:54 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Adam Maris <amaris@redhat.com>
Message-ID: <56D40C3B.3090806@redhat.com>
Date: Mon, 29 Feb 2016 10:15:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] CVE request: Heap buffer overflow in pcretest

Heap-based buffer overread caused by specially crafted input triggering
infinite loop in pcretest.c was found affecting pcre 8.38. pcretest went
into loop if global matching was requested with an ovector size less than 2.

Upstream bug:

https://bugs.exim.org/show_bug.cgi?id=3D1777

Upstream fix:

http://vcs.pcre.org/pcre?view=3Drevision&revision=3D1637

Regards,

--=20
Adam Mari=C5=A1, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


