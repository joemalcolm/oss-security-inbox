X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["951" "Friday" "17" "April" "2015" "11:44:14" "-0400" "Eric Windisch" "eric@windisch.us" "<CAAZDpLd86UzwsK-9QK2HNvubj2qPb97UxKiiVFO2cnWJVRzykA@mail.gmail.com>" "24" "[oss-security] USERNS allows circumventing MNT_LOCKED" nil nil nil "4" "2015041715:44:14" "[oss-security] USERNS allows circumventing MNT_LOCKED" (number mark "        eric@windisc Apr 17   24/951   " thread-indent "\"[oss-security] USERNS allows circumventing MNT_LOCKED\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21722 invoked by uid 550); 17 Apr 2015 15:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21685 invoked from network); 17 Apr 2015 15:44:26 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=IPd7BtfHQI7xQrI67bemwt6+0BKhWhQg5JKFudX3YQE=;
        b=jGmDqriEk+N+0dFT+tfnd+XPkIEoEAASOiiNqePI9vpKy3lSOKflRhT6mW9NMnw+Tj
         MGx/bb9WnhlmjAgMtN1Tphx3quE/WhKJfmbrpQOpsd/YKuP/qq8uuMRqE/KuyKY3AoAS
         26HnR7kdBKfz5ymGhjqZHYBhYrphkJrrVKbWnc/UCJIRqdhKGrCJN7bLK396UCl+JTtM
         5A0Sv6t9SK68iqsYPXAvwgqJZ7BbiNE+cXS2Naf8kN+GvcPA75xy3ejkrvAvlbIZKBLG
         9+9AosM81Z7Cdr7VnkEL8KAfpZ8Y+xH5j9MTMjPPG5sKvAaZBnL6qa3CHGqAVBF/pugL
         7vKQ==
X-Gm-Message-State: ALoCoQle5IJOpswSKom5FvxaLEKaB01aMjR2IyhJJUozZqNO3s5BIP1dgnvv4cTwacFhp1hgEj7G
MIME-Version: 1.0
X-Received: by 10.152.204.40 with SMTP id kv8mr4797116lac.113.1429285454597;
 Fri, 17 Apr 2015 08:44:14 -0700 (PDT)
X-Originating-IP: [71.162.251.100]
Message-ID: <CAAZDpLd86UzwsK-9QK2HNvubj2qPb97UxKiiVFO2cnWJVRzykA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11347da6cde4690513ed7305
Cc: cve-assign@mitre.org
Date: Fri, 17 Apr 2015 11:44:14 -0400
From: Eric Windisch <eric@windisch.us>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] USERNS allows circumventing MNT_LOCKED
To: oss-security@lists.openwall.com

--001a11347da6cde4690513ed7305
Content-Type: text/plain; charset=UTF-8

In October 2014, Andrey Vagin reported[1] to the Linux Containers list that
it would be possible to use user namespaces to circumvent MNT_LOCKED and
allow unprivileged users to access the directory structure underneath of
mounts. A PoC was also produced and is public.

Patches are now available and proposed to Linus[2].

This may not simply be information disclosure, but containerized
environments may through chroot and mount namespaces mask directory
structures as read-only or inaccessible via the use of bind-mounts. Such
read-only masking may be circumvented by this vulnerability on systems
where these directories are not otherwise protected by MAC (i.e. SELinux or
AppArmor).

Regards,
Eric Windisch

[1] https://groups.google.com/forum/#!topic/linux.kernel/HnegnbXk0Vs
[2] http://www.spinics.net/lists/linux-containers/msg30786.html

--001a11347da6cde4690513ed7305--
