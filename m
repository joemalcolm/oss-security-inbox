X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1503" "Thursday" "18" "April" "2019" "21:34:15" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiTuu3diVge+pC=fdG3W+m444FmkeswHOoOS93twyqbbUg@mail.gmail.com>" "57" "[oss-security] Linux kernel < 4.14.111 drivers/nfc/nfcmrvl/usb.c kernel address dumps to user space" nil nil nil "4" "2019041813:34:15" "[oss-security] Linux kernel < 4.14.111 drivers/nfc/nfcmrvl/usb.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   57/1503  " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/nfc/nfcmrvl/usb.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/nfc/nfcmrvl/usb.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13757 invoked by uid 550); 18 Apr 2019 16:37:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24224 invoked from network); 18 Apr 2019 13:34:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=kvTt9UiqNln5CKep4RU5k1sAKICOGghb1RvLhfCxotw=;
        b=slWaWvSZ59r79po7tYgQjX6+XfZQ4ufMgB3XNHlPcLTLGeXrFKWmX20f0BIpHd9XNL
         QsbPeop5y8oNG0wfbPwuraR+nql76PskTK7Tt2lslFT5cOIM3qc9rEqD+Rso76M93R+i
         rUupuIShI1lMvOqur4aFVxi/sMIgdg8O2IX/pWKyoh1jsuBcsnrsombK3ltOnthzs2sl
         y2/X893GjH/yE6KIX8PHQ0ivs9s78oyXmkHFwgaqUi05BwZ37d7V3qqiQLMLs8f4+WhO
         Hm+JmkOYK+6x0wAbroZROP4tvi1EGU1VPhPbMJ2B0Ws+fHlUSXELVf5bdq0k+7G9bSqm
         eFpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kvTt9UiqNln5CKep4RU5k1sAKICOGghb1RvLhfCxotw=;
        b=IkziQktUY66kBK9FNK4xax69Q8VMbH6f1fGHqg7+hjfqP7xGNyLtRvU+BNCdj1ET7w
         mh7L4iZlpw175VSNmu1croRArVyb28q/Wwglafl9+yGCieUwS88TOPjjkOkYau//dSLH
         c6ULcm5QKlrZ2ZUUbq0ZoDC6K9sRf4N/YIKlXpbhNPdXQC/vs3frLL0xoRrOHC9rt9XH
         zZvYRMawPx/uBG2IvLhMM32OYZPEfjnSwqus4uHPZddC7UeIipA0GKQrmMhjYKygaJLK
         E6+TSaSMiwf+XBcD8OvVBFUXjxRZwegDWgunZE10lGqjQmr+L0oZUJy8twa/FwyaKcTH
         b24g==
X-Gm-Message-State: APjAAAVRer4iOpzkMJzRFqx33/rTCzgYhLMxgc0CfjyIC0bVrEDFBrh0
	mv+R6NJ9EbCBtrr6dzIQtAKULXlcu0IMUiQYI/hPzTlyTng=
X-Google-Smtp-Source: APXvYqzulQbYFwddyEEryTGfWBcXRLIT/2ddfpo8D6gjgZFBFBsiaeBZax/8LCwBB3bCmGlgEBSQ51csTat4VBonp8o=
X-Received: by 2002:a25:d15:: with SMTP id 21mr71194307ybn.262.1555594465782;
 Thu, 18 Apr 2019 06:34:25 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:34:15 +0800
Message-ID: <CABXRUiTuu3diVge+pC=fdG3W+m444FmkeswHOoOS93twyqbbUg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/nfc/nfcmrvl/usb.c kernel address
 dumps to user space

In drivers/nfc/nfcmrvl/usb.c:164,
nfcmrvl_tx_complete will dump the address of urb to dmesg,
which allows local user to read kernel address via dmesg.

static void nfcmrvl_tx_complete(struct urb *urb)
{
    ...
    nfc_info(priv->dev, "urb %p status %d count %d\n",
         urb, urb->status, urb->actual_length);
    ...
}

In drivers/nfc/nfcmrvl/usb.c:308,
nfcmrvl_probe will dump the address of inf to dmesg,
which allows local user to read kernel address via dmesg.

static int nfcmrvl_probe(struct usb_interface *intf,
             const struct usb_device_id *id)
{
    ...
    nfc_info(&udev->dev, "intf %p id %p\n", intf, id);
    ...
}

In drivers/nfc/nfcmrvl/usb.c:368,
nfcmrvl_disconnect will dump the address of inf to dmesg,
which allows local user to read kernel address via dmesg.

static void nfcmrvl_disconnect(struct usb_interface *intf)
{
    ...
    nfc_info(&drv_data->udev->dev, "intf %p\n", intf);
    ...
}

In drivers/nfc/nfcmrvl/usb.c:375,
nfcmrvl_suspendwill dump the address of inf to dmesg,
which allows local user to read kernel address via dmesg.

static int nfcmrvl_suspend(struct usb_interface *intf, pm_message_t message)
{
    ...
    nfc_info(&drv_data->udev->dev, "intf %p\n", intf);
    ...
}


In drivers/nfc/nfcmrvl/usb.c:416,
nfcmrvl_resume dump the address of inf to dmesg,
which allows local user to read kernel address via dmesg.

static int nfcmrvl_resume(struct usb_interface *intf)
{
    ...
    nfc_info(&drv_data->udev->dev, "intf %p\n", intf);
    ...
}
