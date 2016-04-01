X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14416" "Thursday" "31" "March" "2016" "17:02:05" "-0700" "Brian Wallace" "bwall9809@gmail.com" "<CAHfGB06cYfRQ2_he=Y8ijX9pezEF9KyaGyJKpE5okX-MWOgn8g@mail.gmail.com>" "243" "[oss-security] CVE Request - Multiple remote command injection vulnerabilities in Veil-Evasion RPC" nil nil nil "3" "2016040100:02:05" "[oss-security] CVE Request - Multiple remote command injection vulnerabilities in Veil-Evasion RPC" (number mark "U       bwall9809@gm Mar 31  243/14416 " thread-indent "\"[oss-security] CVE Request - Multiple remote command injection vulnerabilities in Veil-Evasion RPC\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30654 invoked by uid 550); 1 Apr 2016 06:27:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24129 invoked from network); 1 Apr 2016 00:02:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=rK3S8jjRBWeibX2Ud27+Ukkw0TTfFZxtd3Xp4t/kR4A=;
        b=mXm1AKzPuaE+L5iGS8AyzgyO1GrtmzSPQWVrVTNdLT07Qyx+LKAVewKj9gpWk3Q/sH
         arIGVw0YLvIHaeGLxGg1ehoF9VNAJWRDiPTWdLL7DuncUFzcNrBt5hTYzSg0BCGFCANk
         8iOGKDFphc2I/ZNIS7R4sDbggreVquzQzDxivwGSq4u7v85OXhvKPFLiIc2pdp5ALEyI
         u1L6WGC0V5ffoU4oufnlYF55ec+Y0qx9bwxv4GSx2FzsM2nS2dXKyXpVNJ6OuHmaxTmP
         yuRuxgtuP8l2IEg6Tg3PQHlt1Bq7wkCwP31NOuGCh74Wpt7YeoUtZesxTQ64nk9ueFJS
         tnqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=rK3S8jjRBWeibX2Ud27+Ukkw0TTfFZxtd3Xp4t/kR4A=;
        b=VlDXeYkVXumvudm8BDBnwyePj5ZnKVaj976JUmb4fgcfyORyCTZhpPMJZEmbXDEhW9
         3AX4gmsYWM8jcfQhvxg/E7ooJFvhZf6Swdu8YpDU9jP2B+PPz5nvqsoXr78V8doyzvtP
         pzoAL6gVCRXcBadUm/2wa7Yi3y6nFCLZHzMVRcbViTPU9W2dWCVV0ZGzS1J2JF8BCJHy
         PGqdZR4ZSLOpXkdQ3cCMN9IaQ52ojKkVfy0IVTRFQhBj6RmFNu994UZ5S6wpXLuyFMOf
         w/YF9ilrRZSEcLDCGGG6H0wl+d50zZOF2Birmdf3daejK6Fdmnbpw5Qg1suYChB9F7QJ
         u7SA==
X-Gm-Message-State: AD7BkJJR7+fYkyqHzRsxtp3u6NPm+QvRKzE8ocUzEinZ5KmRwtQ8PUI7bS88vSjU1bWfcpX8c1W+Ndvf2giRTg==
MIME-Version: 1.0
X-Received: by 10.28.16.141 with SMTP id 135mr377845wmq.67.1459468925852; Thu,
 31 Mar 2016 17:02:05 -0700 (PDT)
Date: Thu, 31 Mar 2016 17:02:05 -0700
Message-ID: <CAHfGB06cYfRQ2_he=Y8ijX9pezEF9KyaGyJKpE5okX-MWOgn8g@mail.gmail.com>
From: Brian Wallace <bwall9809@gmail.com>
To: oss-security@lists.openwall.com
Cc: Christopher Truncer <ctruncer@veil-framework.com>
Content-Type: multipart/mixed; boundary=001a1145a978e301f7052f6116f6
Subject: [oss-security] CVE Request - Multiple remote command injection vulnerabilities in
 Veil-Evasion RPC

--001a1145a978e301f7052f6116f6
Content-Type: multipart/alternative; boundary=001a1145a978e301f2052f6116f4

--001a1145a978e301f2052f6116f4
Content-Type: text/plain; charset=UTF-8

Hello,

