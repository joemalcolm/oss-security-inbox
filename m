X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4950" "Monday" "6" "November" "2017" "14:45:01" "+0100" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>" "115" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem" "^Cc:" nil nil "11" "2017110613:45:01" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem" (number mark "        andreyknvl@g Nov  6  115/4950  " thread-indent "\"[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18375 invoked by uid 550); 6 Nov 2017 13:45:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18351 invoked from network); 6 Nov 2017 13:45:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=xEavB0wFtZ0sx92LwLMJ/tHNO9r5bquTiWRgeHa0Nj0=;
        b=aE4rkKiDstaRj1Og+0v2thmDiSN7CRtvIs6l8gmOXuYR7WADNDgRXtWFX37X/Tpjq1
         hfL/ScKzrJ7NzH6LgpEMT052iL8WDaATTIaaBs3W5oxKI3BKCBCXwamKTYO+8kJTairm
         2KTM7URJju6AYtYrfDcGcMItlekcI7XCUePznUgDZToqs73ZdHA66O9ZwVoBnV+Yt3Jn
         q0tCWOOzbfFFyrcKZr7L5d7/of5vlX+Pa5oVT6ODzRuQjfnUqIS1THi8fPirqXngyMd1
         VQqh2KMrmUcfzyZrMJPT7IFBvbASdVPiZT40PmT/oC5WxRm13AdyVgrK1woMPxAOvNFS
         3foQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=xEavB0wFtZ0sx92LwLMJ/tHNO9r5bquTiWRgeHa0Nj0=;
        b=IVOo6N1H5MuESQfFOJsPtlNTbP/+tf2clBFGr9/Cjvo+BPvWOHnYK1hoZ4DinZkRVV
         Pu3vnlfUtbtG7oQm8hyJWWnkrwaTdC+vBNNgWTV/eWSjJiHvTo4R3ILYda41NRqGEA7J
         2loOiswKtXOuh/p+xFPT1q2xskU1unG9MwLuO/wRjnjosmw7Sybs5oKPnPGmy2Wjvpp0
         9MhxlckkdaRmllqcQom3jTod7GTwzRHmqInnLbkjBf9ozh5mwTVF9FaAAU0E4Euj9Mho
         G3X7pjMds/nnOxH7eXvyc0QDus15ujjw6CXiY/gfMwLXruzuHNcP9fs7tXwjkzugsiLw
         Hgaw==
X-Gm-Message-State: AMCzsaUTJSvSyK1c+6y9JYOTVEk3W9a8ed9ug4iUA6gkam/r5UFkHkFf
	GI2CI4tv2233E/Z0AuqxB6T5jgg/Rl09Ax7ZNmiHzH4o
X-Google-Smtp-Source: ABhQp+TUPUMsC+u2gJ6OlgO/694YEHDmeuxIfS5+cGtmfMiCyR95SoiG4185EfyW1PXGxVQjG5pU+ZkN2OyyBIhZ4yw=
X-Received: by 10.80.182.165 with SMTP id d34mr20069447ede.131.1509975902477;
 Mon, 06 Nov 2017 05:45:02 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Dmitry Vyukov <dvyukov@google.com>, Kostya Serebryany <kcc@google.com>
Date: Mon, 6 Nov 2017 14:45:01 +0100
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem
To: oss-security@lists.openwall.com

Hi!

Below are the details for 14 vulnerabilities found with syzkaller in
the Linux kernel USB subsystem. All of them can be triggered with a
crafted malicious USB device in case an attacker has physical access
to the machine.

There's quite a lot more similar bugs reported [1] but not yet fixed.

[1] https://github.com/google/syzkaller/blob/master/docs/linux/found_bugs_usb.md

### CVEs

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16525

The usb_serial_console_disconnect function in
drivers/usb/serial/console.c in the Linux kernel before 4.13.8 allows
local users to cause a denial of service (use-after-free and system
crash) or possibly have unspecified other impact via a crafted USB
device, related to disconnection and failed setup.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16526

drivers/uwb/uwbd.c in the Linux kernel before 4.13.6 allows local
users to cause a denial of service (general protection fault and
system crash) or possibly have unspecified other impact via a crafted
USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16527

sound/usb/mixer.c in the Linux kernel before 4.13.8 allows local users
to cause a denial of service (snd_usb_mixer_interrupt use-after-free
and system crash) or possibly have unspecified other impact via a
crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16528

sound/core/seq_device.c in the Linux kernel before 4.13.4 allows local
users to cause a denial of service (snd_rawmidi_dev_seq_free
use-after-free and system crash) or possibly have unspecified other
impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16529

The snd_usb_create_streams function in sound/usb/card.c in the Linux
kernel before 4.13.6 allows local users to cause a denial of service
(out-of-bounds read and system crash) or possibly have unspecified
other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16530

The uas driver in the Linux kernel before 4.13.6 allows local users to
cause a denial of service (out-of-bounds read and system crash) or
possibly have unspecified other impact via a crafted USB device,
related to drivers/usb/storage/uas-detect.h and
drivers/usb/storage/uas.c.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16531

drivers/usb/core/config.c in the Linux kernel before 4.13.6 allows
local users to cause a denial of service (out-of-bounds read and
system crash) or possibly have unspecified other impact via a crafted
USB device, related to the USB_DT_INTERFACE_ASSOCIATION descriptor.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16532

The get_endpoints function in drivers/usb/misc/usbtest.c in the Linux
kernel through 4.13.11 allows local users to cause a denial of service
(NULL pointer dereference and system crash) or possibly have
unspecified other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16533

The usbhid_parse function in drivers/hid/usbhid/hid-core.c in the
Linux kernel before 4.13.8 allows local users to cause a denial of
service (out-of-bounds read and system crash) or possibly have
unspecified other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16534

The cdc_parse_cdc_header function in drivers/usb/core/message.c in the
Linux kernel before 4.13.6 allows local users to cause a denial of
service (out-of-bounds read and system crash) or possibly have
unspecified other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16535

The usb_get_bos_descriptor function in drivers/usb/core/config.c in
the Linux kernel before 4.13.10 allows local users to cause a denial
of service (out-of-bounds read and system crash) or possibly have
unspecified other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16536

The cx231xx_usb_probe function in
drivers/media/usb/cx231xx/cx231xx-cards.c in the Linux kernel through
4.13.11 allows local users to cause a denial of service (NULL pointer
dereference and system crash) or possibly have unspecified other
impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16537

The imon_probe function in drivers/media/rc/imon.c in the Linux kernel
through 4.13.11 allows local users to cause a denial of service (NULL
pointer dereference and system crash) or possibly have unspecified
other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16538

drivers/media/usb/dvb-usb-v2/lmedm04.c in the Linux kernel through
4.13.11 allows local users to cause a denial of service (general
protection fault and system crash) or possibly have unspecified other
impact via a crafted USB device, related to a missing warm-start check
and incorrect attach timing (dm04_lme2510_frontend_attach versus
dm04_lme2510_tuner).
