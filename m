X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1568" "Wednesday" "6" "May" "2020" "15:12:12" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhRpmRTpqWe74KBk1QBQ7b8tuHXuOJAu2UHtq6foYRj7Zg@mail.gmail.com>" "51" "[oss-security] CVE-2020-10732 kernel: uninitialized kernel data leak in userspace coredumps" nil nil nil "5" "2020050605:12:12" "[oss-security] CVE-2020-10732 kernel: uninitialized kernel data leak in userspace coredumps" (number mark "U       wmealing@red May  6   51/1568  " thread-indent "\"[oss-security] CVE-2020-10732 kernel: uninitialized kernel data leak in userspace coredumps\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10732 kernel: uninitialized kernel data leak in userspace coredumps" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26310 invoked by uid 550); 6 May 2020 05:12:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26287 invoked from network); 6 May 2020 05:12:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588741949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=e/3zAAhstKGnVSpjin4VpDgDn3QGOSkUuLpiEBsA5g4=;
	b=gEk+/mOP9FHg1Fy9OiQLIY1Wr3qvcrnlUneix1myelsLOakFB6ZekTKGSKE8jO9pEMdEwJ
	UD9KD9rHhdgIj173Zm9XxJ/QQfe1P+1nFcPRleEi6QYM8rRtIAoUR5zMBpEYfnRyoEcDn4
	JKgkWbjzbFrUCqfxoBxjL1lAGEEfP1k=
X-MC-Unique: BlLrW9z8Nr6xWdYIEBk_cQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VNRVOQzQLCjqJMqGkhHJrRyCU/LtsZI1YJnVF+DtS/w=;
        b=ndAi4c1v4o1Ype1jXSIrD+E3fGQaDtgCiWAZuHD+Ck0FuQL4zcp9PLR7LeRwMBwDsf
         +0IgQNgvMeksnM62MO8jP3IueB2HXPfh4SCGsFC7I/8Ovcq0lY2HoSQUjm7g/pXRxohg
         5nlk61IIxyjNr5kmZimcExRK1qmMN6FdFGsujE6IM0PtCnPvX48zJuN3pxWaf/QkFGdz
         4iF2gDKry3K5yVXeKgKSlHL616v5ACx8gO8+ANQqURfAivev0T4cgTHs8DcafhCTBC53
         wcrqPNUPh7CC8M+YiVZ1BohHCQ51fnPbpRY+P8uPEtRlqJH2V0i/qv8O6Dfdj0xsuL35
         jo9Q==
X-Gm-Message-State: AGi0PuYvZlEqwu5h67m5dBmIQHWSOCry+hNlxkxR1w+gnEaXWqof1ON2
	6QfdqMKNzzvMk653J6xu6XzYF90THdez8CInlTNo/eqF/BerghntL/BtrHb6FWVp5UUMKBV3QmU
	RehENC8n1h6oO3cEhdpisFQ3Mk80t4HsnSzA8U+F/A6uW
X-Received: by 2002:a1c:6545:: with SMTP id z66mr2104802wmb.81.1588741944004;
        Tue, 05 May 2020 22:12:24 -0700 (PDT)
X-Google-Smtp-Source: APiQypJXeqNAH4wVfxGNDMU40/EZAB15N1MD2jtow8rk/UER7wmNlF0SmSfpNYqIcHTo7nJLFGKjqUw/7eBdQSZWiO8=
X-Received: by 2002:a1c:6545:: with SMTP id z66mr2104789wmb.81.1588741943810;
 Tue, 05 May 2020 22:12:23 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Wed, 6 May 2020 15:12:12 +1000
Message-ID: <CALJHwhRpmRTpqWe74KBk1QBQ7b8tuHXuOJAu2UHtq6foYRj7Zg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000336e1d05a4f3cf19"
Subject: [oss-security] CVE-2020-10732 kernel: uninitialized kernel data leak in userspace coredumps

--000000000000336e1d05a4f3cf19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Gday,

A potential info leak of kernel private memory to userspace was found in
the kernel's implementation of core dumping userspace processes.  An area
of memory was allocated from free memory without being correctly
initialized, this memory contents could contain kernel private information
from previous executions and leak it to kernel space for any (probably
local) user that is able to read the core dump.

This seems like it would allow leaking of possible registers that are not
stored/initialized in the core dump itself.  The amount leaked will depend
on the register state at the time of the crash, it could also leak nothing.

This was introduced in 4206d3aa1978e44f58bfa4e1c9d8d35cbf19c187

Possible mitigation would be to disable core dumps system-wide by setting:

* hard core 0

In the  /etc/security/limits.conf file and restarting
applications/services/processes which users may have access to or simply
reboot the system.  This disables core dumps which may not be a suitable
workaround in your environment.

Relevant links:
-------------------

Not upstream but a patch:
https://github.com/ruscur/linux/commit/a95cdec9fa0c08e6eeb410d461c03af8fd1f=
ef0a

Where I found out about it:
https://twitter.com/grsecurity/status/1252558055629299712

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=3D1831399

Thank you.

Wade Mealing

Product Security - Kernel
Red Hat
wmealing@redhat.com

--000000000000336e1d05a4f3cf19--

