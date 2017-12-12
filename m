X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9019" "Tuesday" "12" "December" "2017" "17:09:09" "+0100" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZfgSjs8gReh5a5yUxU-_2A9KW1gxoZh85neM2LHb0rqeg@mail.gmail.com>" "201" "[oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem" nil nil nil "12" "2017121216:09:09" "[oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem" (number mark "U       andreyknvl@g Dec 12  201/9019  " thread-indent "\"[oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem\"\n") "<CA+fCnZfoe8L304FfjLmXmT-yGt-ydEYuwspN+LdUay_BFW-o9A@mail.gmail.com>" ("<CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>" "<CA+fCnZfoe8L304FfjLmXmT-yGt-ydEYuwspN+LdUay_BFW-o9A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11699 invoked by uid 550); 12 Dec 2017 16:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11681 invoked from network); 12 Dec 2017 16:09:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8gMJLE2KpUUhkOrhV0r1nVJQbq3UpYE5HMJahdzIvnY=;
        b=G07oHB5SFsFuMEs6JOiQque2dvs7WO+hSWXbpvbGZ4cc06VJKQM8Jer5+s+JalOFxR
         ld3rRvd2Ii0UCNosZ0sRznrAlgYvUZTs9C7rVfV/W8n3V278mqmN6Vf4hRFS/AuF3Doz
         8ZtSh+cY4QIaaO8lsq5ONhYn43q2U3Rda+KJT+Y7kjt0ZGyXe+GJSktlrOw46egiDE8z
         1HJ2TUAE0OlcZ1pPaEjLafscCVp80ZViO6lz3L6toMKCuh6SxbDzUE6L2N3npeGzkmFr
         +GiMTjmDBCKKAY7BOG1yMrW00kdpZ4kM5vVM/sNvFERn+cbrgRrkmGDW0kvwTqIaphKl
         8VGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8gMJLE2KpUUhkOrhV0r1nVJQbq3UpYE5HMJahdzIvnY=;
        b=dQV0Esa52CgGBwsBkKSrhl0mpapotNwl2cGEd05sn2q84Pu2YaB2rHCnH2Kh95hiCm
         pBXAz4L3t8rglMacZyYVij72/GZ0tTWnd87siKvFrv5j3aY0D9TAR5XzhZzquzi4BzZm
         r/jhI4u0WXeVo8scUxOsKLlrg5urafddsyZC0PkFmvRLD6auF+RJpTMZca3aRNzsp9nB
         fSIyG+apLmqoQ+WvUpOYNx/cLQVwm+wXjpLcZjBH+ny65H4WgCBW2Jpf5JdpKvyUqXUS
         pOvHdcHZ2FcubibNI0r+wmW6b9JR+nvkKcxpL0IjLa+eO3hbRHuQjcxgFYQ6QWpvDMLk
         VOUg==
X-Gm-Message-State: AKGB3mJLPb1xq4oJZ5+rK8jpWOHLO7uqU8YQXynxlZCr93QKvfHq2pnP
	bvxWslZmJ0z7XXi8f+IWsQoBFKWaLg1iyZjR2RcgBT8b
X-Google-Smtp-Source: ACJfBoucTD9k0daaAka0b1TOv/jkU+ukVRsqsWpiJcKNjuKeVUCa28kElDdyJgf/V4SVLzCReMrxLUG4Ei43zLU+0ks=
X-Received: by 10.80.204.72 with SMTP id n8mr3487317edi.64.1513094950375; Tue,
 12 Dec 2017 08:09:10 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CA+fCnZfoe8L304FfjLmXmT-yGt-ydEYuwspN+LdUay_BFW-o9A@mail.gmail.com>
References: <CA+fCnZfP83sn2biq-=5x23Kfgzv_0YFKKDNpntrH89TwLRCEjw@mail.gmail.com>
 <CA+fCnZfoe8L304FfjLmXmT-yGt-ydEYuwspN+LdUay_BFW-o9A@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Tue, 12 Dec 2017 17:09:09 +0100
Message-ID: <CA+fCnZfgSjs8gReh5a5yUxU-_2A9KW1gxoZh85neM2LHb0rqeg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Dmitry Vyukov <dvyukov@google.com>, Kostya Serebryany <kcc@google.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux kernel: multiple vulnerabilities in the USB subsystem

On Wed, Nov 8, 2017 at 11:38 AM, Andrey Konovalov <andreyknvl@gmail.com> wrote:
> On Mon, Nov 6, 2017 at 2:45 PM, Andrey Konovalov <andreyknvl@gmail.com> wrote:
>> Hi!
>>
>> Below are the details for 14 vulnerabilities found with syzkaller in
>> the Linux kernel USB subsystem. All of them can be triggered with a
>> crafted malicious USB device in case an attacker has physical access
>> to the machine.
>>
>> There's quite a lot more similar bugs reported [1] but not yet fixed.
>>
>> [1] https://github.com/google/syzkaller/blob/master/docs/linux/found_bugs_usb.md
>>
>> ### CVEs
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16525
>>
>> The usb_serial_console_disconnect function in
>> drivers/usb/serial/console.c in the Linux kernel before 4.13.8 allows
>> local users to cause a denial of service (use-after-free and system
>> crash) or possibly have unspecified other impact via a crafted USB
>> device, related to disconnection and failed setup.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16526
>>
>> drivers/uwb/uwbd.c in the Linux kernel before 4.13.6 allows local
>> users to cause a denial of service (general protection fault and
>> system crash) or possibly have unspecified other impact via a crafted
>> USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16527
>>
>> sound/usb/mixer.c in the Linux kernel before 4.13.8 allows local users
>> to cause a denial of service (snd_usb_mixer_interrupt use-after-free
>> and system crash) or possibly have unspecified other impact via a
>> crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16528
>>
>> sound/core/seq_device.c in the Linux kernel before 4.13.4 allows local
>> users to cause a denial of service (snd_rawmidi_dev_seq_free
>> use-after-free and system crash) or possibly have unspecified other
>> impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16529
>>
>> The snd_usb_create_streams function in sound/usb/card.c in the Linux
>> kernel before 4.13.6 allows local users to cause a denial of service
>> (out-of-bounds read and system crash) or possibly have unspecified
>> other impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16530
>>
>> The uas driver in the Linux kernel before 4.13.6 allows local users to
>> cause a denial of service (out-of-bounds read and system crash) or
>> possibly have unspecified other impact via a crafted USB device,
>> related to drivers/usb/storage/uas-detect.h and
>> drivers/usb/storage/uas.c.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16531
>>
>> drivers/usb/core/config.c in the Linux kernel before 4.13.6 allows
>> local users to cause a denial of service (out-of-bounds read and
>> system crash) or possibly have unspecified other impact via a crafted
>> USB device, related to the USB_DT_INTERFACE_ASSOCIATION descriptor.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16532
>>
>> The get_endpoints function in drivers/usb/misc/usbtest.c in the Linux
>> kernel through 4.13.11 allows local users to cause a denial of service
>> (NULL pointer dereference and system crash) or possibly have
>> unspecified other impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16533
>>
>> The usbhid_parse function in drivers/hid/usbhid/hid-core.c in the
>> Linux kernel before 4.13.8 allows local users to cause a denial of
>> service (out-of-bounds read and system crash) or possibly have
>> unspecified other impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16534
>>
>> The cdc_parse_cdc_header function in drivers/usb/core/message.c in the
>> Linux kernel before 4.13.6 allows local users to cause a denial of
>> service (out-of-bounds read and system crash) or possibly have
>> unspecified other impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16535
>>
>> The usb_get_bos_descriptor function in drivers/usb/core/config.c in
>> the Linux kernel before 4.13.10 allows local users to cause a denial
>> of service (out-of-bounds read and system crash) or possibly have
>> unspecified other impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16536
>>
>> The cx231xx_usb_probe function in
>> drivers/media/usb/cx231xx/cx231xx-cards.c in the Linux kernel through
>> 4.13.11 allows local users to cause a denial of service (NULL pointer
>> dereference and system crash) or possibly have unspecified other
>> impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16537
>>
>> The imon_probe function in drivers/media/rc/imon.c in the Linux kernel
>> through 4.13.11 allows local users to cause a denial of service (NULL
>> pointer dereference and system crash) or possibly have unspecified
>> other impact via a crafted USB device.
>>
>> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16538
>>
>> drivers/media/usb/dvb-usb-v2/lmedm04.c in the Linux kernel through
>> 4.13.11 allows local users to cause a denial of service (general
>> protection fault and system crash) or possibly have unspecified other
>> impact via a crafted USB device, related to a missing warm-start check
>> and incorrect attach timing (dm04_lme2510_frontend_attach versus
>> dm04_lme2510_tuner).
>
> Here's 8 more:
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16643
>
> The parse_hid_report_descriptor function in
> drivers/input/tablet/gtco.c in the Linux kernel before 4.13.11 allows
> local users to cause a denial of service (out-of-bounds read and
> system crash) or possibly have unspecified other impact via a crafted
> USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16644
>
> The hdpvr_probe function in drivers/media/usb/hdpvr/hdpvr-core.c in
> the Linux kernel through 4.13.11 allows local users to cause a denial
> of service (improper error handling and system crash) or possibly have
> unspecified other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16645
>
> The ims_pcu_get_cdc_union_desc function in
> drivers/input/misc/ims-pcu.c in the Linux kernel through 4.13.11
> allows local users to cause a denial of service
> (ims_pcu_parse_cdc_data out-of-bounds read and system crash) or
> possibly have unspecified other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16646
>
> drivers/media/usb/dvb-usb/dib0700_devices.c in the Linux kernel
> through 4.13.11 allows local users to cause a denial of service (BUG
> and system crash) or possibly have unspecified other impact via a
> crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16647
>
> drivers/net/usb/asix_devices.c in the Linux kernel through 4.13.11
> allows local users to cause a denial of service (NULL pointer
> dereference and system crash) or possibly have unspecified other
> impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16648
>
> The dvb_frontend_free function in
> drivers/media/dvb-core/dvb_frontend.c in the Linux kernel through
> 4.13.11 allows local users to cause a denial of service
> (use-after-free and system crash) or possibly have unspecified other
> impact via a crafted USB device. NOTE: the function was later renamed
> __dvb_frontend_free.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16649
>
> The usbnet_generic_cdc_bind function in drivers/net/usb/cdc_ether.c in
> the Linux kernel through 4.13.11 allows local users to cause a denial
> of service (divide-by-zero error and system crash) or possibly have
> unspecified other impact via a crafted USB device.
>
> * http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-16650
>
> The qmi_wwan_bind function in drivers/net/usb/qmi_wwan.c in the Linux
> kernel through 4.13.11 allows local users to cause a denial of service
> (divide-by-zero error and system crash) or possibly have unspecified
> other impact via a crafted USB device.

Another one.

This one looks more interesting. It's a serious memory corruption, and
since it's in the USB core subsystem, it can't be mitigated by turning
off particular USB drivers.

A malicious USB device can potentially exploit this by controlling the
next heap object after the one where usb_host_config is allocated and
gaining an arbitrary decrement primitive, since kref_put() will be
called with an attacker controlled address.

### CVE

* http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-17558

The usb_destroy_configuration function in drivers/usb/core/config.c in
the USB core subsystem in the Linux kernel through 4.14.5 does not
consider the maximum number of configurations and interfaces before
attempting to release resources, which allows local users to cause a
denial of service (out-of-bounds access) or possibly have unspecified
other impact.
