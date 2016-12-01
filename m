X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6468" "Thursday" "1" "December" "2016" "20:05:42" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161201190542.hbicm7xfeflknmuu@eldamar.local>" "172" "[oss-security] CVE Request: OpenAFS: directory information leaks (OPENAFS-SA-2016-003)" nil nil nil "12" "2016120119:05:42" "[oss-security] CVE Request: OpenAFS: directory information leaks (OPENAFS-SA-2016-003)" (number mark "U       carnil@debia Dec  1  172/6468  " thread-indent "\"[oss-security] CVE Request: OpenAFS: directory information leaks (OPENAFS-SA-2016-003)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24534 invoked by uid 550); 1 Dec 2016 19:05:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24516 invoked from network); 1 Dec 2016 19:05:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zRGkUFOpac3wf3QCCOUUCjBat3wcak81tQTtu9hD9fo=;
        b=zNITCYtVOF7nFTOMI3iE7veE0tF1edA057eZ0pPTWJiQ4CwNqXJhurpffm2QMGT6zQ
         jJJA9mMra8mk6X6nK57r6rPdG6r4v+QwMEN1wg19IaCU3Ww3LMyT020WMHjELAgx7ta0
         nxZ/5uwHlN3k4voBlVnoNXllEt9FJJY/v+YIuvX0lJRuW0VthiJcroeU7/edqhi/cmPB
         F3cIRlmSRqJmdgX71t0Qm/mY0hgFuLGMAwX+lycO0VxOJQJSjFRhVQN86lXIg+gKReh3
         pG4a17xxVd+sL6xb4OGTX3KNihs3eyLRL/0xFnrRs1DG0a5N9zC/tAI4UPIZaLH8+tHW
         hj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=zRGkUFOpac3wf3QCCOUUCjBat3wcak81tQTtu9hD9fo=;
        b=IkugqnT+7KGpspMV8s1gibkRa0k4Ot60Hi/J/cS7P5uRAYzW0Jn6zIaZsweM3GwxYO
         zy4RuNZCRB9ajPg4ckemrIibDjlfls8Ez56Ons0VgaEfoR56SmK/Ev5g9fm8Augf0PYZ
         5bdtH1ztXwWCwf7BgSjBpSj9Qp8nCMWbmZVgksRUOKCdXYqgjM1nybnfAL/4p1PKlr22
         4alan+nNxpny93P9YeRx4Ecq/QEKawEmxzeFUbc9USkcD+iuEUGWgAGUfzj/hFB9173n
         bXDYWLrtpnYmpJMK+H+Xudq134PwRKr9f5nYxPfilQZw70gyCx5y0qVya+i9KQkIrN4I
         DsXQ==
X-Gm-Message-State: AKaTC01bfSYkyn0p3USnc4MnQa6DhUtpXbDq70dey0G+CcsDWkeTlwPLnIvY9JUPupaKuw==
X-Received: by 10.194.243.231 with SMTP id xb7mr40020222wjc.60.1480619145529;
        Thu, 01 Dec 2016 11:05:45 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 1 Dec 2016 20:05:42 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161201190542.hbicm7xfeflknmuu@eldamar.local>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nzz3lqc4yfp3lqex"
Content-Disposition: inline
User-Agent: NeoMutt/20161104 (1.7.1)
Subject: [oss-security] CVE Request: OpenAFS: directory information leaks
 (OPENAFS-SA-2016-003)

--nzz3lqc4yfp3lqex
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

The OpenAFS project has released a security advisory:

https://www.openafs.org/pages/security/OPENAFS-SA-2016-003.txt

OpenAFS Security Advisory 2016-003

> Topic: directory information leakage
>                                                                                                   
> Issued: 30 November, 2016
> Affected: OpenAFS client versions 1.0 through 1.6.19
>           OpenAFS servers versions 1.0 through 1.6.19
> 
> The contents of OpenAFS directories may be leaked in client cache partitions,
> in fileserver vice partitions, and on the wire for certain RPCs.
> 
> SUMMARY
> =======
> 
> Due to incomplete initialization or clearing of reused memory, OpenAFS
> directory objects are likely to contain "dead" directory entry information.
> This extraneous information is not active - that is, it is logically invisible
> to the fileserver and client. However, the leaked information is physically
> visible on the fileserver vice partition, on the wire in FetchData replies and
> other RPCs, and on the client cache partition. This constitutes a leak of
> directory information.

I'm attaching the full advisory for reference (and to have it int the
list archives).

