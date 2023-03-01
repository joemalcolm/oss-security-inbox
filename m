Received: (qmail 20063 invoked by uid 550); 1 Mar 2023 15:48:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27874 invoked from network); 1 Mar 2023 15:06:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=diag.uniroma1.it; s=google; t=1677683174;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Iqlp6b2pp+g3FJGzFAgQZAkGUuXHu8Kh19KEYZ3vy0A=;
        b=D3+/XSjL3Y9rAwTFgVvwPRbQy3pSX1AdVbeTs3oXXHlVOjN/5BRVJc87NqZD2tZsBC
         BNSAcwJZJtmBkAtd+ABxR6BiJQOLYHvyVp24lmvUwE/rePHXyZAt9APhROkEXKcXaQl+
         GsVU2KdLCZmz8tdYIwmUsfM3h19dopa91TCk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677683174;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iqlp6b2pp+g3FJGzFAgQZAkGUuXHu8Kh19KEYZ3vy0A=;
        b=qkWSHRkOW9ylZKvfuf1BcS5+ygEPZ3EUiisv6R4jZf7AmA/DnyFjSpqn3QZmWV6cRa
         cAACF3qB9WE/2YLpOqNMD5FDaY8I59fU3C7+DlbrDxLcga+6hq41TVOI1PdiKUg3SdFG
         m2Hj5x8/r4ZQNeo9xDINEMf7XwV96frM04t9l+CbKw5qXoz/Wc3eEwRa7NAmE+otwgkn
         cOKndDXDwx92zDn4i9UyuPOX/xPoCeJpio1KaUxTDESphYOsZqA60RGxp6b6RDiQMfsH
         ccvKkt5LKiJCKhcd/doE3YXT/wWI7ILjnqrnIt6ih+rc0KuD4y0g2cVMbegDG4RtVRYN
         /MgQ==
X-Gm-Message-State: AO0yUKV18Md+wDXiJB2UASsMXUrLkgckmex106lYLbahCFc8T8avsPth
	+le84U1TWwHFdA8LVGRpEUhr2UfsuxKaOLzrL8VILC02++xTqC1u
X-Google-Smtp-Source: AK7set/h+U9lFvyOtXtqHHdB5swqNaiSQm1ld8HxCCNRuNJQVeM7end9ggEosO3RrubhUQDG5sqihMZaPFIh8daxEX4=
X-Received: by 2002:a17:906:65d4:b0:8b1:78b8:4207 with SMTP id
 z20-20020a17090665d400b008b178b84207mr3451300ejn.3.1677683174054; Wed, 01 Mar
 2023 07:06:14 -0800 (PST)
MIME-Version: 1.0
From: Pietro Borrello <borrello@diag.uniroma1.it>
Date: Wed, 1 Mar 2023 16:06:03 +0100
Message-ID: <CAEih1qWYc1B5nXxhTMoT7++9p4FhCPSuGamJOJp7OtRgEsC5pw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-1079: Linux Kernel: Use-After-Free in asus_kbd_backlight_set()

Hi all,

I'm disclosing a Use After Free that may be triggered when plugging in a
malicious USB device, which advertises itself as an asus device.

The device uses a worker `asus_worker` scheduled by asus_kbd_backlight_set() to
communicate with the hardware.
The work_struct is embedded in `struct asus_kbd_leds`, and at device removal,
`struct asus_kbd_leds` is freed.

However, concurrently with device removal, the LED controller
asus_kbd_backlight_set() may schedule a worker whose use would
result in a use-after-free.

Following the debug check triggered by freeing a work_struct in use:
```
[   77.409878][ T1169] usb 1-1: USB disconnect, device number 2
[   77.423606][ T1169] ODEBUG: free active (active state 0) object
type: work_struct hint: asus_kbd_backlight_work+0x0/0x2c0
[   77.425222][ T1169] WARNING: CPU: 0 PID: 1169 at
lib/debugobjects.c:505 debug_check_no_obj_freed+0x43a/0x630
[   77.426599][ T1169] Modules linked in:
[   77.427322][ T1169] CPU: 0 PID: 1169 Comm: kworker/0:3 Not tainted
6.1.0-rc4-dirty #43
[   77.428404][ T1169] Hardware name: QEMU Standard PC (i440FX + PIIX,
1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
[   77.429644][ T1169] Workqueue: usb_hub_wq hub_event
[   77.430296][ T1169] RIP: 0010:debug_check_no_obj_freed+0x43a/0x630
[   77.431142][ T1169] Code: 48 89 ef e8 28 82 58 ff 49 8b 14 24 4c 8b
45 00 48 c7 c7 40 5f 09 87 48 c7 c6 60 5b 09 87 89 d9 4d 89 f9 31 c0
e8 46 25 ef fe <0f> 0b 4c 8b 64 24 20 48 ba 00 00 00 00 00 fc ff df ff
05 4f 7c 17
[   77.433691][ T1169] RSP: 0018:ffffc9000069ee60 EFLAGS: 00010246
[   77.434470][ T1169] RAX: b85d2b40c12d7600 RBX: 0000000000000000
RCX: ffff888117a78000
[   77.435507][ T1169] RDX: 0000000000000000 RSI: 0000000080000000
RDI: 0000000000000000
[   77.436521][ T1169] RBP: ffffffff86e88380 R08: ffffffff8130793b
R09: ffffed103ecc4ed6
[   77.437582][ T1169] R10: ffffed103ecc4ed6 R11: 0000000000000000
R12: ffffffff87095fb8
[   77.438593][ T1169] R13: ffff88810e348fe0 R14: ffff88810e348fd4
R15: ffffffff852b5780
[   77.439667][ T1169] FS:  0000000000000000(0000)
GS:ffff8881f6600000(0000) knlGS:0000000000000000
[   77.440842][ T1169] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   77.441688][ T1169] CR2: 00007ffc05495ff0 CR3: 000000010cdf0000
CR4: 00000000001006f0
[   77.442720][ T1169] Call Trace:
[   77.443167][ T1169]  <TASK>
[   77.443555][ T1169]  slab_free_freelist_hook+0x89/0x160
[   77.444302][ T1169]  ? devres_release_all+0x262/0x350
[   77.444990][ T1169]  __kmem_cache_free+0x71/0x110
[   77.445638][ T1169]  devres_release_all+0x262/0x350
[   77.446309][ T1169]  ? devres_release+0x90/0x90
[   77.446978][ T1169]  device_release_driver_internal+0x5e5/0x8a0
[   77.447748][ T1169]  bus_remove_device+0x2ea/0x400
[   77.448421][ T1169]  device_del+0x64f/0xb40
[   77.448976][ T1169]  ? kill_device+0x150/0x150
[   77.449577][ T1169]  ? print_irqtrace_events+0x1f0/0x1f0
[   77.450307][ T1169]  hid_destroy_device+0x66/0x100
[   77.450938][ T1169]  usbhid_disconnect+0x9a/0xc0
```

The proposed patch uses a spinlock to safely prevent the worker to be scheduled
at device removal, and has been merged in the Linux tree:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4ab3a086d10eeec1424f2e8a968827a6336203df

The issue has been assigned CVE-2023-1079.

Best regards,
Pietro Borrello
