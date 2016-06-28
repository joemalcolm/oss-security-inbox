X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9577" "Tuesday" "28" "June" "2016" "14:50:14" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriK-q3LdYd31Wj1VwV5d=Y5Qu=yP4tjpkSOKP2wu-C8XZA@mail.gmail.com>" "187" "[oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free" nil nil nil "6" "2016062806:50:14" "[oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free" (number mark "U       marco.gra@gm Jun 28  187/9577  " thread-indent "\"[oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27709 invoked by uid 550); 28 Jun 2016 06:50:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27653 invoked from network); 28 Jun 2016 06:50:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=7wpID8Bros77ezULNoezPXhHXQaamZIB72Q8xKx4DEM=;
        b=hIXVbXKRaIq0VnU+8XLRIOzU3Q8t/HeG/OVdu5e3nCOYWHFQLWJBraZ1oD0wRUpJMz
         ahF7akiZic+cwc/dP0UfN0DWmP0X7FK/j6ZvtmrtZL6AcUi1y2ZzHF45GVJGdCBv51zC
         fZs/GOhf8AFPzaPwNmvHdZf0qSjPRXk/NFUuG7bfAe+67t6QPOjI98kozJGqa7peO+Pg
         VD8hqx7HHXAGfcrZ4uPz0g/JQprBR9z+smJ6yuLKzSQaQJ3NKscsumgHqu5MeZPnuCWz
         OMfkOWSTZCJg5K43sEJWzlinoPDM9yZqOcRYUP+kU04P9zh+T+83v9LyOo2CzvvqUBOU
         ZLOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=7wpID8Bros77ezULNoezPXhHXQaamZIB72Q8xKx4DEM=;
        b=Jp3f9NYIlqHGUcPuwSsUuZjQulPOhsrOBQAAud7vw+pMDX7P8C5QrPQ9KGHCVG3Owi
         Ntn3jT3GTXy853QEuYLbLdCx2Yso4oTda1+r0LJM5Ber/IqbwcrlugZBS0sQR3U63CoB
         39oiiCsGkqtegZcMk7kmza1Pg9ZPamcxUSHokAkAHKYMKSYBIvVwOqkRm6z3gw1zeI06
         PTt6zToVXkEau3vsb9GZ0E9I7//Ens9mLYHTu3H4LqBMczOHoGkn1yViV3D7MDjstjBj
         nskKQiw1iy4guX/nuHpLq1VgFnqdxJOdjtfqtULZS8zSymG74RTolbANaypPy4CfY7R4
         YOaQ==
X-Gm-Message-State: ALyK8tIdLeTvgK1qHioD1HScYE5CMQ9y85JKsfCBEYl9GTL6rjInFEUrW7zcGPwqX+LgN+D/gR6bmqSlw8VZxw==
X-Received: by 10.202.73.140 with SMTP id w134mr727345oia.35.1467096614610;
 Mon, 27 Jun 2016 23:50:14 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Tue, 28 Jun 2016 14:50:14 +0800
Message-ID: <CAFkTriK-q3LdYd31Wj1VwV5d=Y5Qu=yP4tjpkSOKP2wu-C8XZA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/mixed; boundary=001a113dd4e290cb920536510c61
Subject: [oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free

--001a113dd4e290cb920536510c61
Content-Type: multipart/alternative; boundary=001a113dd4e290cb8e0536510c5f

--001a113dd4e290cb8e0536510c5f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

the attached xml will trigger a UAF in xerces-c version 3.1.3 and the trunk
version


=E2=9E=9C  xml cat xerces_uaf | xerces-c-3.1.3/samples/StdInParse
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D16010=3D=3DERROR: AddressSanitizer: heap-use-after-free on address 0x=
f4a0dfcc
at pc 0x0836c7f4 bp 0xfff9a198 sp 0xfff9a188
READ of size 1 at 0xf4a0dfcc thread T0
    #0 0x836c7f3 in
xercesc_3_1::ReaderMgr::getLastExtEntityInfo(xercesc_3_1::ReaderMgr::LastEx=
tEntityInfo&)
const xercesc/internal/ReaderMgr.cpp:833
    #1 0x83a42d4 in
xercesc_3_1::XMLScanner::emitError(xercesc_3_1::XMLErrs::Codes,
xercesc_3_1::XMLExcepts::Codes, unsigned short const*, unsigned short
const*, unsigned short const*, unsigned short const*)
xercesc/internal/XMLScanner.cpp:927
    #2 0x8e40963 in
xercesc_3_1::IGXMLScanner::scanDocument(xercesc_3_1::InputSource const&)
xercesc/internal/IGXMLScanner.cpp:276
    #3 0x84b4cca in xercesc_3_1::SAXParser::parse(xercesc_3_1::InputSource
const&) xercesc/parsers/SAXParser.cpp:575
    #4 0x80533d6 in main src/StdInParse/StdInParse.cpp:186
    #5 0xf6dd5636 in __libc_start_main (/lib32/libc.so.6+0x18636)
    #6 0x80624f1
 (/home/bob/VulnResearch/misc/xml/xerces-c-3.1.3/samples/StdInParse+0x80624=
f1)

0xf4a0dfcc is located 44 bytes inside of 56-byte region
[0xf4a0dfa0,0xf4a0dfd8)
freed by thread T0 here:
    #0 0xf7228034 in operator delete(void*)
(/usr/lib32/libasan.so.3+0xc5034)
    #1 0x80992df in xercesc_3_1::XMemory::operator delete(void*)
xercesc/util/XMemory.cpp:89

previously allocated by thread T0 here:
    #0 0xf72279b4 in operator new(unsigned int)
(/usr/lib32/libasan.so.3+0xc49b4)
    #1 0x8357ad9 in xercesc_3_1::MemoryManagerImpl::allocate(unsigned int)
xercesc/internal/MemoryManagerImpl.cpp:40
    #2 0x8099042 in xercesc_3_1::XMemory::operator new(unsigned int,
xercesc_3_1::MemoryManager*) xercesc/util/XMemory.cpp:68

