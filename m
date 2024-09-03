Received: (qmail 5217 invoked by uid 550); 3 Sep 2024 14:02:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1892 invoked from network); 3 Sep 2024 14:01:25 -0000
Date: Tue, 3 Sep 2024 09:17:05 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Message-ID: <ZtcMUR8Leae-eUIM@dojo.mi.org>
References: <20240903.014649-personal.smudges.long.champ-QiEEimlh1P@cyphar.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240903.014649-personal.smudges.long.champ-QiEEimlh1P@cyphar.com>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Tue, 03 Sep 2024 10:01:16 -0400 (EDT) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Tue, 03 Sep 2024 10:01:16 -0400 (EDT)
Subject: Re: [oss-security] CVE-2024-45310: runc can be tricked into creating
 empty files/directories on host

:Due to the low severity of this CVE, this security patch is being released with
:NO embargo period.
:
:[ Summary ]
:
:runc 1.1.13 and earlier as well as 1.2.0-rc2 and earlier can be tricked into
:creating empty files or directories in arbitrary locations in the host
:filesystem by sharing a volume between two containers and exploiting a race
:with os.MkdirAll. While this can be used to create empty files, existing
:files **will not** be truncated.
:
:An attacker must have the ability to start containers using some kind of custom
:volume configuration. Containers using user namespaces are still affected, but
:the scope of places an attacker can create inodes can be significantly reduced.
:Sufficiently strict LSM policies (SELinux/Apparmor) can also in principle block
:this attack -- we suspect the industry standard SELinux policy may restrict
:this attack's scope but the exact scope of protection hasn't been analysed.
:
:This is exploitable using runc directly as well as through Docker and
:Kubernetes.
:
:The CVSS score for this vulnerability is
:CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:L/A:N (Low severity, 3.6).

While I suspect there's enough mitigating factors for this vuln to
truly be low severity, proving that arbitrary file creation isn't
super-severe (let alone risky) can be hard.  I'm thinking of the Palo
Alto mess CVE-2024-3400 from a few months back, where such behavior
was thought to not be as big of a deal...  until it was.

What is the security impact of creating an empty /etc/nologin?  Or an
empty override file that might cause some systemd service (e.g. some
firewall setup) to not to run upon reboot/restart?  Have there been OS
assessments about where empty arbitrarily-named files can do the most
disruption?  Maybe a title like:

     touch considered harmful: How the presence of a file can change
     OS and application behavior and make your head hurt

Sure, there's predictable tmp, and the impact of removing/overwriting
files is pretty obvious.  But, this runc writeup reminded me that the
impact of arbirary file creation often gets short-changed.


Take FWIW...
-Mike

-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"I buy expensive suits. They just look cheap on me."          -Warren Buffett