Three remote code execution vulnerabilities have been discovered in
Veil-Evasion's RPC, which is instantiated with `veil-evasion --rpc` or
`python Veil-Evasion --rpc`.  Additionally, previous to version 2.25, this
RPC allowed connections from any IP address instead of only "localhost",
increasing the severity of the command injection vulnerabilities and
allowing for remote exploitation.  This RPC public availability may also be
considered a vulnerability itself, as it was unintended.

All issues have been reported to the developers of the Veil-Evasion
project, and patches have been applied for version 2.25.  Issues are
believed to affect versions of Veil-Evasion from 2.5.2 through 2.24.


Remote command injection in "native/hyperion" module:
This module allows for injection into a command line call to the hyperion
utility.  A vulnerable version of the command line call can be found here:
https://github.com/Veil-Framework/Veil-Evasion/blob/c30d2f085a1a1644395b64a6d151cb0ea5a19dfb/modules/payloads/native/hyperion.py#L42
An attacker can control input to this field through the ORIGINAL_EXE
field.  A sample RPC call exploiting this vulnerability is as follows (will
create the file /tmp/victory):
{"method": "generate", "params": ["payload=native/hyperion",
"outputbase=base", "pwnstaller=N", "ORIGINAL_EXE=/tmp $(touch
/tmp/victory)"],"id": 1}
An attacker could use this vulnerability to execute any desired commands on
the victim host.

This issue is resolved in the following commit (version 2.25):
https://github.com/Veil-Framework/Veil-Evasion/commit/cd9d95ad368959d1eee03a250ec61206a046829a


Remote command injection in "native/pescrambler" module:
This module allows for injection into a command line call to the
pescrambler utility. A vulnerable version of the command line call can be
found here:
https://github.com/Veil-Framework/Veil-Evasion/blob/c30d2f085a1a1644395b64a6d151cb0ea5a19dfb/modules/payloads/native/pe_scrambler.py#L42
An attacker can control input to this field through the ORIGINAL_EXE
field.  A sample RPC call exploiting this vulnerability is as follows (will
create the file /tmp/victory):
{"method": "generate", "params": ["payload=native/pe_scrambler",
"outputbase=base", "pwnstaller=N", "ORIGINAL_EXE=/tmp $(touch
/tmp/victory)"],"id": 1}
An attacker could use this vulnerability to execute any desired commands on
the victim host.

This issue is resolved in the following commit (version 2.25):
https://github.com/Veil-Framework/Veil-Evasion/commit/cd9d95ad368959d1eee03a250ec61206a046829a


Remote command injection into "msfvenom" parameter:
When msfvenom is used to generate shellcode, a user may supply options to
the msfvenom command line call.  An attacker may use this to insert other
commands to be executed.  The command line execution of msfvenom can be
found here:
https://github.com/Veil-Framework/Veil-Evasion/blob/c30d2f085a1a1644395b64a6d151cb0ea5a19dfb/modules/common/shellcode.py#L498
Based on the functionality provided, the selected solution to the problem
was to parse input as a shell script, and deny any input which appeared to
include attempts at command injection.  An attacker can abuse this with the
following RPC call in version 2.24 (different versions may require
different modules depending on msfvenom support):
{"method": "generate", "params": ["payload=c/shellcode_inject/flatc",
"msfvenom=$(touch /tmp/victory)", "outputbase=base", "pwnstaller=N",
"COMPILE_TO_EXE=Y", "INJECT_METHOD=Virtual", ], "id": 1}
An attacker could use this vulnerability to execute any desired commands on
the victim host.

This issue was resolved in the following commit (version 2.25):
https://github.com/Veil-Framework/Veil-Evasion/commit/be10ddddaeacf232cec9dca5e49461454237ee8a


RPC unauthenticated public access:
The RPC provided on port 4242 for Veil-Evasion is exposed to external IP
addresses instead of only to localhost from its initial implementation up
until 2.25 patched this issue.  Aside from the issues noted above, this
would allow for an attacker to send commands to the Veil-Evasion RPC,
generating payloads, and other available functionality which may not be
desirable to unauthorized users.  The code causing the issue can be
observed here:
https://github.com/Veil-Framework/Veil-Evasion/commit/533d58721cef3f9d68303d628999d34d9ba3482b#diff-406918d36f7373d0d7e29279ceff3c8bR201

This issue was resolved in the following commit (version 2.25):
https://github.com/Veil-Framework/Veil-Evasion/commit/3cffe14ee5f9361697496ea045a95d62b38d52d4


Vulnerabilities were discovered and reported by Brian Wallace
bwall9809@gmail.com.

Chis Truncer (cc'd) is the primary developer for Veil-Evasion, and showed
an exemplary response to the vulnerability reporting.

CVEs for these issues have not been previously requested.

A combined proof of concept in Python 2.7 is attached.

This is my first request to this mailing list, so I apologize in advance
for any misinterpretations of protocol.

Thank you,
Brian Wallace

--001a1145a978e301f2052f6116f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Three remote code execution vuln=
erabilities have been discovered in Veil-Evasion&#39;s RPC, which is instan=
tiated with `veil-evasion --rpc` or `python Veil-Evasion --rpc`.=C2=A0 Addi=
tionally, previous to version 2.25, this RPC allowed connections from any I=
P address instead of only &quot;localhost&quot;, increasing the severity of=
 the command injection vulnerabilities and allowing for remote exploitation=
.=C2=A0 This RPC public availability may also be considered a vulnerability=
 itself, as it was unintended.</div><div><br></div><div>All issues have bee=
n reported to the developers of the Veil-Evasion project, and patches have =
been applied for version 2.25.=C2=A0 Issues are believed to affect versions=
 of Veil-Evasion from 2.5.2 through 2.24.</div><div><br></div><div><br></di=
v><div>Remote command injection in &quot;native/hyperion&quot; module:</div=
><div>This module allows for injection into a command line call to the hype=
rion utility.=C2=A0 A vulnerable version of the command line call can be fo=
und here:=C2=A0<a href=3D"https://github.com/Veil-Framework/Veil-Evasion/bl=
ob/c30d2f085a1a1644395b64a6d151cb0ea5a19dfb/modules/payloads/native/hyperio=
n.py#L42">https://github.com/Veil-Framework/Veil-Evasion/blob/c30d2f085a1a1=
644395b64a6d151cb0ea5a19dfb/modules/payloads/native/hyperion.py#L42</a></di=
v><div>An attacker can control input to this field through the ORIGINAL_EXE=
 field.=C2=A0 A sample RPC call exploiting this vulnerability is as follows=
 (will create the file /tmp/victory):</div><div>{&quot;method&quot;: &quot;=
generate&quot;, &quot;params&quot;: [&quot;payload=3Dnative/hyperion&quot;,=
 &quot;outputbase=3Dbase&quot;, &quot;pwnstaller=3DN&quot;, &quot;ORIGINAL_=
EXE=3D/tmp $(touch /tmp/victory)&quot;],&quot;id&quot;: 1}</div><div>An att=
acker could use this vulnerability to execute any desired commands on the v=
ictim host.<br></div><div><br></div><div>This issue is resolved in the foll=
owing commit (version 2.25):=C2=A0<a href=3D"https://github.com/Veil-Framew=
ork/Veil-Evasion/commit/cd9d95ad368959d1eee03a250ec61206a046829a">https://g=
ithub.com/Veil-Framework/Veil-Evasion/commit/cd9d95ad368959d1eee03a250ec612=
06a046829a</a></div><div><br></div><div><br></div><div>Remote command injec=
tion in &quot;native/pescrambler&quot; module:</div><div>This module allows=
 for injection into a command line call to the pescrambler utility. A vulne=
rable version of the command line call can be found here:=C2=A0<a href=3D"h=
ttps://github.com/Veil-Framework/Veil-Evasion/blob/c30d2f085a1a1644395b64a6=
d151cb0ea5a19dfb/modules/payloads/native/pe_scrambler.py#L42">https://githu=
b.com/Veil-Framework/Veil-Evasion/blob/c30d2f085a1a1644395b64a6d151cb0ea5a1=
9dfb/modules/payloads/native/pe_scrambler.py#L42</a></div><div>An attacker =
can control input to this field through the ORIGINAL_EXE field.=C2=A0 A sam=
ple RPC call exploiting this vulnerability is as follows (will create the f=
ile /tmp/victory):</div><div>{&quot;method&quot;: &quot;generate&quot;, &qu=
ot;params&quot;: [&quot;payload=3Dnative/pe_scrambler&quot;, &quot;outputba=
se=3Dbase&quot;, &quot;pwnstaller=3DN&quot;, &quot;ORIGINAL_EXE=3D/tmp $(to=
uch /tmp/victory)&quot;],&quot;id&quot;: 1}<br></div><div>An attacker could=
 use this vulnerability to execute any desired commands on the victim host.=
</div><div><br></div><div>This issue is resolved in the following commit (v=
ersion 2.25):=C2=A0<a href=3D"https://github.com/Veil-Framework/Veil-Evasio=
n/commit/cd9d95ad368959d1eee03a250ec61206a046829a">https://github.com/Veil-=
Framework/Veil-Evasion/commit/cd9d95ad368959d1eee03a250ec61206a046829a</a><=
br></div><div><br></div><div><br></div><div>Remote command injection into &=
quot;msfvenom&quot; parameter:</div><div>When msfvenom is used to generate =
shellcode, a user may supply options to the msfvenom command line call.=C2=
=A0 An attacker may use this to insert other commands to be executed.=C2=A0=
 The command line execution of msfvenom can be found here:=C2=A0<a href=3D"=
https://github.com/Veil-Framework/Veil-Evasion/blob/c30d2f085a1a1644395b64a=
6d151cb0ea5a19dfb/modules/common/shellcode.py#L498">https://github.com/Veil=
-Framework/Veil-Evasion/blob/c30d2f085a1a1644395b64a6d151cb0ea5a19dfb/modul=
es/common/shellcode.py#L498</a></div><div>Based on the functionality provid=
ed, the selected solution to the problem was to parse input as a shell scri=
pt, and deny any input which appeared to include attempts at command inject=
ion.=C2=A0 An attacker can abuse this with the following RPC call in versio=
n 2.24 (different versions may require different modules depending on msfve=
nom support):</div><div>{&quot;method&quot;: &quot;generate&quot;, &quot;pa=
rams&quot;: [&quot;payload=3Dc/shellcode_inject/flatc&quot;, &quot;msfvenom=
=3D$(touch /tmp/victory)&quot;, &quot;outputbase=3Dbase&quot;, &quot;pwnsta=
ller=3DN&quot;, &quot;COMPILE_TO_EXE=3DY&quot;, &quot;INJECT_METHOD=3DVirtu=
al&quot;, ], &quot;id&quot;: 1}<br></div><div>An attacker could use this vu=
lnerability to execute any desired commands on the victim host.</div><div><=
br></div><div>This issue was resolved in the following commit (version 2.25=
):=C2=A0<a href=3D"https://github.com/Veil-Framework/Veil-Evasion/commit/be=
10ddddaeacf232cec9dca5e49461454237ee8a">https://github.com/Veil-Framework/V=
eil-Evasion/commit/be10ddddaeacf232cec9dca5e49461454237ee8a</a></div><div><=
br></div><div><br></div><div>RPC unauthenticated public access:</div><div>T=
he RPC provided on port 4242 for Veil-Evasion is exposed to external IP add=
resses instead of only to localhost from its initial implementation up unti=
l 2.25 patched this issue.=C2=A0 Aside from the issues noted above, this wo=
uld allow for an attacker to send commands to the Veil-Evasion RPC, generat=
ing payloads, and other available functionality which may not be desirable =
to unauthorized users.=C2=A0 The code causing the issue can be observed her=
e:=C2=A0<a href=3D"https://github.com/Veil-Framework/Veil-Evasion/commit/53=
3d58721cef3f9d68303d628999d34d9ba3482b#diff-406918d36f7373d0d7e29279ceff3c8=
bR201">https://github.com/Veil-Framework/Veil-Evasion/commit/533d58721cef3f=
9d68303d628999d34d9ba3482b#diff-406918d36f7373d0d7e29279ceff3c8bR201</a></d=
iv><div><br></div><div>This issue was resolved in the following commit (ver=
sion 2.25):=C2=A0<a href=3D"https://github.com/Veil-Framework/Veil-Evasion/=
commit/3cffe14ee5f9361697496ea045a95d62b38d52d4">https://github.com/Veil-Fr=
amework/Veil-Evasion/commit/3cffe14ee5f9361697496ea045a95d62b38d52d4</a></d=
iv><div><br></div><div><br></div><div>Vulnerabilities were discovered and r=
eported by Brian Wallace <a href=3D"mailto:bwall9809@gmail.com">bwall9809@g=
mail.com</a>.</div><div><br></div><div>Chis Truncer (cc&#39;d) is the prima=
ry developer for Veil-Evasion, and showed an exemplary response to the vuln=
erability reporting.</div><div><br></div><div>CVEs for these issues have no=
t been previously requested.</div><div><br></div><div>A combined proof of c=
oncept in Python 2.7 is attached.</div><div><br></div><div>This is my first=
 request to this mailing list, so I apologize in advance for any misinterpr=
etations of protocol.</div><div><br></div><div>Thank you,</div><div>Brian W=
allace</div></div>

--001a1145a978e301f2052f6116f4--

--001a1145a978e301f7052f6116f6
Content-Type: text/x-python; charset=US-ASCII; name="poc.py"
Content-Disposition: attachment; filename="poc.py"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_imgy1wea0

aW1wb3J0IHNvY2tldAppbXBvcnQganNvbgoKCmRlZiBzZW5kX2NvbW1hbmQo
Y29tbWFuZCwgaXA9IjEyNy4wLjAuMSIsIHBvcnQ9NDI0Mik6CiAgICBzID0g
c29ja2V0LnNvY2tldChzb2NrZXQuQUZfSU5FVCwgc29ja2V0LlNPQ0tfU1RS
RUFNKQogICAgcy5jb25uZWN0KChpcCwgcG9ydCkpCiAgICBwcmludCBqc29u
LmR1bXBzKGNvbW1hbmQpCiAgICBzLnNlbmQoanNvbi5kdW1wcyhjb21tYW5k
KSkKICAgIHMuY2xvc2UoKQoKZGVmIGV4cGxvaXRfaHlwZXJpb24oaXA9IjEy
Ny4wLjAuMSIsIHBvcnQ9NDI0Mik6CiAgICBzZW5kX2NvbW1hbmQoeyJtZXRo
b2QiOiAiZ2VuZXJhdGUiLCAicGFyYW1zIjogWyJwYXlsb2FkPW5hdGl2ZS9o
eXBlcmlvbiIsICJvdXRwdXRiYXNlPWJhc2UiLCAicHduc3RhbGxlcj1OIiwg
Ik9SSUdJTkFMX0VYRT17MH0iLmZvcm1hdCgiL3RtcCAkKHRvdWNoIC90bXAv
dmljdG9yeSkiKSwgXSwgImlkIjogMX0sIGlwLCBwb3J0KQoKCmRlZiBleHBs
b2l0X3Blc2NyYW1ibGVyKGlwPSIxMjcuMC4wLjEiLCBwb3J0PTQyNDIpOgog
ICAgc2VuZF9jb21tYW5kKHsibWV0aG9kIjogImdlbmVyYXRlIiwgInBhcmFt
cyI6IFsicGF5bG9hZD1uYXRpdmUvcGVfc2NyYW1ibGVyIiwgIm91dHB1dGJh
c2U9YmFzZSIsICJwd25zdGFsbGVyPU4iLCAiT1JJR0lOQUxfRVhFPXswfSIu
Zm9ybWF0KCIvdG1wICQodG91Y2ggL3RtcC92aWN0b3J5KSIpLF0sImlkIjog
MX0sIGlwLCBwb3J0KQoKCmRlZiBleHBsb2l0X3NoZWxsY29kZV9nZW5lcmF0
aW9uKGlwPSIxMjcuMC4wLjEiLCBwb3J0PTQyNDIpOgogICAgc2VuZF9jb21t
YW5kKHsibWV0aG9kIjogImdlbmVyYXRlIiwgInBhcmFtcyI6IFsicGF5bG9h
ZD1jL3NoZWxsY29kZV9pbmplY3QvZmxhdGMiLCAibXNmdmVub209JCh0b3Vj
aCAvdG1wL3ZpY3RvcnkpIiwgIm91dHB1dGJhc2U9YmFzZSIsICJwd25zdGFs
bGVyPU4iLCAiQ09NUElMRV9UT19FWEU9WSIsICJJTkpFQ1RfTUVUSE9EPVZp
cnR1YWwiLCBdLCAiaWQiOiAxfSwgaXAsIHBvcnQpCgoKaXAgPSAiMTI3LjAu
MC4xIgpleHBsb2l0X2h5cGVyaW9uKGlwKQpleHBsb2l0X3Blc2NyYW1ibGVy
KGlwKQpleHBsb2l0X3NoZWxsY29kZV9nZW5lcmF0aW9uKGlwKQo=

--001a1145a978e301f7052f6116f6--
