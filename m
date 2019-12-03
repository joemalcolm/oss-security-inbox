X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4683" "Tuesday" "3" "December" "2019" "18:00:22" "+0100" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfrU-AtNGCUGou4_8Xms3yDmytut+AqED7Jhygtvq17eQ@mail.gmail.com>" "118" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x3" "^Date:" nil nil "12" "2019120317:00:22" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x3" (number mark "U       andreyknvl@g Dec  3  118/4683  " thread-indent "\"[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x3\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11803 invoked by uid 550); 3 Dec 2019 17:00:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11783 invoked from network); 3 Dec 2019 17:00:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=86xjacJwbgmHpkodW0a/2X2AQRmJhWkUO4rNW3N61s4=;
        b=j0/zLAW60D9wJ6PcOiGyaMTbH0f8OsEishzglO9gmYV0AWnthUNTMAuhQYv0+B9MBV
         7/UJ/Pq0DXVNITnbPdTU4dlmIygv3z2NdNg6/I3seYJzvU/4uhAVO6qeR0TiApL5duX5
         udC1zZLJ0m28YLlHF3Af5bJhvzN3cAhPF83HuVu7RDneXmDg2KLGm/HweELd4PfG1wT+
         b72oGdmxlX+0ctNOsceueP28eyVmIg+N7hdAuPpdw/bFRPINp1Pg6bvZqAi5Hei0IS68
         DEfKN5yB8xCkYb8S0bjqg01+UdctXhp9/DFDsSY7PlWBLA/49EGyqxa18gR6YodKuAxK
         T9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=86xjacJwbgmHpkodW0a/2X2AQRmJhWkUO4rNW3N61s4=;
        b=IFzguVos+mJZ7yHKtstEDEMyublLL0W7KerrReREC7pifWdoymYaSR8jf/9VHkjG/M
         CqJ2DIauRoFFHaigloPewLNfjWdvCmg93inVTTcVtkhMoSbawq1/cmBIaxxjHk58NnE1
         IBAhao/KnMVy0LsWkv4aERHZXY0iU2jCW04u5QlXNV1iuZ1/uYeCIobdsnigwUVD00aA
         LXO+mARJ1tt7q5xbBrBJG/3G5PbFPmes2Bl8TIqWbC8fwanXO4Un8oPAKSTiHVFfGHZe
         dGsycjiXSQ5sXeALoBPDL0UwQ08UTGBGFlf4O8SrbVpqBf9hdaey2sunMHm/L21b3bFC
         WMUg==
X-Gm-Message-State: APjAAAXtTkgnwi+lRrXWeqXDHTUyOPDUxh7vJ6IOihQQCP57AEQZ5pte
	aMMnRK3tEjBnS2VyQSlbY0NYytJKTZXp9X0TnFoAkLWO
X-Google-Smtp-Source: APXvYqwfSBrbZIvaiieN4hmOPmOZmiqA0DYvmlFmEcvTzVJmbxFvphydd8VtME3njDewCDM2zW9YAkmCobam5EdYOAQ=
X-Received: by 2002:a19:7401:: with SMTP id v1mr3210863lfe.129.1575392433758;
 Tue, 03 Dec 2019 09:00:33 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CA+fCnZfrU-AtNGCUGou4_8Xms3yDmytut+AqED7Jhygtvq17eQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 3 Dec 2019 18:00:22 +0100
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x3
To: oss-security@lists.openwall.com

Hi!

More CVEs for bugs in Linux kernel USB drivers that can be triggered
by an external malicious USB device. Found with syzkaller [1]. This
time no obvious DoSs (see the discussions here [2, 3]): mostly UAFs,
some info-leaks. All of these bugs have been fixed upstream (but many
other syzbot USB bugs are still not fixed [4]).

[1] https://github.com/google/syzkaller/blob/master/docs/linux/external_fuzzing_usb.md

[2] https://www.openwall.com/lists/oss-security/2019/08/20/2

[3] https://www.openwall.com/lists/oss-security/2019/10/25/15

[4] https://syzkaller.appspot.com/upstream?manager=ci2-upstream-usb

### CVEs

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19523

In the Linux kernel before 5.3.7, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/usb/misc/adutux.c driver, aka CID-44efc269db79.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19524

In the Linux kernel before 5.3.12, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/input/ff-memless.c driver, aka CID-fa3a5a1880c9.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19525

In the Linux kernel before 5.3.6, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/net/ieee802154/atusb.c driver, aka CID-7fd25e6fc035.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19526

In the Linux kernel before 5.3.9, there is a use-after-free bug that
can be caused by a malicious USB device in the drivers/nfc/pn533/usb.c
driver, aka CID-6af3aa57a098.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19527

In the Linux kernel before 5.2.10, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/hid/usbhid/hiddev.c driver, aka CID-9c09b214f30e.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19528

In the Linux kernel before 5.3.7, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/usb/misc/iowarrior.c driver, aka CID-edc4746f253d.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19529

In the Linux kernel before 5.3.11, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/net/can/usb/mcba_usb.c driver, aka CID-4d6636498c41.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19530

In the Linux kernel before 5.2.10, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/usb/class/cdc-acm.c driver, aka CID-c52873e5a1ef.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19531

In the Linux kernel before 5.2.9, there is a use-after-free bug that
can be caused by a malicious USB device in the
drivers/usb/misc/yurex.c driver, aka CID-fc05481b2fca.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19532

In the Linux kernel before 5.3.9, there are multiple out-of-bounds
write bugs that can be caused by a malicious USB device in the Linux
kernel HID drivers, aka CID-d9d4b1e46d95. This affects
drivers/hid/hid-axff.c, drivers/hid/hid-dr.c, drivers/hid/hid-emsff.c,
drivers/hid/hid-gaff.c, drivers/hid/hid-holtekff.c,
drivers/hid/hid-lg2ff.c, drivers/hid/hid-lg3ff.c,
drivers/hid/hid-lg4ff.c, drivers/hid/hid-lgff.c,
drivers/hid/hid-logitech-hidpp.c, drivers/hid/hid-microsoft.c,
drivers/hid/hid-sony.c, drivers/hid/hid-tmff.c, and
drivers/hid/hid-zpff.c.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19533

In the Linux kernel before 5.3.4, there is an info-leak bug that can
be caused by a malicious USB device in the
drivers/media/usb/ttusb-dec/ttusb_dec.c driver, aka CID-a10feaf8c464.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19534

In the Linux kernel before 5.3.11, there is an info-leak bug that can
be caused by a malicious USB device in the
drivers/net/can/usb/peak_usb/pcan_usb_core.c driver, aka
CID-f7a1337f0d29.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19535

In the Linux kernel before 5.2.9, there is an info-leak bug that can
be caused by a malicious USB device in the
drivers/net/can/usb/peak_usb/pcan_usb_fd.c driver, aka
CID-30a8beeb3042.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19536

In the Linux kernel before 5.2.9, there is an info-leak bug that can
be caused by a malicious USB device in the
drivers/net/can/usb/peak_usb/pcan_usb_pro.c driver, aka
CID-ead16e53c2f0.

* https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19537

In the Linux kernel before 5.2.10, there is a race condition bug that
can be caused by a malicious USB device in the USB character device
driver layer, aka CID-303911cfc5b9. This affects
drivers/usb/core/file.c.
