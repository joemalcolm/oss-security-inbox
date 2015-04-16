X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1249" "Thursday" "16" "April" "2015" "02:49:44" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416064944.C8A836C000C@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: CVE request for buffer overflow in ppp" nil nil nil "4" "2015041606:49:44" "[oss-security] Re: CVE request for buffer overflow in ppp" (number mark "        cve-assign@m Apr 16   33/1249  " thread-indent "\"[oss-security] Re: CVE request for buffer overflow in ppp\"\n") "<20150413111123.GU1846@frisco.mine.nu>" ("<20150413111123.GU1846@frisco.mine.nu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3784 invoked by uid 550); 16 Apr 2015 06:49:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3759 invoked from network); 16 Apr 2015 06:49:56 -0000
In-Reply-To: <20150413111123.GU1846@frisco.mine.nu>
Message-Id: <20150416064944.C8A836C000C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 02:49:44 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for buffer overflow in ppp
To: seb@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The process id is used in rc_mksid to generate a pseudo-unique string,
> assuming that the hex representation of the pid will be at most 4
> characters (FFFF). __sprintf_chk(), used when compiling with
> optimization levels greater than 0 and FORTIFY_SOURCE, detects the
> buffer overflow and makes pppd crash.
> 
> the bug occurs if pppd's pid is greater than 65535. The number of
> running processes is irrelevant.
> 
> https://bugs.debian.org/782450
> https://bugs.launchpad.net/ubuntu/+source/ppp/+bug/291743

Use CVE-2015-3310.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVL1slAAoJEKllVAevmvms9z4IAKjhNGyaWSeC2o/UBkbq8Obp
92J/ILNwc14EUrowfVbPbK5RfHnja+p4Me4Ha12+k4yxKuD/UTY5JH7CoD/WyK5k
CdQRjhe0S0BwookFCpTK4HUXSx8qgX/o6AuKraCCg3DdS1a2eytZezbHhX50rGkP
47FWUnOMfOKAUtwRcRyo0WwilJ9Ip6LDmfRgJ+PB91/wGQr4XwY/Hf0ELCXTUx5N
ua/qrnJ1krUem4BWxX1J9dBVMB+DoM0GEkR6cMmGP70sI+EaCJvP+XuNdZe0iBWp
MRo0+WhS2R6WEJmAQi+35T4QDEvfc12cbayK26KJTP70Y6iP3FdmGTeAoaPOJDc=
=58D2
-----END PGP SIGNATURE-----
