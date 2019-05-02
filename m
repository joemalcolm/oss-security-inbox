X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["778" "Thursday" "2" "May" "2019" "19:14:30" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" nil "20" nil nil nil nil "5" nil nil (number mark "U       andreyknvl@g May  2   20/778   " thread-indent "\"[oss-security] CVE-2019-11683: \"GRO packet of death\" issue in the Linux kernel\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-11683: \"GRO packet of death\" issue in the Linux kernel" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20162 invoked by uid 550); 2 May 2019 17:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20141 invoked from network); 2 May 2019 17:14:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sLhIDZUhFo1OAU3zMPb1ol5/2V+pMSDki0M2Vl7xpqs=;
        b=Zf54NgFC/WpDnJy0P0D7Cvp0lQuDox5Qm0woZARk+D1IgyAiYQAW2dXxxpfl1Kgwnq
         5wW7hCL6CwJOoFLOjRHmbOBnmTOu5ByXgnacYUuARnJ7Wyuh1HXninm5fLxXM8LJN/HJ
         sCWZQZqC7WGMR3gLV9gcmUwDR+yFqJYiFJyjo6Eioy5EgBD7TM5ELPKAAi1gwf65VKWK
         fgaknwvMUq9jwMFgHsNrlPMkEyr8MGab4r/CGxkdRRiUSH/BNaNRV4WD5BXtaD2guUh5
         ZBjEHWZqu0WBZfFbb6POurvgmlppm4vKxhV0ENn3I/YPv797u6+Sl2KLhSMrFDmfhG6q
         CWQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sLhIDZUhFo1OAU3zMPb1ol5/2V+pMSDki0M2Vl7xpqs=;
        b=VJm0vf7mf2b4MhlKIEvyDlNgxeX/nr/A7DzqQ2rDJgIqMHKu3FxhtjtKRTaT7GIA8Y
         TJlOh0it61N8YFeJH++vGZWYazYhf9JgQoQF8SIfAcDblF8LP50cQONnguDi4sLl7lZ6
         g7Pn5F3HdMz6EJDfZtqNbPlyo7gwVSYS3lw/Mtu4fLuZg2MtFmubo92Qtd4yMRvIhbRf
         Rz04cIqvefy7+mDC0vKxk7mhpcOabgG9NeIK9frtiNp5bDAxnRhyUkyORldPFVQEhsn2
         Kf+eVB0G9pGdv/Nf1ioM8p6yZnNN9MH0adh3JUzLsOMa2os5haWD9gzmX5PCzAYB48aM
         4e/w==
X-Gm-Message-State: APjAAAWgmvBAxzFUuoR2ZspuOzRZHkDSRy68g5SKPnVZfrnBCrnYzzz0
	rkN74UL/iRT5YcLFDWFUkmOXLrRreKc8Tmzed5SfI2Bl
X-Google-Smtp-Source: APXvYqxhQp/bebnGjZD/dMD2BFvyjHJV0E+VTFYbdDMnWX+ZtqOKzJnQ+6XssRvIqXDHWUM6Xast8hzpqJFuqNOsLss=
X-Received: by 2002:a19:40d8:: with SMTP id n207mr2447948lfa.70.1556817281013;
 Thu, 02 May 2019 10:14:41 -0700 (PDT)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Thu, 2 May 2019 19:14:30 +0200
Message-ID: <CA+fCnZeEm1PAjBzVbMuKzoZuE5rKffqdRPBvNO7C5yNO+JnbXQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2019-11683: "GRO packet of death" issue in the Linux kernel

Hi,

syzbot has reported a remotely triggerable memory corruption in the
Linux kernel. It's been introduced quite recently in e20cf8d3f1f7
("udp: implement GRO for plain UDP sockets.") and only affects the 5.0
(stable) release (so the name is a bit overhyped :).

CVE-2019-11683 description:

udp_gro_receive_segment in net/ipv4/udp_offload.c in the Linux kernel
5.x through 5.0.11 allows remote attackers to cause a denial of
service (slab-out-of-bounds memory corruption) or possibly have
unspecified other impact via UDP packets with a 0 payload, because of
mishandling of padded packets, aka the "GRO packet of death" issue.

Fix (not yet upstream):

https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=4dd2b82d5adfbe0b1587ccad7a8f76d826120f37

Thanks!
