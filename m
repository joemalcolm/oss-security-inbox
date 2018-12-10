X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5889" "Monday" "10" "December" "2018" "12:48:43" "+0000" "Pavel Cheremushkin" "Pavel.Cheremushkin@kaspersky.com" "<9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>" "106" "[oss-security] libvnc and tightvnc vulnerabilities" "^Date:" nil nil "12" "2018121012:48:43" "[oss-security] libvnc and tightvnc vulnerabilities" (number mark "        Pavel.Cherem Dec 10  106/5889  " thread-indent "\"[oss-security] libvnc and tightvnc vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22243 invoked by uid 550); 10 Dec 2018 13:00:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7463 invoked from network); 10 Dec 2018 12:49:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaspersky.com;
	s=mail; t=1544446133;
	bh=Fqqqr9H0pZEHXjw2uWU2H3Y2/Mb2p9myto28Gw2oo4U=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
	b=LKM+5OJ+MXQn6OYxRB+nntHuQaJZ5AE3agQMDO0VwvsWqjT0xuTktND2ptl78mLkY
	 5qip2+G4WWYrWrHeFMGBCo+l6HHsOi8yRPYyFWotnLU2RO+NsxMcFuM9D+k/ldJCmL
	 nbURFmF5P9AZFTCcw+l8Ij9Yq5eBTbBZlU0qrhps=
Thread-Topic: libvnc and tightvnc vulnerabilities
Thread-Index: AdSQfEQTGmJAaaQTQKO5Um5RBEacMw==
Message-ID: <9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>
Accept-Language: en-US, ru-RU
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.68.128]
x-kse-serverinfo: hqmailmbx1.avp.ru, 9
x-kse-attachmentfiltering-interceptor-info: no applicable attachment filtering
 rules found
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean, bases: 10.12.2018 9:58:00
x-kse-bulkmessagesfiltering-scan-result: InTheLimit
Content-Type: multipart/alternative;
	boundary="_000_9396dbd0a417440abe9bbb830e7b612fkasperskycom_"
MIME-Version: 1.0
X-KLMS-Rule-ID: 52
X-KLMS-Message-Action: clean
X-KLMS-AntiSpam-Status: not scanned, disabled by settings
X-KLMS-AntiSpam-Interceptor-Info: not scanned
X-KLMS-AntiPhishing: Clean, bases: 2018/12/10 12:15:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.16, bases: 2018/12/10 08:18:00 #12726851
X-KLMS-AntiVirus-Status: Clean, skipped
Date: Mon, 10 Dec 2018 12:48:43 +0000
From: Pavel Cheremushkin <Pavel.Cheremushkin@kaspersky.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libvnc and tightvnc vulnerabilities
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_9396dbd0a417440abe9bbb830e7b612fkasperskycom_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hello,

LibVNC is a cross-platform library to implement programs that use RFB (remo=
te frame buffer protocol). Although, on its Github page (https://github.com=
/LibVNC/libvncserver) it is stated that libvnc is designed to implement ser=
ver-side software, it also has functionality to implement a VNC client. Due=
 to the fact that many ICS vendors use open source VNC products I would lik=
e to drag some attention to the VNC products because they have some problem=
s that should be fixed asap.