SUMMARY: AddressSanitizer: heap-use-after-free
xercesc/internal/ReaderMgr.cpp:833 in
xercesc_3_1::ReaderMgr::getLastExtEntityInfo(xercesc_3_1::ReaderMgr::LastEx=
tEntityInfo&)
const
Shadow bytes around the buggy address:
  0x3e941ba0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x3e941bb0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x3e941bc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x3e941bd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x3e941be0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=3D>0x3e941bf0: fa fa fa fa fd fd fd fd fd[fd]fd fa fa fa fa fa
  0x3e941c00: fd fd fd fd fd fd fd fa fa fa fa fa 00 00 00 00
  0x3e941c10: 00 00 00 fa fa fa fa fa 00 00 00 00 00 00 00 00
  0x3e941c20: fa fa fa fa 00 00 00 00 00 00 00 00 fa fa fa fa
  0x3e941c30: 00 00 00 00 00 00 00 00 fa fa fa fa 00 00 00 00
  0x3e941c40: 00 00 04 fa fa fa fa fa 00 00 00 00 00 00 04 fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
=3D=3D16010=3D=3DABORTING



Marco

https://marcograss.github.io/

--001a113dd4e290cb8e0536510c5f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>the attached xml will trigger=
 a UAF in xerces-c version 3.1.3 and the trunk version</div><div><br></div>=
<div><br></div><div><div>=E2=9E=9C =C2=A0xml cat xerces_uaf | xerces-c-3.1.=
3/samples/StdInParse=C2=A0</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</div><div>=3D=3D16010=3D=3DERROR: AddressSanitizer: heap-use-afte=
r-free on address 0xf4a0dfcc at pc 0x0836c7f4 bp 0xfff9a198 sp 0xfff9a188</=
div><div>READ of size 1 at 0xf4a0dfcc thread T0</div><div>=C2=A0 =C2=A0 #0 =
0x836c7f3 in xercesc_3_1::ReaderMgr::getLastExtEntityInfo(xercesc_3_1::Read=
erMgr::LastExtEntityInfo&amp;) const xercesc/internal/ReaderMgr.cpp:833</di=
v><div>=C2=A0 =C2=A0 #1 0x83a42d4 in xercesc_3_1::XMLScanner::emitError(xer=
cesc_3_1::XMLErrs::Codes, xercesc_3_1::XMLExcepts::Codes, unsigned short co=
nst*, unsigned short const*, unsigned short const*, unsigned short const*) =
xercesc/internal/XMLScanner.cpp:927</div><div>=C2=A0 =C2=A0 #2 0x8e40963 in=
 xercesc_3_1::IGXMLScanner::scanDocument(xercesc_3_1::InputSource const&amp=
;) xercesc/internal/IGXMLScanner.cpp:276</div><div>=C2=A0 =C2=A0 #3 0x84b4c=
ca in xercesc_3_1::SAXParser::parse(xercesc_3_1::InputSource const&amp;) xe=
rcesc/parsers/SAXParser.cpp:575</div><div>=C2=A0 =C2=A0 #4 0x80533d6 in mai=
n src/StdInParse/StdInParse.cpp:186</div><div>=C2=A0 =C2=A0 #5 0xf6dd5636 i=
n __libc_start_main (/lib32/libc.so.6+0x18636)</div><div>=C2=A0 =C2=A0 #6 0=
x80624f1 =C2=A0(/home/bob/VulnResearch/misc/xml/xerces-c-3.1.3/samples/StdI=
nParse+0x80624f1)</div><div><br></div><div>0xf4a0dfcc is located 44 bytes i=
nside of 56-byte region [0xf4a0dfa0,0xf4a0dfd8)</div><div>freed by thread T=
0 here:</div><div>=C2=A0 =C2=A0 #0 0xf7228034 in operator delete(void*) (/u=
sr/lib32/libasan.so.3+0xc5034)</div><div>=C2=A0 =C2=A0 #1 0x80992df in xerc=
esc_3_1::XMemory::operator delete(void*) xercesc/util/XMemory.cpp:89</div><=
div><br></div><div>previously allocated by thread T0 here:</div><div>=C2=A0=
 =C2=A0 #0 0xf72279b4 in operator new(unsigned int) (/usr/lib32/libasan.so.=
