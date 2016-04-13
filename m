X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1094" "Wednesday" "13" "April" "2016" "21:18:16" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSGK2YxVqSz3zKJRbd1_mL1Yso_SUFE_5ZZ9-QKVD25Tg@mail.gmail.com>" "29" "[oss-security] CVE Request: Linux kernel: incorrect restoration of machine specific registers from signal handler." nil nil nil "4" "2016041311:18:16" "[oss-security] CVE Request: Linux kernel: incorrect restoration of machine specific registers from signal handler." (number mark "U       wmealing@red Apr 13   29/1094  " thread-indent "\"[oss-security] CVE Request: Linux kernel: incorrect restoration of machine specific registers from signal handler.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23969 invoked by uid 550); 13 Apr 2016 11:18:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23948 invoked from network); 13 Apr 2016 11:18:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=E8VyFJbPBzf7RtF+G/ZfNOYOZ2Zw21ej46mtMtbV55A=;
        b=PZn9AyLSXnhhWCSUhiixy1dov3I4HNLfvtAwU322sygIyoowKqjfJU2eYf4LpI88gL
         T7imB3yAz3pOQ1A8xuXJ4m4HdNN3TF0TSkEk38q4iMMMhr+dm9p7itbfT2tve/qFKBCe
         rl7Bn98uaJFAfLvDAOqyz/jqLfi7CzFu/qUXvsNH7rmbtD4hevUbZ+PFSAgDvn3NecDg
         Z86FN6YFLncsRgm/355+Y95mX4lxw+OhZQfbSbmNVUt8XkWWcPxaMgoW1Eav651rYrRX
         iZljQ2X9BzpP2UCHFYcXfRmtxeHKxZ59ZHkwJ1Csqo2KqTueNAXQMLg8x/LqNoJO0rAn
         r6xw==
X-Gm-Message-State: AOPr4FXyCyojrAALWgQdmwKiAzwAbHtW+qyj2C2wxNwK+TxylfMuwyfqyjY22cIAFkm6/Y3jR6ar/pKwpNsVKqjH
MIME-Version: 1.0
X-Received: by 10.194.112.167 with SMTP id ir7mr8958788wjb.14.1460546296816;
 Wed, 13 Apr 2016 04:18:16 -0700 (PDT)
Date: Wed, 13 Apr 2016 21:18:16 +1000
Message-ID: <CALJHwhSGK2YxVqSz3zKJRbd1_mL1Yso_SUFE_5ZZ9-QKVD25Tg@mail.gmail.com>
From: Wade Mealing <wmealing@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: Linux kernel: incorrect restoration of machine specific
 registers from signal handler.

A flaw was found in the linux kernel which could cause a kernel panic
when restoring machine specific registers on ppc platform.  Incorrect
transactional memory state registers could inadvertently change the
call path on return from userspace and cause the kernel to enter an
unknown state in the transactional memory handling code and panic in a
BUG_ON() defensively.

QMEU guests can also modify the same machine specific register values
via set_one_reg and guests may invoke the same unknown state and
callpath.  Since the fix is in the same location I would argue that
this is the same flaw.

This only both big endian and little endian ppc platforms, it does not
affect non powerpc platforms.

Thanks,

Wade Mealing
Red Hat Product Security

References:

Upstream fixes:
https://git.kernel.org/cgit/linux/kernel/git/powerpc/linux.git/commit/?h=fixes&id=d2b9d2a5ad5ef04ff978c9923d19730cb05efd55

https://git.kernel.org/cgit/linux/kernel/git/powerpc/linux.git/commit/?h=fixes&id=7f821fc9c77a9b01fe7b1d6e72717b33d8d64142

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1326540
