Received: (qmail 11722 invoked by uid 550); 15 Oct 2025 19:00:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24173 invoked from network); 15 Oct 2025 18:51:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=catalyst.net.nz;
	s=default; t=1760554262;
	bh=7qGWNSKEh8tkfoS09RP0tA4Irs8JXy5yhv5cNSw776I=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=YvWvwhnWfK0hG+wNfMjoYKGBmLMMg+c5NhihN+SILHIrasqVXcMd0a2cfUJyVCHYQ
	 IMXiRnOHrg/9402QIrSim7zmCBHPWp8Rj6H+Fd0IddkzUf9NJ8kfV/G8eXJRPcVHWC
	 rudvbJ8nEA6z+9iC3Z4lD6ZF0q8sednWeDcuTxFz2ZjNADzZv6JXdE1U2PWz1VIWLM
	 IebTicvryhHMDrD6KVX8rP/LFu/dnE9zSaSsVlvCjYWVwjeAGlvTy8qSeah77r3/iD
	 Of3NP3Vo/2Z1+hMoYsI6Yz2Egjp0FDzCCoFOZzu9W9k2uMk3L8xipv0N4+0uZPfDGe
	 6LpCur33JScrA==
Message-ID: <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
Date: Thu, 16 Oct 2025 07:51:00 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
To: oss-security@lists.openwall.com
References: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
 <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
Content-Language: en-NZ
In-Reply-To: <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Samba security releases for CVE-2025-10230 and CVE-2025-9640

Last week I wrote:
> This is a heads-up that there will be Samba security updates for
> 4.21, 4.22, and 4.23 on Wednesday, October 15, 2025. Please make
> sure that your Samba servers will be updated soon after the release!
>
> Impacted component:
>  - AD DC (CVSS 10, High, when using a very unusual configuration)
>  - File services (CVSS 4.3, Low, in a widely used configuration)
>
> The AD DC bug will affect very few, possibly zero, users.

The fixes are now out.

These are

CVE-2025-10230 https://bugzilla.samba.org/show_bug.cgi?id=15903
CVE-2025-9640  https://bugzilla.samba.org/show_bug.cgi?id=15885

The first of which is the CVSS 10 one. I have included the
announcements here, which you can also see at

https://www.samba.org/samba/security/CVE-2025-10230.html
https://www.samba.org/samba/security/CVE-2025-9640.html

and various other places. There are patches on bugzilla and at
https://www.samba.org/samba/history/security.html.

I will reply with an explanation of how this came about.

Douglas


=================================================================
== Subject:      Command injection via WINS server hook script
==
== CVE ID#:     CVE-2025-10230
==
== Versions:    All versions since 4.0
==
== Summary:     If the 'wins hook' parameter is set on a domain
==              controller with the WINS server enabled,
==              unauthenticated remote code execution is possible.
=================================================================

===========
Description
===========

If a Samba server has WINS support enabled (it is off by default), and
it has a 'wins hook' parameter specified, the program specified by
that parameter will be run whenever a WINS name is changed.

The WINS server used by the Samba Active Directory Domain Controller
did not validate the names passed to the wins hook program, and it
passed them by inserting them into a string run by a shell.

WINS is an obsolete and trusting protocol, and clients can request any
name that fits within the 15 character NetBIOS limit. This includes
some shell metacharacters, making it possible to run arbitrary
commands on the host.

The WINS server used by Samba when it is not a domain controller is
unaffected.

==================
Patch Availability
==================

Patches addressing this issue have been posted to:

    https://www.samba.org/samba/security/

Additionally, Samba 4.23.2, 4.22.5, and 4.21.9 have been issued as
security releases to correct the defect. Samba administrators are
advised to upgrade to these releases or apply the patch as soon as
possible.

==================
CVSSv3 calculation
==================

CVSS:3.1: AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H  (10.0)

==========
Workaround
==========

Avoid setting the 'wins hook' parameter in the smb.conf of a Samba AD
Domain Controller.

The 'wins hook' parameter is only effective when 'wins support' is
enabled. In other words, this combination is safe, regardless of 'wins
hook':

        server role = domain controller
        wins support = no

The default value for 'wins support' is 'no', so it is safe (though
pointless) for 'wins hook' occurs if 'wins support' does not.

It does NOT help to have 'wins hook' set to a non-existent or
non-executable path, but an explicitly empty value

        wins hook =

is OK.

When 'server role' is not 'domain controller' (or its synonyms 'active
directory domain controller', 'dc'), the server is not affected.
Specifically, 'member' or 'standalone' servers use a different WINS
server that is not vulnerable.

The 'wins hook' parameter is unlikely to be useful on a domain
controller, and administrators who use it might want to reconsider
that choice even on a patched server. It may not be supported in
future Samba releases.

=======
Credits
=======

Reported by Igor Morgenstern of Aisle Research.

Patches provided by Douglas Bagnall of the Samba team and Catalyst IT.

This advisory written by Douglas Bagnall.

==========================================================
== Our Code, Our Bugs, Our Responsibility.
== The Samba Team
==========================================================



===========================================================
== Subject:     uninitialized memory disclosure via vfs_streams_xattr
==
== CVE ID#:     CVE-2025-9640
==
== Versions:    All versions since 3.2
==
== Summary:     Uninitialised memory can be written into alternate data
==              streams, possibly leaking sensitive data.
===========================================================

===========
Description
===========

An authenticated user can read an unlimited number of samples of
discarded heap memory, due to a failure to initialise memory in
streams_xattr_pwrite() in the vfs_streams_xattr file server module.

This is achieved by issuing write requests that creates holes in the
file.

Samba erases known secrets before freeing the associated memory, which
somewhat mitigates the data leak.

==================
Patch Availability
==================

Patches addressing this issues have been posted to:

    https://www.samba.org/samba/security/

Additionally, Samba 4.23.2, 4.22.5, and 4.21.9 have been issued as
security releases to correct the defect. Samba administrators are
advised to upgrade to these releases or apply the patch as soon as
possible.

====================
CVSSv3.1 calculation
====================

AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N (4.3)

==========
Workaround
==========

Systems that don't use vfs_streams_xattr are not affected. If you are
not sure, look for the string "streams_xattr" in your smb.conf. If
there is a line like this

    vfs objects = streams_xattr [and possibly other terms]

removing 'streams_xattr' from the 'vfs objects' list will avoid the
vulnerability but will affect functionality.

=======
Credits
=======

Reported and fixed by Andrew Walker of IX Systems and the Samba Team.

This advisory written by Douglas Bagnall of Catalyst IT and the Samba
Team.

==========================================================
== Our Code, Our Bugs, Our Responsibility.
== The Samba Team
==========================================================

