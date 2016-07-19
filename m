X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1346" "Monday" "18" "July" "2016" "19:42:17" "-0800" "Michael McNally" "mcnally@isc.org" "<a8099639-6200-2e90-f14c-415791387826@isc.org>" "32" "[oss-security] ISC security issue CVE-2016-2775 (potential denial-of-service attack against lwres functionality in BIND)" nil nil nil "7" "2016071903:42:17" "[oss-security] ISC security issue CVE-2016-2775 (potential denial-of-service attack against lwres functionality in BIND)" (number mark "U       mcnally@isc. Jul 18   32/1346  " thread-indent "\"[oss-security] ISC security issue CVE-2016-2775 (potential denial-of-service attack against lwres functionality in BIND)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31780 invoked by uid 550); 19 Jul 2016 03:42:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31759 invoked from network); 19 Jul 2016 03:42:33 -0000
To: oss-security@lists.openwall.com
From: Michael McNally <mcnally@isc.org>
Message-ID: <a8099639-6200-2e90-f14c-415791387826@isc.org>
Date: Mon, 18 Jul 2016 19:42:17 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:45.0)
 Gecko/20100101 Thunderbird/45.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC security issue CVE-2016-2775 (potential denial-of-service attack
 against lwres functionality in BIND)

Earlier today ISC disclosed a vulnerability affecting BIND (specifically
affecting lightweight resolution functionality in BIND, NOT normal DNS
resolution.  The bug affects the lwresd program or named if is configured
to do lightweight resolution using the "lwres" configuration statement.)

The defect was publicly disclosed as CVE-2016-2775 and the official
vulnerability disclosure is here:

  https://kb.isc.org/article/AA-01393/74/CVE-2016-2775

Ordinarily we try to give advance notice to packagers when we are
preparing new releases of BIND.  Unfortunately our timetable for this
incident changed in mid-course when the reporting party informed us
that reproduction code was already available in a public bug repository.

We apologize for the inconvenience caused by the acceleration of our
disclosure timetable.

New releases of BIND are available which fix the lwres issue
(CVE-2016-2775) and include fixes for a few regressions which
had been introduced in recent versions.  You can find them in
the usual place on our site:

  https://www.isc.org/downloads

A standalone patch diff addressing only CVE-2016-2775 can be made
available upon request to any parties who want only the lwres CVE
fix and not the other regression fixes.  Contact security-officer@isc.org
if you wish to request it.

Michael McNally
(for ISC Security Officer)