During recent research of libvnc I managed to discover few vulnerabilities =
(11 in total) which affect products that are using libvncserver and libvncc=
lient (https://github.com/LibVNC/libvncserver/issues?utf8=3D%E2%9C%93&q=3Di=
s%3Aissue+author%3Apaulcher). There are a couple of issues left to the next=
 release of libvnc (https://github.com/LibVNC/libvncserver/milestone/4), bu=
t the packages, that I have recently reviewed still didn't patch vulnerabil=
ities that were found quite some time ago. Meanwhile, an issue that has bee=
n found by @ateska (https://github.com/LibVNC/libvncserver/issues/211) is c=
ritical, affects VirtualBox and probably every multithreading VNC server th=
at is based on libvnc and it is still not patched after almost a year.

At first, I thought that these issues were inside the code that was written=
 by libvnc developers, by this wasn't exactly the case. Some of them (i.e. =
buffer overflow inside heap structure in CoRRE handler https://github.com/L=
ibVNC/libvncserver/issues/250) were inside vulnerable code written by AT&T =
Laboratories in 1999 and got copy-pasted by many software developers (you c=
an see it by trying to find HandleCoRREBPP function in Github search), as w=
ell by LibVNC and TightVNC  developers. LibVNC contributors managed to fix =
all security issues that I have reported to them so far. Also I tried to re=
port these vulnerabilities in TightVNC software version 1.3.10 (which is us=
ed, for example, in latest Ubuntu "xtightvncviewer" package) to GlavSoft co=
mpany, who are authors of the TightVNC software:

```
1. global buffer overflow in corre.c
    In `vnc_unixsrc/vncviewer/corre.c` inside the `HandleCoRREBPP` function=
 global buffer overflow occurs due to the lack of size check.
    `buffer` is defined in rfbproto.c:96 as ```char buffer[640*480];```. In=
side `HandleCoRREBPP` function data is being read to the buffer `ReadFromRF=
BServer(buffer, hdr.nSubrects * (4 + (BPP / 8))` where `hdr.nSubrects` is 3=
2-bit unsigned integer controlled by remote user.

2. heap buffer overflow in rfbServerCutText handler
    Heap buffer overflow in `rfbServerCutText` handler inside `HandleRFBSer=
verMessage` happens due to the malloc argument unsigned integer overflow on=
 line rfbproto.c:1220. Suppose msg.sct.length equals 0xffffffff, then `mall=
oc(msg.sct.length+1);` =3D `malloc(0);` will allocate small heap chunk of s=
ize 0x10. But `msg.sct.length` =3D 0xffffffff bytes may be read in this chu=
nk on line 1222 (`ReadFromRFBServer(serverCutText, msg.sct.length)`).

3. heap buffer overflow in InitialiseRFBConnection function
    Heap buffer overflow `InitialiseRFBConnection` function happens due to =
the malloc argument unsigned integer overflow on line rfbproto.c:307. Becau=
se of the integer overflow `malloc` function will allocate small heap chunk=
 of size 0x10 and 0xffffffff bytes will be read into the chunk by ReadFromR=
FBServer function.

4. null-ptr dereference in `zlib.c`
    Because malloc result is not checked after allocation on line zlib.c:56=
 null pointer dereference is possible if malloc argument is too big and mal=
loc fill fail to allocate memory Allocation of raw buffer : `raw_buffer =3D=
 (char*) malloc( raw_buffer_size );`, next usage of raw_buffer is on line 68
```

But GlavSoft representative politely declined to patch the 1.X version of T=
ightVNC software, because it doesn't bring any income to the company. They =
are currently developing TightVNC 2.X, which is not affected by GPL license=
s in third-party code. This is the exact answer of the GlavSoft representat=
ive (in Russian):



=EB =D3=CF=D6=C1=CC=C5=CE=C9=C0, =CB=C1=CB =CB=CF=CD=CD=C5=D2=DE=C5=D3=CB=
=CF=CA =CF=D2=C7=C1=CE=C9=DA=C1=C3=C9=C9, =CE=C1=CD =D3=CF=D7=C5=D2=DB=C5=
=CE=CE=CF =CE=C5=D2=C5=CE=D4=C1=C2=C5=CC=D8=CE=CF =DA=C1=CE=C9=CD=C1=D4=D8=
=D3=D1 TightVNC 1.x, =D4.=CB. =CF=CE=CF =D3=CF=C4=C5=D2=D6=C9=D4 =DE=D5=D6=
=CF=CA GPL-=CB=CF=C4 =C9 =D0=CF=DC=D4=CF=CD=D5 =CD=D9 =CE=C5 =C9=CD=C5=C5=
=CD =D7=CF=DA=CD=CF=D6=CE=CF=D3=D4=D8 =D0=D2=C5=C4=CC=C1=C7=C1=D4=D8 =DC=D4=
=CF=D4 =CB=CF=C4 =D0=CF=C4 =C4=D2=D5=C7=C9=CD=C9 =CC=C9=C3=C5=CE=DA=C9=D1=
=CD=C9. =E1 =D4=C5=C8=D0=CF=C4=C4=C5=D2=D6=CB=C1 =D7 =D3=CC=D5=DE=C1=C5 =D3=
 TightVNC =CE=C9=CB=CF=C7=C4=C1 =CE=C5 =D0=D2=C9=CE=CF=D3=C9=CC=C1 =CE=C1=
=CD =D3=CB=CF=CC=D8-=CE=C9=C2=D5=C4=D8 =D3=D5=DD=C5=D3=D4=D7=C5=CE=CE=CF=C7=
=CF =C4=CF=C8=CF=C4=C1. =F0=CF=DC=D4=CF=CD=D5, =D5=D7=D9, =D7=C5=D2=D3=C9=
=C9 1.x =CE=C1=CD =D3=CF=D7=D3=C5=CD =CE=C5=C9=CE=D4=C5=D2=C5=D3=CE=D9.

That being said, package maintainers should probably patch these vulnerabil=
ities by themselves if they want to continue supporting TightVNC 1.X packag=
es in their repositories.

These bugs are so obvious and I still cannot believe that they haven't been=
 already found by anyone else. So please tell me if these issues have been =
already discovered before, but remained unpatched for some reason.


Best Regards,
Pavel Cheremushkin
Security Researcher| ICS CERT Vulnerability Research Group | Kaspersky Lab
39A bld.2 Leningradskoye Highway, Moscow 125212, Russia | www.kaspersky.com=
<http://www.kaspersky.com/>,www.securelist.com<http://www.securelist.com/>


--_000_9396dbd0a417440abe9bbb830e7b612fkasperskycom_--
