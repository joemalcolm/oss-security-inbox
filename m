X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/11/2
Message-ID: <CALJHwhT3uLqQEbkVd9f2zMRONWUB3M2_Z60n7jXUPX3=A5d6uA@mail.gmail.com>
Date: Thu, 11 Mar 2021 17:19:44 +1000
From: Wade Mealing <wmealing@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-20269: kexec-tools: incorrect permissions on vmcore-dmesg.txt file
Content-Type: text/plain; charset=utf-8

Gday,

A flaw was found in the kexec-tools where it made the incorrect permissions
on the vmcore-dmesg.txt extracted from the vmcore of a previous kernel
panic.  It is possible that this could be used to leak kernel internal
information from a previous execution if it was output to the ring buffer
or part of the panic backtrace.   An unprivileged user with a local account
can use this to extract kernel internal information resulting in an
information leak.

TLDR: The vmcore-dmesg.txt is created world readable and should not be.

Red Hat Bugzilla:
  http://bugzilla.redhat.com/CVE-2021-20269


Thank you.
-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@...hat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

secalert@...hat.com for urgent response

