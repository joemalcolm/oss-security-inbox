X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7840" "Wednesday" "8" "November" "2017" "11:38:39" "+0100" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfoe8L304FfjLmXmT-yGt-ydEYuwspN+LdUay_BFW-o9A@mail.gmail.com>" "178" "[oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem" "^Cc:" nil nil "11" "2017110810:38:39" "[oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem" (number mark "U       andreyknvl@g Nov  8  178/7840  " thread-indent "\"[oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem\"\n") "<CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>" ("<CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21734 invoked by uid 550); 8 Nov 2017 10:38:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21706 invoked from network); 8 Nov 2017 10:38:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=9bimyh0Eo9+jTo3aCXqylc39MTawDPV+a1J0KtfiC20=;
        b=F+mPXw7pQbpOxEkkJbc2UJpqkMXCw4ZTLDmKKCYyGmxiFBe4gwAIS+YRB1glDwnbNI
         9abuqee0sWru54zEaixYzUDAQX0m0c84EkBCRKZmrNCEU0HXe7kM0WpFnCNVEWci+93Y
         ny4kSkTp6sXjHS/3z3ya54mhLbsKmV8KGgwS7wpAsDC9/Tg1QmuT/ZL2HnmALCPMvcH9
         MfSeHIDVqFR+cby4OOA084NniTfUEmbGyBP0mhdAUhFJVzxOPcsW+6YdmvxmKMPyhLH6
         KQQLBxO58UBfTHP5inNJyKjiU40NhGQrY964IHOVqCIgs0mSHadIiKz1TAU5YwEMYzih
         3KEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=9bimyh0Eo9+jTo3aCXqylc39MTawDPV+a1J0KtfiC20=;
        b=ZoB13vy74c+jS/eMbn+5GVyAX7FxB6GPqmBLnkOeuPfWbK9R9ZI2JQtdLCKkYx4WLw
         E25Q1qriBGmaOO/yF89ICt9swreJ7xl9WyJL0Fl8SzCPsNYGKu+L2qU1kAzAcYbvDcxz
         XObMW8YxUVgH7JGWd4DFUVItqX8KcwnNn4oZPcb96untFJ/YyEv4cJ0yn1lnSJQPhVHj
         e1V2ggTVvKCIsRqj4ZK5UZ8Ctz09jc28axoQd8bEMzKaxX9KJNwC8YyVlX5SfhOmdaKL
         Xk7IaXxZBpIpobvc3z7rG1xssTB4uN+KgvjpJHyvPAagMzbo2mLDr6yBCi/u08DhXxNq
         0R1Q==
X-Gm-Message-State: AJaThX74QZLuUBbzAPKQrwKffrKJ2jB2kbFdEvL9SwWNeoMza4YPJ5gF
	8vNn3KXuRX9+Q2IPcidxzzxTmfd5fwVahfcSPsMBtCLO
X-Google-Smtp-Source: ABhQp+QZvR/GROJOoElUDJAkuTAUIQOVb/cytCWDoY34acfqIxqWhRhET+59xT8bCb69dlcCitCgVfiKNneI5kiL1B8=
X-Received: by 10.80.182.165 with SMTP id d34mr35854ede.131.1510137520292;
 Wed, 08 Nov 2017 02:38:40 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>
References: <CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>
Message-ID: <CA+fCnZfoe8L304FfjLmXmT-yGt-ydEYuwspN+LdUay_BFW-o9A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Dmitry Vyukov <dvyukov@google.com>, Kostya Serebryany <kcc@google.com>
Date: Wed, 8 Nov 2017 11:38:39 +0100
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem
To: oss-security@lists.openwall.com

On Mon, Nov 6, 2017 at 2:45 PM, Andrey Konovalov <andreyknvl@gmail.com> wrote:
> Hi!
>
> Below are the details for 14 vulnerabilities found with syzkaller in
> the Linux kernel USB subsystem. All of them can be triggered with a
> crafted malicious USB device in case an attacker has physical access
> to the machine.
>
> There's quite a lot more similar bugs reported [1] but not yet fixed.
>
> [1] https://github.com/google/syzkaller/blob/master/docs/linux/found_bugs_usb.md
>
> ### CVEs
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16525
>
> The usb_serial_console_disconnect function in
> drivers/usb/serial/console.c in the Linux kernel before 4.13.8 allows
> local users to cause a denial of service (use-after-free and system
> crash) or possibly have unspecified other impact via a crafted USB
> device, related to disconnection and failed setup.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16526
>
> drivers/uwb/uwbd.c in the Linux kernel before 4.13.6 allows local
> users to cause a denial of service (general protection fault and
> system crash) or possibly have unspecified other impact via a crafted
> USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16527
>
> sound/usb/mixer.c in the Linux kernel before 4.13.8 allows local users
> to cause a denial of service (snd_usb_mixer_interrupt use-after-free
> and system crash) or possibly have unspecified other impact via a
> crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16528
>
> sound/core/seq_device.c in the Linux kernel before 4.13.4 allows local
> users to cause a denial of service (snd_rawmidi_dev_seq_free
> use-after-free and system crash) or possibly have unspecified other
> impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16529
>
> The snd_usb_create_streams function in sound/usb/card.c in the Linux
> kernel before 4.13.6 allows local users to cause a denial of service
> (out-of-bounds read and system crash) or possibly have unspecified
> other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16530
>
> The uas driver in the Linux kernel before 4.13.6 allows local users to
> cause a denial of service (out-of-bounds read and system crash) or
> possibly have unspecified other impact via a crafted USB device,
> related to drivers/usb/storage/uas-detect.h and
> drivers/usb/storage/uas.c.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16531
>
> drivers/usb/core/config.c in the Linux kernel before 4.13.6 allows
> local users to cause a denial of service (out-of-bounds read and
> system crash) or possibly have unspecified other impact via a crafted
> USB device, related to the USB_DT_INTERFACE_ASSOCIATION descriptor.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16532
>
> The get_endpoints function in drivers/usb/misc/usbtest.c in the Linux
> kernel through 4.13.11 allows local users to cause a denial of service
> (NULL pointer dereference and system crash) or possibly have
> unspecified other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16533
>
> The usbhid_parse function in drivers/hid/usbhid/hid-core.c in the
> Linux kernel before 4.13.8 allows local users to cause a denial of
> service (out-of-bounds read and system crash) or possibly have
> unspecified other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16534
>
> The cdc_parse_cdc_header function in drivers/usb/core/message.c in the
> Linux kernel before 4.13.6 allows local users to cause a denial of
> service (out-of-bounds read and system crash) or possibly have
> unspecified other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16535
>
> The usb_get_bos_descriptor function in drivers/usb/core/config.c in
> the Linux kernel before 4.13.10 allows local users to cause a denial
> of service (out-of-bounds read and system crash) or possibly have
> unspecified other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16536
>
> The cx231xx_usb_probe function in
> drivers/media/usb/cx231xx/cx231xx-cards.c in the Linux kernel through
> 4.13.11 allows local users to cause a denial of service (NULL pointer
> dereference and system crash) or possibly have unspecified other
> impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16537
>
> The imon_probe function in drivers/media/rc/imon.c in the Linux kernel
> through 4.13.11 allows local users to cause a denial of service (NULL
> pointer dereference and system crash) or possibly have unspecified
> other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16538
>
> drivers/media/usb/dvb-usb-v2/lmedm04.c in the Linux kernel through
> 4.13.11 allows local users to cause a denial of service (general
> protection fault and system crash) or possibly have unspecified other
> impact via a crafted USB device, related to a missing warm-start check
> and incorrect attach timing (dm04_lme2510_frontend_attach versus
> dm04_lme2510_tuner).

Here's 8 more:

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16643

The parse_hid_report_descriptor function in
drivers/input/tablet/gtco.c in the Linux kernel before 4.13.11 allows
local users to cause a denial of service (out-of-bounds read and
system crash) or possibly have unspecified other impact via a crafted
USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16644

The hdpvr_probe function in drivers/media/usb/hdpvr/hdpvr-core.c in
the Linux kernel through 4.13.11 allows local users to cause a denial
of service (improper error handling and system crash) or possibly have
unspecified other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16645

The ims_pcu_get_cdc_union_desc function in
drivers/input/misc/ims-pcu.c in the Linux kernel through 4.13.11
allows local users to cause a denial of service
(ims_pcu_parse_cdc_data out-of-bounds read and system crash) or
possibly have unspecified other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16646

drivers/media/usb/dvb-usb/dib0700_devices.c in the Linux kernel
through 4.13.11 allows local users to cause a denial of service (BUG
and system crash) or possibly have unspecified other impact via a
crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16647

drivers/net/usb/asix_devices.c in the Linux kernel through 4.13.11
allows local users to cause a denial of service (NULL pointer
dereference and system crash) or possibly have unspecified other
impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16648

The dvb_frontend_free function in
drivers/media/dvb-core/dvb_frontend.c in the Linux kernel through
4.13.11 allows local users to cause a denial of service
(use-after-free and system crash) or possibly have unspecified other
impact via a crafted USB device. NOTE: the function was later renamed
__dvb_frontend_free.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16649

The usbnet_generic_cdc_bind function in drivers/net/usb/cdc_ether.c in
the Linux kernel through 4.13.11 allows local users to cause a denial
of service (divide-by-zero error and system crash) or possibly have
unspecified other impact via a crafted USB device.

* http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16650

The qmi_wwan_bind function in drivers/net/usb/qmi_wwan.c in the Linux
kernel through 4.13.11 allows local users to cause a denial of service
(divide-by-zero error and system crash) or possibly have unspecified
other impact via a crafted USB device.
