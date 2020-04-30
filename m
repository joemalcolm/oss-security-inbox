X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Thursday" "30" "April" "2020" "16:46:30" "-0400" "Paul Moore" "paul@paul-moore.com" "<CAHC9VhQmqNyptkb+H4XrF7ShPDed+vsMamDdA66=u59oGjzasg@mail.gmail.com>" "22" "[oss-security] Linux kernel SELinux/netlink missing access check" nil nil nil "4" "2020043020:46:30" "[oss-security] Linux kernel SELinux/netlink missing access check" (number mark "U       paul@paul-mo Apr 30   22/879   " thread-indent "\"[oss-security] Linux kernel SELinux/netlink missing access check\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel SELinux/netlink missing access check" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28218 invoked by uid 550); 30 Apr 2020 21:09:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5386 invoked from network); 30 Apr 2020 20:46:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=OzoQgJew21wsiwiUc0j2YwRiSCq7zKIMm50VSE/KaT8=;
        b=lTipC6+uHFaG+jRp9NeQdTo6fgFnXsVnQriW3pVjsTlkwLyNUrAaInykEWIdTWM++A
         Onx3oRWms1UKojdtWczsen6rkmazbaH/DOkKVgHaPQJOZLjJlPm3A2aln3bN9G7+hIRa
         kJ/Ub4GKpZzPtqz/i0jGl6QLGZi57a0jJKpIIzNmrr/vhrnpNPK5VMWZoTVJD1K9JKmz
         obxQhC5hXk31/S3spserFTRhjPSAoauXrxxmh3lw1Q1DR87Epzxe/C5UL7ksEar2s2Oi
         39A2cHt0PVHP5fzxy84NaQGO4PvRgofrN9L+3GcpnjlD04u/t7JVRgPCYXdqGeslCidt
         0oTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=OzoQgJew21wsiwiUc0j2YwRiSCq7zKIMm50VSE/KaT8=;
        b=tA5NMMb2d6v6mpZRAmoOXfCWPO4v0jrpuUqGnZbFQI9/Z5x8Tdo6Rg4kuRKd0cq+MS
         WayzUKL5od4SYBEiLFRLa8FgabtRZ55i+KzxE9dw3jYDIbcSKC3tx088VgQ3f0iodwdw
         G9m+X+KFtBU8tpv89/7kfdDNxlbz4MJGEQLZtgJpxtZRteL4YIlSJxbSywl71mXhbaam
         VHQS2pVD5JuSd6GjTci/+OkNwMhIoggolsAoC/PtIemeRO7i3mnkmt6/GH9Vyk93o5tv
         5QdAy8hfKpt9NmxXg3wFWxY4JsQjfN0jV9FqtDRF02lcSmzpLOraPyTCHLVffVDDTSoK
         Ab6w==
X-Gm-Message-State: AGi0PuaVvVk1COmJ875nb6d6X7gdjs2o9yOpTSrqixVs0woj/M0GbXV+
	f7/4ejtf5OYYRPhqJLhIKcC3iN9S5SuGL+dH/axvC9xxkw==
X-Google-Smtp-Source: APiQypKdM+zcrC1MLNZOkKyapytre9ySdmAL5y4q8tP6SM1fkFT+GgsX+pcLlg6pZNAh0XwhpsaAsnHnbsg0WIKEfAI=
X-Received: by 2002:a05:6402:1b0b:: with SMTP id by11mr780442edb.269.1588279601077;
 Thu, 30 Apr 2020 13:46:41 -0700 (PDT)
MIME-Version: 1.0
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 30 Apr 2020 16:46:30 -0400
Message-ID: <CAHC9VhQmqNyptkb+H4XrF7ShPDed+vsMamDdA66=u59oGjzasg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Stephen Smalley <stephen.smalley.work@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel SELinux/netlink missing access check

Hello all,

On Friday, April 24th Dmitry Vyukov reported a difference in netlink
message handling between SELinux enabled and disabled kernels (archive
link below).  While discussing the issue it became apparent that
SELinux was not properly handling the case where multiple netlink
messages were placed in the sk_buff that is passed to the netlink_send
LSM hook (the SELinux implementation is in selinux_netlink_send()).

A patch has been posted to the SELinux mailing list (archive link
below) and will be sent to Linus shortly for inclusion in an upcoming
Linux v5.7-rcX release.

* SELinux mailing list discussion
- https://lore.kernel.org/selinux/CACT4Y+YTi4JCFRqOB9rgA22S+6xxTo87X41hj6Tdfro8K3ef7g@mail.gmail.com

* Patch which addresses the problem
- https://lore.kernel.org/selinux/158827786575.204093.6741581954492272816.stgit@chester

-- 
paul moore
www.paul-moore.com