Patches:

https://www.openafs.org/pages/security/openafs-sa-2016-003.patch
https://www.openafs.org/pages/security/openafs-sa-2016-003-master.patch

Could you please assign a CVE for the directory information leak issue
in OpenAFS?

Regards,
Salvatore

--nzz3lqc4yfp3lqex
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="OPENAFS-SA-2016-003.txt"

OpenAFS Security Advisory 2016-003

Topic: directory information leakage

Issued: 30 November, 2016
Affected: OpenAFS client versions 1.0 through 1.6.19
	  OpenAFS servers versions 1.0 through 1.6.19

The contents of OpenAFS directories may be leaked in client cache partitions,
in fileserver vice partitions, and on the wire for certain RPCs.

SUMMARY
=======

Due to incomplete initialization or clearing of reused memory, OpenAFS
directory objects are likely to contain "dead" directory entry information.
This extraneous information is not active - that is, it is logically invisible
to the fileserver and client. However, the leaked information is physically
visible on the fileserver vice partition, on the wire in FetchData replies and
other RPCs, and on the client cache partition. This constitutes a leak of
directory information.

CHARACTERIZATION
================

There are three different kinds of "dead" residual directory entry leaks, each
with a different cause:

1. There may be partial name data after the null terminator in a live directory
entry. This happens when a previously used directory entry becomes free, then
is reused for a directory entry with a shorter name.

2. "Dead" directory entries are left uncleared after an object is deleted or
renamed.

3. Residual directory entries may be inadvertently picked up when a new
directory is created or an existing directory is extended by a 2kiBi page.
This happens because the fileserver shares a buffer pool for directories of all
AFS users, but does not clear each buffer upon reuse. This is the most severe
problem because the leaked information may be from other directories or volumes
for which the AFS user is not authorized.

IMPACT
======

This is primarily a client and fileserver issue.  However, directory
information is also manipulated or transmitted by volume operations (e.g.,
dump, restore, release) and by salvage operations.  The fixes included in this
advisory address all known issues with directory information leaks.

The leaked information may only be viewed via access to at least one of the
following:
- unencrypted OpenAFS wire traffic
- a fileserver vice partition
- a cache manager cache partition

Any AFS user authorized to read directories may passively exploit this leak by
capturing wire traffic or examining his local cache as he/she performs
authorized reads on existing directories. Any leaked data will be for other
directories the fileserver had in the buffer pool at the time the authorized
directories were created or extended.

Any AFS user authorized to write a new directory may actively exploit this leak
by creating a new directory, flushing cache, then re-reading the newly created
directory. Any leaked data will be for other directories the fileserver had in
the buffer pool within the last few seconds. In this way an authorized user may
sample current fileserver directory buffer contents for as long as he/she
desires, without being detected.

Directories already containing leaked data may themselves be leaked, leading to
multiple layers of leaked data propagating with every new or extended
directory. The names of files and directories are the most obvious source of
information in this leak, but the FID vnode and uniqueid are leaked as well.
Careful examination of the sequences of leaked vnode numbers and uniqueids may
allow an attacker to:
- Discern each layer of old directories by observing breaks in consecutive runs
  of vnode and/or uniqueid numbers.
- Infer which objects may reside on the same volume.
- Discover the order in which objects were created (vnode) or modified
  (uniqueid).
- Know whether an object is a file (even vnode) or a directory (odd vnode).

AFFECTED SOFTWARE
=================

All releases of OpenAFS prior to 1.6.19 are affected.

FIXES
=====

The OpenAFS project recommends that adminstrators upgrade all fileservers and
cache managers to OpenAFS 1.6.20 (Unix).  Additionally, patch files are
provided for the master and 1.6.x branches.  This will prevent new leaks from
occurring.

We further recommend that adminstrators salvage all volumes with the
-salvagedirs option, in order to remove existing leaks.

This announcement and code patches related to it may be found on the
OpenAFS security advisory page at:

  http://www.openafs.org/security/

The main OpenAFS web page is at:

  http://www.openafs.org/

DETAILS
=======

The fixes ensure that both client and fileserver clear directory entries upon
deletion, and that the fileserver clears internal directory buffers before
reuse.  In addition, fixes are included to allow administrators to remove
existing leaks by salvaging volumes and partitions with the -salvagedirs option,

ACKNOWLEGEMENTS
===============

This issue was reported by Mark Vitale.


--nzz3lqc4yfp3lqex--
