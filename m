Received: (qmail 3400 invoked by uid 550); 31 Mar 2026 23:28:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1285 invoked from network); 31 Mar 2026 20:48:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774990086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=KUQWsF7kqrehYVdH3Qn9tK8ZnUT8r27P4eo3XAiuDp0=;
	b=W6OaRssnYqiU3kYtuKmlpoEbNkIuZnNzv5Qm1Qm551Fd/gq3Nzq4Im6TC8FgR1QRVqc+Z7
	Co+ikCFgN7KHVlWnyIvC+rpfa2jWSeEzGUIrC5gLcRdT3/bC7EyJLl1x4BQra3uinMzMZC
	DTYTnhdUcg0Bl8fxfIywocG5WgITZUU=
X-MC-Unique: KFXAKJOZOiCNFOHLlEh-9g-1
X-Mimecast-MFC-AGG-ID: KFXAKJOZOiCNFOHLlEh-9g_1774990083
From: Aaron Conole <aconole@redhat.com>
To: ovs-announce@openvswitch.org, oss-security@lists.openwall.com
Date: Tue, 31 Mar 2026 16:48:00 -0400
Message-ID: <f7t8qb7enen.fsf@redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xO5_Puh2ca1TTzT8CBbIdPTtesdnPODWOCD6SDB_Rkw_1774990083
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: [oss-security] [ADVISORY] CVE-2026-34956: Open vSwitch: Invalid memory access in
 conntrack FTP alg.

Description
===========

Multiple versions of Open vSwitch are vulnerable to crafted FTP payloads
causing invalid memory accesses, potential denial of service, and possible
remote code execution.  This impacts the userspace implementation of
conntrack.  Triggering the vulnerability requires that Open vSwitch has
configured conntrack flows specifying the FTP alg handler.  Conntrack
handlers in userspace are not automatically applied.

The issue is caused by type narrowing when copying FTP substrings.  It
has existed in all versions of the userspace conntrack supporting the
FTP handler.  This was introduced with Open vSwitch version 2.8.0 and
affects all versions up to 3.7.0.

The Common Vulnerabilities and Exposures project (cve.mitre.org) has
assigned CVE-2026-34956 identifier to this issue.  At the time of writing
the flaw is considered with Moderate impact and 5.9 CVSS.


Mitigation
==========

For any affected version of Open vSwitch, avoiding the FTP alg will
prevent the issue from triggering.  The Open vSwitch team does not
recommend attempting to mitigate the vulnerability this way because it
may impact packet forwarding.

By default, alg handlers are not installed, and must be added as part
of the OpenFlow rules (via 'ct(alg=ftp)' for example).

Users can check if they are using affected flows by looking at their
OpenFlow ruleset for their bridges, for example:

   ovs-ofctl dump-flows <bridge> | grep 'alg=ftp'

We have found that Open vSwitch may be subject to heap corruption when
processing FTP messages.


Fix
===

Patches to fix this vulnerability in Open vSwitch 3.3 and newer are
applied to the appropriate branches, and the original patch is located
at:

   https://mail.openvswitch.org/pipermail/ovs-dev/2026-March/431425.html


Recommendation
==============

We recommend that users of Open vSwitch apply the included patch, or
upgrade to a known patched version of Open vSwitch.  These include:

* 3.3.9
* 3.4.6
* 3.5.4
* 3.6.3
* 3.7.1


Acknowledgements
================

The Open vSwitch team wishes to thank the reporter:

  * Seiji Sakurai <Seiji.Sakurai@outlook.com>

