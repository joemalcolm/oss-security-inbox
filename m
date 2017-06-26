X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1352" "Monday" "26" "June" "2017" "18:07:59" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQkb-2yLFMTuF51QSiUWx=6Wv9DV_e7_s+vgopjhXKyxA@mail.gmail.com>" "50" "[oss-security] CVE-2017-7482 Linux kernel: krb5 ticket decode len check." "^Date:" nil nil "6" "2017062608:07:59" "[oss-security] CVE-2017-7482 Linux kernel: krb5 ticket decode len check." (number mark "        wmealing@red Jun 26   50/1352  " thread-indent "\"[oss-security] CVE-2017-7482 Linux kernel: krb5 ticket decode len check.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7462 invoked by uid 550); 26 Jun 2017 08:08:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7444 invoked from network); 26 Jun 2017 08:08:11 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=057a3LMt8xuD0Kqgr6/mb1HqpXhcfeIkIPE9OfPBiRc=;
        b=VDAw0mrwDnHHiiAONEykYplJ7Wq/2c9eAuapn5vegCe05HPFQhL+eSuyefibIxB9Pi
         Ti6CLq4bSuJ3tJmQ4sglZzbr8cxrn31KLiREoLx+R16e5wurTpPqv7XaqZgAdSLHbeQs
         TsSn3InmrlufHnJaE9Q/NdwtKwDJVSS0DwuRDHjwI6dnoovI0M973ffWpr3RAkwmA3jl
         knznrUNW5hfkf9bWvlvwWvKrOwNQlmpwDxAQKWGn5OwSvkO07+bpIqLIbiRxS2KiP9jf
         w+viebIAYc+/kJxZZLFQ+L8YAgmJ9nGSYwPATWhS4bb8B2XeMldT+1A/NWynWr1XP85h
         HEhg==
X-Gm-Message-State: AKS2vOy3+ObbGc0gLBqC0F89JbF1rGivyG0RDAJlVoyuc/krAxweZJIJ
	XxdzjULViqo9ATco53JNrHE/Tp8eBy5DoFjJ/A==
X-Received: by 10.237.57.5 with SMTP id l5mr24439668qte.121.1498464480044;
 Mon, 26 Jun 2017 01:08:00 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhQkb-2yLFMTuF51QSiUWx=6Wv9DV_e7_s+vgopjhXKyxA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1140dbbc0ac0d40552d873b9"
Date: Mon, 26 Jun 2017 18:07:59 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7482 Linux kernel: krb5 ticket decode len check.
To: oss-security@lists.openwall.com

--001a1140dbbc0ac0d40552d873b9
Content-Type: text/plain; charset="UTF-8"

Gday,

David Howells has written a great description, so rather than reword what
he's written here is a quote directly from the git commit.

>From the patch notes:

---
    When a kerberos 5 ticket is being decoded so that it can be loaded into
an
    rxrpc-type key, there are several places in which the length of a
    variable-length field is checked to make sure that it's not going to
    overrun the available data - but the data is padded to the nearest
    four-byte boundary and the code doesn't check for this extra.  This
could
    lead to the size-remaining variable wrapping and the data pointer going
    over the end of the buffer.

    Fix this by making the various variable-length data checks use the
padded
    length.
---

>From what I can see, this could leak 3 bytes of memory to userspace or
possibly corrupt 3 bytes of memory,

Upstream fix
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5f2f97656ada8d811d3c1bef503ced266fcd53a0

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2017-7482

-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@redhat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

--001a1140dbbc0ac0d40552d873b9--
