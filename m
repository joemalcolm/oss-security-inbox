X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1629" "Tuesday" "23" "May" "2017" "18:46:45" "+0000" "Roee Hay" "roeehay@gmail.com" "<CAA4i3gZUAwBc_ieNHF5qJOiQWBmmqxuqwQLthWj1aa8BkDRWkw@mail.gmail.com>" "60" "[oss-security] Linux lp.c Out-of-Bounds Write via Kernel Command-line (CVE-2017-1000363)" "^Date:" nil nil "5" "2017052318:46:45" "[oss-security] Linux lp.c Out-of-Bounds Write via Kernel Command-line (CVE-2017-1000363)" (number mark "        roeehay@gmai May 23   60/1629  " thread-indent "\"[oss-security] Linux lp.c Out-of-Bounds Write via Kernel Command-line (CVE-2017-1000363)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15495 invoked by uid 550); 23 May 2017 19:36:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5354 invoked from network); 23 May 2017 18:47:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=r+TvRoD9XxBuRww9/U78bNZClkkMXcHT8dvNmfO6Vwk=;
        b=P5mrhF3kYTjBg0L64T9S1ZwOoK+VQQkgVhdNhc8KL/vAle9uOf0Usc1bSNqYmr6VOb
         YP91eeSmEWxa/kcYILnc7FD2eanjHG/QGAQrQPWGh4AR5yi6x26+Cc6KeeOyHQ/WVkLY
         ufKxelWuuuua5abV/Ift5nsip08cDjKKCRAup7vLict+z6dfK1G8wC5Ypa3EvDgelVfF
         4OgSY1Gru6kfiehcjDeo1IG7scnVWJ6AvLj1Wlqdkf2+dyVjJ31QQZIXMS1DvkYIHtVq
         3msi3vZw3hHnu1uWdQyCnwgRBoL+mz5U3kjHttGl2Ey5qLzUaiymjqyNEI3xUsfl8Lgf
         gmpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=r+TvRoD9XxBuRww9/U78bNZClkkMXcHT8dvNmfO6Vwk=;
        b=Fi1NXv8TZYUtHBIHirvsPBj9dzYB/2KeRectLXLB3l4xYuEJIiThfcgsYsyg0ts5Lf
         B4X/R9rXJOyTxzzjUs84wzx/N8/ZMPGdTnaafh8x4HJLU+6xbopGYR2shJEWgXKg92PU
         MMHJzYex9B4gt+2N3YdcbYfb4HpVA4XjC6h72wYMoq1bgRRpoOFyIU7U7EP9trtmB5JY
         qHJPXvheUTJdhMi+SPwDOHYxbG7qTZpy5VesPTbo0rZlxLoW1elf8nOZZhTcWmXB1buF
         1vmrZpgweZPgNeetBjGbRt2yeNOv6oCn4TfKAP57XDiTuYxGV+sr7vWFuWcmuTs5qmwL
         GF4A==
X-Gm-Message-State: AODbwcA83rsB9tYylx1Aadw6b3T/bJFkC+/hYvUxT6k7qojwYdxp88dz
	KZGTT+TH74KCvXUv8t/VByDyeur4Vdeg
X-Received: by 10.202.80.203 with SMTP id e194mr16771233oib.155.1495565215687;
 Tue, 23 May 2017 11:46:55 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAA4i3gZUAwBc_ieNHF5qJOiQWBmmqxuqwQLthWj1aa8BkDRWkw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113b00d86b69ff0550356901"
Date: Tue, 23 May 2017 18:46:45 +0000
From: Roee Hay <roeehay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux lp.c Out-of-Bounds Write via Kernel Command-line (CVE-2017-1000363)
To: oss-security@lists.openwall.com

--001a113b00d86b69ff0550356901
Content-Type: text/plain; charset="UTF-8"

Details
=======
Due to a missing bounds check in the lp driver, and the fact that
parport_ptr integer is static, a kernel command-line adversary (can happen
due to bootloader vulnerabilities in Secure Boot environments, e.g. Nexus
6's CVE-2016-10277) can overflow the parport_nr array in the following
code, by appending many (>LP_NO) lp=none arguments to the command line.
CONFIG_PRINTER=y is required.

static int parport_nr[LP_NO] = { [0 ... LP_NO-1] = LP_PARPORT_UNSPEC };
static char *parport[LP_NO];
[...]
#ifndef MODULE
static int __init lp_setup (char *str)
{
static int parport_ptr;
[...]
} else if (!strncmp(str, "parport", 7)) {
    int n = simple_strtoul(str+7, NULL, 10);
    if (parport_ptr < LP_NO)
        parport_nr[parport_ptr++] = n;
    else
        printk(KERN_INFO "lp: too many ports, %s ignored.\n",
               str);
} else if (!strcmp(str, "auto")) {
    parport_nr[0] = LP_PARPORT_AUTO;
} else if (!strcmp(str, "none")) {
    parport_nr[parport_ptr++] = LP_PARPORT_NONE;
[...]
#endif
[...]
__setup("lp=", lp_setup);


Vulnerable:
=======
Linux 4.x (4.12-rc1 and below)
Linux 3.x
Linux 2.6.x
Linux 2.4.x
Linux 2.2.x

Patch:
======
https://github.com/torvalds/linux/commit/3e21f4af170bebf47c187c1ff8bf155583c9f3b1


Timeline:
=========
23-May-17: Public disclosure.
22-May-17: Patch available (Linux mainline 4.12-rc2).
17-May-17: CVE-2017-1000363 assigned by Kurt Seifried, Red Hat Product
Security.
16-May-17: Patch available (Linux Char/Misc drivers development tree).
16-May-17: Reported.

--001a113b00d86b69ff0550356901--
