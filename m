X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["647" "Tuesday" "22" "December" "2020" "18:06:13" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjULWQ+28j6enr=N30Y1h07EUNMO7pyHDmLQVLx4mM1kPA@mail.gmail.com>" "21" "[oss-security] CVE-2020-25723 QEMU: assertion failure through usb_packet_unmap() in hw/usb/hcd-ehci.c" nil nil nil "12" "2020122217:06:13" "[oss-security] CVE-2020-25723 QEMU: assertion failure through usb_packet_unmap() in hw/usb/hcd-ehci.c" (number mark "U       mcascell@red Dec 22   21/647   " thread-indent "\"[oss-security] CVE-2020-25723 QEMU: assertion failure through usb_packet_unmap() in hw/usb/hcd-ehci.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25723 QEMU: assertion failure through usb_packet_unmap() in hw/usb/hcd-ehci.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3117 invoked by uid 550); 22 Dec 2020 17:30:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17473 invoked from network); 22 Dec 2020 17:06:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608656790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=kASPFSG458wIw8FOksAnM/+fjrU/ApvAp0jX3kIfITQ=;
	b=XGMHSL9Q8lu4Pkx92JdbjtZJipyStqmluUn26rgIAwWo1rYPUeL277GCAm+39xF4m5k90o
	d5j73fDjFIkyieC/we2y829nDDjseHQKw0yh1yY9uXG6L7WYmMsCZmHbzxR/4bM0lS8YBX
	Iw5ZU0kBEYFYbYM0Q7ySO8JszvZZeE0=
X-MC-Unique: tn1bQAv4OmuXqT94txuwgQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=kASPFSG458wIw8FOksAnM/+fjrU/ApvAp0jX3kIfITQ=;
        b=TmaOkDJiky5JHvsWG4odTfCyUhW/Foc5majTduseIgWvueLdYng8Raj8+S31sjkhQC
         IU7E6wEkl4owdzKiSslsN67Bwq7dyuCaLqEtUnd2b5vwZ0NG69mEqV3JWPrC0KdE0JID
         OG4XcJC97f7m3MtArJjQhepHhAP/ys8vrZdWH6rngwmrWozpt7aW4hJYHnpj6fNXOLCa
         8yhT85lSOAskkWM+zneXS2vKptWtzDoMXjchjbQAKsGSXgkczLHlyHSEW5ZcvsF+smjx
         s5FEMUs5STkezDDvgZiCPbzaG9buT5//aggPteIyZGbCKy1itjewRIEUO+GDnXMwhLKc
         yG1A==
X-Gm-Message-State: AOAM530ALItDDDn7Jm4jXkCRmpDq6Za1bkhQApfhZbeDlJcBCX+p3qE2
	cV3rLomoNiAUOc55yHnL3Xj30r3lLxtdvxEpf6x2/Um7Y0nI36y390X/Qc0EgF6CW2LhRHItiaF
	NuLFYzmj+t6NhqJPO6y1rqEvDGGamDMT0PDdVKUToI3vG
X-Received: by 2002:a17:906:4e53:: with SMTP id g19mr20367938ejw.454.1608656784137;
        Tue, 22 Dec 2020 09:06:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxX/gaNJE4WrCX7AWBHjI/J9V1mwMonUQhEWqMYyQsWaNNTUu/1nJGjEGgyWJw9n9Gds56zX7E0ZDgUeizJNOU=
X-Received: by 2002:a17:906:4e53:: with SMTP id g19mr20367921ejw.454.1608656784019;
 Tue, 22 Dec 2020 09:06:24 -0800 (PST)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Tue, 22 Dec 2020 18:06:13 +0100
Message-ID: <CAA8xKjULWQ+28j6enr=N30Y1h07EUNMO7pyHDmLQVLx4mM1kPA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: 330cjfdn@gmail.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-25723 QEMU: assertion failure through
 usb_packet_unmap() in hw/usb/hcd-ehci.c

Hello,

A flaw was found in the USB EHCI controller emulation of QEMU. It
could occur while processing USB requests due to DMA memory map
failure not being properly detected. This was fixed in the following
commit by checking the return value of usb_packet_map(), thus
preventing a reachable assertion issue from occuring in a later call
of usb_packet_unmap().

Upstream commit:
https://git.qemu.org/?p=qemu.git;a=commit;h=2fdb42d840400d58f2e706ecca82c142b97bcbd6

This issue was reported by Cheolwoo Myung (cc'd).
CVE-2020-25723 was assigned by Red Hat Inc.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

