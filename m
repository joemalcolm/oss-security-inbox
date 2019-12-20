X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1624" "Friday" "20" "December" "2019" "17:11:29" "+0000" "Pavel Cheremushkin" "Pavel.Cheremushkin@kaspersky.com" nil "36" nil "^Date:" nil nil "12" nil nil (number mark "        Pavel.Cherem Dec 20   36/1624  " thread-indent "\"[oss-security] VNC vulnerabilities. TigerVNC security update\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] VNC vulnerabilities. TigerVNC security update" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30567 invoked by uid 550); 20 Dec 2019 20:07:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13371 invoked from network); 20 Dec 2019 17:13:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaspersky.com;
	s=mail; t=1576861975;
	bh=wd0Ylwfm5flpaxaxjrYwhIodF8EZ3oJ3opfrJCEcL84=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
	b=hqXjak2Q8v9+P62gsWiD/MKosZge0aMqKgwaNh/Z9XhYDVGlY30SCIwMwvghcGDD7
	 QpHO/+A4vzTqbilGiyBbFrV/yMywYilyJcD22JD55nJH7V3txMflv3+GItqq8hcpFR
	 FtRAoqaj/WmpkUpWA4eiUYaU9iZ19yGs1Y787tVI=
Thread-Topic: VNC vulnerabilities. TigerVNC security update
Thread-Index: AdW3V4y/v/BtRvs8QhG//MtLzWTkzw==
Message-ID: <75b02ec0499444db96581c54a4a178a9@kaspersky.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.68.129]
x-kse-serverinfo: hqmailmbx1.avp.ru, 9
x-kse-attachmentfiltering-interceptor-info: no applicable attachment filtering
 rules found
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 20.12.2019 15:49:00
x-kse-bulkmessagesfiltering-scan-result: InTheLimit
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-KLMS-Rule-ID: 52
X-KLMS-Message-Action: clean
X-KLMS-AntiSpam-Status: not scanned, disabled by settings
X-KLMS-AntiSpam-Interceptor-Info: not scanned
X-KLMS-AntiPhishing: Clean, bases: 2019/12/20 16:19:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.16, bases: 2019/12/20 16:13:00 #14856601
X-KLMS-AntiVirus-Status: Clean, skipped
Date: Fri, 20 Dec 2019 17:11:29 +0000
From: Pavel Cheremushkin <Pavel.Cheremushkin@kaspersky.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] VNC vulnerabilities. TigerVNC security update
To: "'oss-security@lists.openwall.com'" <oss-security@lists.openwall.com>

Hello,

This is a final report about reviewing open source VNC implementations. Thi=
s research has been motivated by the fact that some VNC systems are heavily=
 used in ICS.

About a year ago I have already sent an email to this mailing list about Ti=
ghtVNC and LibVNC vulnerabilities: https://www.openwall.com/lists/oss-secur=
ity/2018/12/10/5
Later this year I had some time to review more open source implementations =
of VNC systems (mostly UltraVNC), which are described in this article: http=
s://ics-cert.kaspersky.com/reports/2019/11/22/vnc-vulnerability-research/

Finally, today TigerVNC team managed to fix all issues found within their c=
odebase and published fixes in new release 1.10.1
https://github.com/TigerVNC/tigervnc/releases/tag/v1.10.1
https://github.com/TigerVNC/tigervnc/commit/d461f7fdb8b01f655260ea2f495ece7=
00f3c9898

Fix contains patches for several vulnerabilities that have been fixed in ma=
ster branch only, and 5 vulnerabilities (CVE-2019-15691 -- CVE-2019-15695) =
that actually got into the previous release. CVE-ids will published shortly=
. Please update.

Also, I accidently found another heap buffer overflow in LibVNC (CVE-2019-1=
5690), when I was playing with CodeQL queries. It was missed during previou=
s analysis by me. It later turned out that my fuzzer didn't find it either,=
 because it required at least 256MB to be sent over the network to trigger =
it :)

Best Regards,
Pavel Cheremushkin
Security Researcher| ICS CERT Vulnerability Research Group |=9AKaspersky Lab
39A bld.2 Leningradskoye Highway, Moscow 125212, Russia |=9Awww.kaspersky.c=
om,www.securelist.com

