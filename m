X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5088" "Thursday" "28" "July" "2016" "13:34:27" "+0200" "Andreas Stieger" "astieger@suse.com" "<02218f3b-90ba-87cb-f0f9-2e576eae6917@suse.com>" "111" "[oss-security] CVE request: Wireshark 2.0.5 and 1.12.13 security releases" "^Cc:" nil nil "7" "2016072811:34:27" "[oss-security] CVE request: Wireshark 2.0.5 and 1.12.13 security releases" (number mark "U       astieger@sus Jul 28  111/5088  " thread-indent "\"[oss-security] CVE request: Wireshark 2.0.5 and 1.12.13 security releases\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31924 invoked by uid 550); 28 Jul 2016 11:35:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31906 invoked from network); 28 Jul 2016 11:35:00 -0000
Organization: SUSE Linux GmbH
Message-ID: <02218f3b-90ba-87cb-f0f9-2e576eae6917@suse.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: cve-assign@mitre.org
Date: Thu, 28 Jul 2016 13:34:27 +0200
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Wireshark 2.0.5 and 1.12.13 security releases
To: oss-security@lists.openwall.com

Hello

Wireshark 2.0.5 and 1.12.13 were announced to contain fixes of the usual
dissector crash / endless loop read from wire or capture file type:

https://www.wireshark.org/lists/wireshark-announce/201607/msg00001.html


CORBA IDL dissector crash on 64-bit Windows (wnpa-sec-2016-39)
It may be possible to make Wireshark crash by injecting a malformed
packet onto the wire or by convincing someone to read a malformed packet
trace file. Affects 2.0.0 to 2.0.4, fixed in 2.0.5
https://www.wireshark.org/security/wnpa-sec-2016-39.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12495

NDS dissector crash (wnpa-sec-2016-40)
It may be possible to make Wireshark crash by injecting a malformed
packet onto the wire or by convincing someone to read a malformed packet
trace file. Affects 1.12.0 to 1.12.12, fixed in 1.12.13.
https://www.wireshark.org/security/wnpa-sec-2016-40.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12576

PacketBB dissector could divide by zero (wnpa-sec-2016-41)
The PacketBB dissector could divide by zero. It may be possible to make
Wireshark crash by injecting a malformed packet onto the wire or by
convincing someone to read a malformed packet trace file. Affects 2.0.0
to 2.0.4, 1.12.0 to 1.12.12, fixed in 2.0.5, 1.12.13.
https://www.wireshark.org/security/wnpa-sec-2016-41.html
\https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12577

wnpa-sec-2016-42
WSP infinite loop (wnpa-sec-2016-42)
The WSP dissector could go into an infinite loop. It may be possible to
make Wireshark consume excessive CPU resources by injecting a malformed
packet onto the wire or by convincing someone to read a malformed packet
trace file. Affects 2.0.0 to 2.0.4, 1.12.0 to 1.12.12 , fixed in 2.0.5,
1.12.13
https://www.wireshark.org/security/wnpa-sec-2016-42.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12594

MMSE infinite loop (wnpa-sec-2016-43)
The MMSE dissector could go into an infinite loop. It may be possible to
make Wireshark consume excessive CPU resources by injecting a malformed
packet onto the wire or by convincing someone to read a malformed packet
trace file. Affects 1.12.0 to 1.12.12, fixed 1.12.13
https://www.wireshark.org/security/wnpa-sec-2016-43.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12624

RLC long loop (wnpa-sec-2016-44)
The RLC dissector could go into a long loop. It may be possible to make
Wireshark consume excessive CPU resources by injecting a malformed
packet onto the wire or by convincing someone to read a malformed packet
trace file. Affects  2.0.0 to 2.0.4, 1.12.0 to 1.12.12, fixed in 2.0.5,
1.12.13.
https://www.wireshark.org/security/wnpa-sec-2016-44.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12624

LDSS dissector crash (wnpa-sec-2016-45)
The LDSS dissector could crash. It may be possible to make Wireshark
crash by injecting a malformed packet onto the wire or by convincing
someone to read a malformed packet trace file. Affects 2.0.0 to 2.0.4,
1.12.0 to 1.12.12, fixed in 2.0.5, 1.12.13.
https://www.wireshark.org/security/wnpa-sec-2016-45.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12662

RLC dissector crash (wnpa-sec-2016-46)
The RLC dissector could crash. It may be possible to make Wireshark
crash by injecting a malformed packet onto the wire or by convincing
someone to read a malformed packet trace file. Affects 2.0.0 to 2.0.4,
1.12.0 to 1.12.12, fixed in 2.0.5, 1.12.13.
https://www.wireshark.org/security/wnpa-sec-2016-46.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12664

OpenFlow long loop (wnpa-sec-2016-47)
The OpenFlow dissector (and possibly others) could go into a long loop.
It may be possible to make Wireshark consume excessive CPU resources by
injecting a malformed packet onto the wire or by convincing someone to
read a malformed packet trace file. Affects 2.0.0 to 2.0.4, 1.12.0 to
1.12.12, fixed in 2.0.5, 1.12.13.
https://www.wireshark.org/security/wnpa-sec-2016-47.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12659

MMSE, WAP, WBXML, and WSP infinite loop (wnpa-sec-2016-48)
The MMSE, WAP, WBXML, and WSP dissectors could go into an infinite loop.
It may be possible to make Wireshark crash by injecting a malformed
packet onto the wire or by convincing someone to read a malformed packet
trace file. Affects 2.0.0 to 2.0.4, fixed in 2.0.5.
https://www.wireshark.org/security/wnpa-sec-2016-48.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12661

WBXML crash (wnpa-sec-2016-49)
The WBXML dissector could crash. It may be possible to make Wireshark
crash by injecting a malformed packet onto the wire or by convincing
someone to read a malformed packet trace file. Affects 2.0.0 to 2.0.4,
fixed in 2.0.5
https://www.wireshark.org/security/wnpa-sec-2016-49.html
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12663


Could CVE please be assigned?

With kind regards,
Andreas Stieger

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=C3=BCrnberg)


