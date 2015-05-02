X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1255" "Saturday" "2" "May" "2015" "11:28:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150502152817.6B38433204C@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" nil nil nil "5" "2015050215:28:17" "[oss-security] Re: CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" (number mark "        cve-assign@m May  2   37/1255  " thread-indent "\"[oss-security] Re: CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam\"\n") "<CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>" ("<CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20376 invoked by uid 550); 2 May 2015 15:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20358 invoked from network); 2 May 2015 15:28:30 -0000
In-Reply-To: <CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>
Message-Id: <20150502152817.6B38433204C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  2 May 2015 11:28:17 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam
To: hotdog3645@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/torvalds/linux/commit/a134f083e79fb4c3d0a925691e732c56911b4326

> ... networking fixes ...
> 6) Unhash ping sockets properly.

> a use-after-free bug which can lead to kernel arbitrary execution in
> Linux kernel

> to trigger the bug you need direct access to a ping socket

> For linux PC, the normal user does not have the privilege to create a
> icmp(ping) socket

> we've successfully seen the potential that we can take advantage of
> this bug to achieve privilege escalation (root) on android

Use CVE-2015-3636.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVROvqAAoJEKllVAevmvmsyW4H/A4+sd5as/co6gUwbk8Nk0K8
+zA0YuvAVzHWaCPgcZixhPUJRtxT//cUHQaMBVSHCXECR6cdlvCWiD8z1AzsI3wX
ECaMt7jJ1pdjXnuOfr8Fb4Qhu3JYfC4pVFspVOGb1Uk92XeICWBx7VdueRS1uisZ
rpfgtgrsXiB4k5gRhP5M6pDzQzE1jlq1nA6Bqdq794YbrKwiU/F48h8uapKktZV2
acw6dsEgnPd2fnQEWWQ2KkS535DbFwbql/E9Zbknk+h+L6RGTiD69Qw6HgosCb49
ltzaJMKdF+KBGCJW4NLQbEH7hwzIvV4SRsUoKHv7TQM81OutzrEOo1UOSvkR+Ok=
=FVXv
-----END PGP SIGNATURE-----
