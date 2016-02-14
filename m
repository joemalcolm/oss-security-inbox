X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/14/2
Message-ID: <20160214153152.GA27269@eldamar.local>
Date: Sun, 14 Feb 2016 16:31:52 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Cc: Ben Hutchings <benh@...ian.org>
Subject: CVE Request: Linux: ALSA: usb-audio: double-free triggered by invalid USB descriptor
Content-Type: text/plain; charset=utf-8

Hi

There is a double-free flaw in the ALSA USB MIDI driver:

> The 'umidi' object will be free'd on the error path by snd_usbmidi_free()
> when tearing down the rawmidi interface. So we shouldn't try to free it
> in snd_usbmidi_create() after having registered the rawmidi interface.

This was fixed in https://git.kernel.org/linus/07d86ca93db7e5cdf4743564d98292042ec21af7

https://lkml.org/lkml/2016/2/13/11

Could you assign a CVE for this issue?

Regards,
Salvatore