3+0xc49b4)</div><div>=C2=A0 =C2=A0 #1 0x8357ad9 in xercesc_3_1::MemoryManag=
erImpl::allocate(unsigned int) xercesc/internal/MemoryManagerImpl.cpp:40</d=
iv><div>=C2=A0 =C2=A0 #2 0x8099042 in xercesc_3_1::XMemory::operator new(un=
signed int, xercesc_3_1::MemoryManager*) xercesc/util/XMemory.cpp:68</div><=
div><br></div><div>SUMMARY: AddressSanitizer: heap-use-after-free xercesc/i=
nternal/ReaderMgr.cpp:833 in xercesc_3_1::ReaderMgr::getLastExtEntityInfo(x=
ercesc_3_1::ReaderMgr::LastExtEntityInfo&amp;) const</div><div>Shadow bytes=
 around the buggy address:</div><div>=C2=A0 0x3e941ba0: fa fa fa fa fa fa f=
a fa fa fa fa fa fa fa fa fa</div><div>=C2=A0 0x3e941bb0: fa fa fa fa fa fa=
 fa fa fa fa fa fa fa fa fa fa</div><div>=C2=A0 0x3e941bc0: fa fa fa fa fa =
fa fa fa fa fa fa fa fa fa fa fa</div><div>=C2=A0 0x3e941bd0: fa fa fa fa f=
a fa fa fa fa fa fa fa fa fa fa fa</div><div>=C2=A0 0x3e941be0: fa fa fa fa=
 fa fa fa fa fa fa fa fa fa fa fa fa</div><div>=3D&gt;0x3e941bf0: fa fa fa =
fa fd fd fd fd fd[fd]fd fa fa fa fa fa</div><div>=C2=A0 0x3e941c00: fd fd f=
d fd fd fd fd fa fa fa fa fa 00 00 00 00</div><div>=C2=A0 0x3e941c10: 00 00=
 00 fa fa fa fa fa 00 00 00 00 00 00 00 00</div><div>=C2=A0 0x3e941c20: fa =
fa fa fa 00 00 00 00 00 00 00 00 fa fa fa fa</div><div>=C2=A0 0x3e941c30: 0=
0 00 00 00 00 00 00 00 fa fa fa fa 00 00 00 00</div><div>=C2=A0 0x3e941c40:=
 00 00 04 fa fa fa fa fa 00 00 00 00 00 00 04 fa</div><div>Shadow byte lege=
nd (one shadow byte represents 8 application bytes):</div><div>=C2=A0 Addre=
ssable: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 00</div><div>=C2=A0 Partially ad=
dressable: 01 02 03 04 05 06 07=C2=A0</div><div>=C2=A0 Heap left redzone: =
=C2=A0 =C2=A0 =C2=A0 fa</div><div>=C2=A0 Heap right redzone: =C2=A0 =C2=A0 =
=C2=A0fb</div><div>=C2=A0 Freed heap region: =C2=A0 =C2=A0 =C2=A0 fd</div><=
div>=C2=A0 Stack left redzone: =C2=A0 =C2=A0 =C2=A0f1</div><div>=C2=A0 Stac=
k mid redzone: =C2=A0 =C2=A0 =C2=A0 f2</div><div>=C2=A0 Stack right redzone=
: =C2=A0 =C2=A0 f3</div><div>=C2=A0 Stack partial redzone: =C2=A0 f4</div><=
div>=C2=A0 Stack after return: =C2=A0 =C2=A0 =C2=A0f5</div><div>=C2=A0 Stac=
k use after scope: =C2=A0 f8</div><div>=C2=A0 Global redzone: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0f9</div><div>=C2=A0 Global init order: =C2=A0 =C2=A0 =
=C2=A0 f6</div><div>=C2=A0 Poisoned by user: =C2=A0 =C2=A0 =C2=A0 =C2=A0f7<=
/div><div>=C2=A0 Container overflow: =C2=A0 =C2=A0 =C2=A0fc</div><div>=C2=
=A0 Array cookie: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ac</div><div>=C2=
=A0 Intra object redzone: =C2=A0 =C2=A0bb</div><div>=C2=A0 ASan internal: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fe</div><div>=C2=A0 Left alloca redzone:=
 =C2=A0 =C2=A0 ca</div><div>=C2=A0 Right alloca redzone: =C2=A0 =C2=A0cb</d=
iv><div>=3D=3D16010=3D=3DABORTING</div></div><div><br></div><div><br></div>=
<div><br></div><div>Marco</div><div><br></div><div><a href=3D"https://marco=
grass.github.io/">https://marcograss.github.io/</a><br></div></div>

--001a113dd4e290cb8e0536510c5f--

--001a113dd4e290cb920536510c61
Content-Type: application/octet-stream; name=xerces_uaf
Content-Disposition: attachment; filename=xerces_uaf
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ipz3fcn50

PCFET0NUWVBFIGUgU1lTVEVNICJmaWxlOi91c3IvYmluL2F3ayI+

--001a113dd4e290cb920536510c61--
