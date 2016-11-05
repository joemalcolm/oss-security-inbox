X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5400" "Saturday" "5" "November" "2016" "10:04:30" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQKBq6cDXY_OAp6a+7dYWXtjE6=hSQps5g5aMxtiCTZHQ@mail.gmail.com>" "109" "[oss-security] CVE request: Null pointer derefence parsing xml file using libxml 2.9.4 (in recover mode)" nil nil nil "11" "2016110513:04:30" "[oss-security] CVE request: Null pointer derefence parsing xml file using libxml 2.9.4 (in recover mode)" (number mark "U       gustavo.grie Nov  5  109/5400  " thread-indent "\"[oss-security] CVE request: Null pointer derefence parsing xml file using libxml 2.9.4 (in recover mode)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17977 invoked by uid 550); 5 Nov 2016 13:04:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17953 invoked from network); 5 Nov 2016 13:04:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=4tT708bZkMpSwky35TUB0qiLbqDyQLxHjG6QxVSQdqY=;
        b=NcZGq4/d2GZJ8GQAUKEDNRfPesls2bTWL6VcihrtToRUpg1CRX9FWubnwkJPBZ+OZS
         E+NqQM7hk3AoFzYhdg0TtDGiwjFJ7JG5PfFMBP9lVxoJzsOyOJJVJLdLCWd/34QFgsm2
         3IZc2PW0ioirpRmAFZlssUL6zZ3lmpFslw3FJHZxGimBRqFL+GCn3Z6wBj3z96Hm5G8j
         +sogMlUfHwncNt7Wfrbi6EzI7Hqx7g/QzAemUL9Gh7QG4dXWppSdGq7eex1wn/IgPc45
         atFm38pRC7IgW48qRvpEZA3ZFzS08B5D2mvNUTjUdH4lQIZtX0H9xA3FjzrIVyqklUCv
         0hRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4tT708bZkMpSwky35TUB0qiLbqDyQLxHjG6QxVSQdqY=;
        b=efTFcd7zI2D3cpHXIGmsCnnLOeA+axeQelwk5BRRgfK5o8OM7YPn+2sThPmdjr4h7r
         A9oW/TYXIEHsE7t1LH/gWSGu6FcLSSW64CnRdj3yWDPKEWs0LfYaLhKi7szRnGG+xCgU
         PAb+cDl+nAQxYef+z0qQErKnQkdKkrFOUorRqLsI/rlbGdFVQ8z6ppBZbUC3RL6NJSHL
         oOSAbeWLmDqoaaJYj3uZEGZbkgkSl/8XtsXQlHcg96ml2zSYr+CYXbNLN1ftEn0WkTUy
         0b5N0z43T3HWxe6mM6imOdhBkWO8IPvY6Msv7KO72Z8DBN12Uh9mZbgb9AHV72QYl8tk
         djrA==
X-Gm-Message-State: ABUngvfmkAZ/NvAwC006NJKhIvFXpwJVYt3iDUAORXtLuSPGQ/+vq45U4Sv5ajTGOeLcqVQKaYZFOV3cvLStAw==
X-Received: by 10.36.91.67 with SMTP id g64mr1249687itb.86.1478351071171; Sat,
 05 Nov 2016 06:04:31 -0700 (PDT)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Sat, 5 Nov 2016 10:04:30 -0300
Message-ID: <CACn5sdQKBq6cDXY_OAp6a+7dYWXtjE6=hSQps5g5aMxtiCTZHQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary=001a1144a2ae737ade05408d6edc
Subject: [oss-security] CVE request: Null pointer derefence parsing xml file using libxml
 2.9.4 (in recover mode)

--001a1144a2ae737ade05408d6edc
Content-Type: multipart/alternative; boundary=001a1144a2ae737ad805408d6eda

--001a1144a2ae737ad805408d6eda
Content-Type: text/plain; charset=UTF-8

Hi,

We found a null pointer dereference when parsing a xml file using recover
mode. It was tested in libxml 2.9.4 (ArchLinux x86_64). To reproduce:

$ xmllint --recover crash-libxml2-recover.xml

==27646==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
(pc 0x0000004fbd88 bp 0x7ffc3345dff0 sp 0x7ffc3345dfd0 T0)
    #0 0x4fbd87 in xmlDumpElementContent
/home/g/Work/Code/libxml2-2.9.4/valid.c:1181
    #1 0x4fbcd5 in xmlDumpElementContent
/home/g/Work/Code/libxml2-2.9.4/valid.c:1177
    #2 0x4fe5ff in xmlDumpElementDecl
/home/g/Work/Code/libxml2-2.9.4/valid.c:1706
    #3 0x72e714 in xmlBufDumpElementDecl
/home/g/Work/Code/libxml2-2.9.4/xmlsave.c:501
    #4 0x73048f in xmlNodeDumpOutputInternal
/home/g/Work/Code/libxml2-2.9.4/xmlsave.c:939
    #5 0x72fc47 in xmlNodeListDumpOutput
/home/g/Work/Code/libxml2-2.9.4/xmlsave.c:825
    #6 0x72f6d5 in xmlDtdDumpOutput
/home/g/Work/Code/libxml2-2.9.4/xmlsave.c:749
    #7 0x73038f in xmlNodeDumpOutputInternal
/home/g/Work/Code/libxml2-2.9.4/xmlsave.c:931
    #8 0x732412 in xmlDocContentDumpOutput
/home/g/Work/Code/libxml2-2.9.4/xmlsave.c:1234
    #9 0x735883 in xmlSaveDoc /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:1936
    #10 0x40ba0f in parseAndPrintFile
/home/g/Work/Code/libxml2-2.9.4/xmllint.c:2712
    #11 0x411eb6 in main /home/g/Work/Code/libxml2-2.9.4/xmllint.c:3767
    #12 0x7f23dcd4c290 in __libc_start_main (/usr/lib/libc.so.6+0x20290)
    #13 0x4032b9 in _start
(/home/g/Work/Code/libxml2-2.9.4/xmllint+0x4032b9)


A reproducer is attached. It is interesting to note that the developers of
libxml2 strongly recommend not to use recover mode to parse untrusted
inputs. Please assign a CVE if suitable.

Regards,
Gustavo.

--001a1144a2ae737ad805408d6eda
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, <br><br>We found a null pointer dereference when parsi=
ng a xml file using recover mode. It was tested in libxml 2.9.4 (ArchLinux =
x86_64). To reproduce:<br><br>$ xmllint --recover crash-libxml2-recover.xml=
<br><br>=3D=3D27646=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0=
x000000000000 (pc 0x0000004fbd88 bp 0x7ffc3345dff0 sp 0x7ffc3345dfd0 T0)<br=
>=C2=A0 =C2=A0 #0 0x4fbd87 in xmlDumpElementContent /home/g/Work/Code/libxm=
l2-2.9.4/valid.c:1181<br>=C2=A0 =C2=A0 #1 0x4fbcd5 in xmlDumpElementContent=
 /home/g/Work/Code/libxml2-2.9.4/valid.c:1177<br>=C2=A0 =C2=A0 #2 0x4fe5ff =
in xmlDumpElementDecl /home/g/Work/Code/libxml2-2.9.4/valid.c:1706<br>=C2=
=A0 =C2=A0 #3 0x72e714 in xmlBufDumpElementDecl /home/g/Work/Code/libxml2-2=
.9.4/xmlsave.c:501<br>=C2=A0 =C2=A0 #4 0x73048f in xmlNodeDumpOutputInterna=
l /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:939<br>=C2=A0 =C2=A0 #5 0x72fc4=
7 in xmlNodeListDumpOutput /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:825<br=
>=C2=A0 =C2=A0 #6 0x72f6d5 in xmlDtdDumpOutput /home/g/Work/Code/libxml2-2.=
9.4/xmlsave.c:749<br>=C2=A0 =C2=A0 #7 0x73038f in xmlNodeDumpOutputInternal=
 /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:931<br>=C2=A0 =C2=A0 #8 0x732412=
 in xmlDocContentDumpOutput /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:1234<=
br>=C2=A0 =C2=A0 #9 0x735883 in xmlSaveDoc /home/g/Work/Code/libxml2-2.9.4/=
xmlsave.c:1936<br>=C2=A0 =C2=A0 #10 0x40ba0f in parseAndPrintFile /home/g/W=
ork/Code/libxml2-2.9.4/xmllint.c:2712<br>=C2=A0 =C2=A0 #11 0x411eb6 in main=
 /home/g/Work/Code/libxml2-2.9.4/xmllint.c:3767<br>=C2=A0 =C2=A0 #12 0x7f23=
dcd4c290 in __libc_start_main (/usr/lib/libc.so.6+0x20290)<br>=C2=A0 =C2=A0=
 #13 0x4032b9 in _start (/home/g/Work/Code/libxml2-2.9.4/xmllint+0x4032b9)<=
br><br><br>A reproducer is attached. It is interesting to note that the dev=
elopers of libxml2 strongly recommend not to use recover mode to parse untr=
usted inputs. Please assign a CVE if suitable.<br><br>Regards,<br>Gustavo.<=
/div>

--001a1144a2ae737ad805408d6eda--

--001a1144a2ae737ade05408d6edc
Content-Type: text/xml; charset=Big5; name="crash-libxml2-recover.xml"
Content-Disposition: attachment; filename="crash-libxml2-recover.xml"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iv56vj0s0

PD94bWwgdmVyc2lvbj0iMS4wIj8+DQo8IURPQ1RZUEUgcm9vdCBbDQogIDwh
RUxFTUVOVCByb290IChhLGIpPg0KICA8IUVMRU1FTlQgYSBFTVBUWT4NCiAg
PCFFTEVNRU5UIGIgKCNQQ0RBVEF8YykqID4NCiAgPCFFTEVNRU5UIGMgQU5Z
Pg0KICA8IUVMRU1FTlQgZCBBTlk+DQogIDwhRUxFTUVOVCBlIEFOWT4NCiAg
PCFFTEVNRU5UIGYgQU5ZPg0KICA8IS0tKiB0ZXN0IGFsbCBwYmxlIGNoaWxk
cmVuLGNwLGNob2ljZSxzZXEgcGF0dGVybnMgaW4gUDQ3LFA0OCxQNDksUC0t
Pg0KICA8IUVMRU1FTlQgY2hpbGQwIChhKT4NCiAgPCFFTEVNRU5UIGNoaWxk
MSAoYXxifGMpPg0KICA8IUVMRU1FTlQgY2hpbGQyIChhICxiLGI/LGEqLGMs
YyxhLGEsYissYyApID4NCiAgPCFFTEVNRU5UIGNoaWxkMyAoYSt8Yik/ID4N
CiAgPCFFTEVNRU5UIGNoaWxkNCAoYSwgKGJ8Y3ArLCAoYXxkKT8sIChlfGYp
KiApPz4NCiAgPCFFTEVNRU5UIGNoaWxkNSAoIChhLGIpIHwgYz8gfCAoKGR8
ZSksYixjKSApKiA+DQogIDwhRUxFTUVOVCBjaGlsZDVfMSAoIChhpWIpKiB8
IChjLGIpPyB8IChkLGEpKyB8ICgoZXxmKSxiLGMpICkqID4NCiAgPCFFTEVN
RU5UIGNoaWxkNiAoYSxiLGMpKj4NCiAgPCFFTEVNRU5UIGNoaWxkNyAoKGEs
Yil8Yyp8KChkfGUpLGIsYykgKSsgPg0KICA8IUVMRU1FTlQgY2hpbGQ4ICgg
YSwgKGJiKSwgYikrPiAgDQpdPg0KPHJvb3Q+PGEvPjxiPg0KICAgPGM+PC9j
ID4NCiAgIGNvbnRlbnQgb2YgYiBlbGVtZW50DQo8L2I+PC9yb290Pg0KPCEt
LSogdGVzdDogdGVzdHMgUDQ3LFA0OCxQNDksUDUwKi0tPg0KDQo=

--001a1144a2ae737ade05408d6edc--
