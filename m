X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1843" "Tuesday" "25" "October" "2016" "12:51:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161025165108.37FFE73C0DA@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE-2016-7545 -- SELinux sandbox escape - Firejail is CVE-2016-9016" nil nil nil "10" "2016102516:51:08" "[oss-security] Re: CVE-2016-7545 -- SELinux sandbox escape - Firejail is CVE-2016-9016" (number mark "U       cve-assign@m Oct 25   43/1843  " thread-indent "\"[oss-security] Re: CVE-2016-7545 -- SELinux sandbox escape - Firejail is CVE-2016-9016\"\n") "<1477380542.4640.11.camel@debian.org>" ("<1477380542.4640.11.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4053 invoked by uid 550); 25 Oct 2016 16:51:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4031 invoked from network); 25 Oct 2016 16:51:20 -0000
From: cve-assign@mitre.org
To: corsac@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, up201407890@alunos.dcc.fc.up.pt, netblue30@yahoo.com, team@security.debian.org
In-Reply-To: <1477380542.4640.11.camel@debian.org>
Message-Id: <20161025165108.37FFE73C0DA@smtpvmsrv1.mitre.org>
Date: Tue, 25 Oct 2016 12:51:08 -0400 (EDT)
Subject: [oss-security] Re: CVE-2016-7545 -- SELinux sandbox escape - Firejail is CVE-2016-9016

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> On Sun, 2016-09-25 at 13:49 +0200, up201407890@alunos.dcc.fc.up.pt wrote:
>> When executing a program via the SELinux sandbox, the nonpriv session
>> can escape to the parent session by using the TIOCSTI ioctl to push
>> characters into the terminal's input buffer, allowing an attacker to
>> escape the sandbox.

> it seems that firejail was affected by the same vulnerability, which
> was fixed in 0.9.44 with
> https://github.com/netblue30/firejail/commit/46dc2b34f1fbbc4597b4ff9f6a3cb28b2d500d1b
> 
> The commit log reuses the CVE-2016-7545 number, but I guess a new one
> should be assigned since they don't share the same codebase?

The ID for the similar Firejail vulnerability is CVE-2016-9016.
An additional reference is:

  https://firejail.wordpress.com/download-2/release-notes/

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYD4z3AAoJEHb/MwWLVhi24ewQAIgsLJF0ToaKXKahu7nzwYxk
R4AnRxXuzA0eLbvH+jqGQxE0NbIlf394O7IwGv6gDLpwAvN0KbgtyEMqrBZ270+L
UOzydUS4i9Ntlp6e2k/1CLr7Jihphjo60qclGgJEzq187qALfmFyi7H56NWpjBLX
1JZs7vL3po8ehmEOweb+UdstVrene2UcvX9TZRNGP4GOO1XJ7/VrnvhDBxCNpONR
0M2F98Jb9XY/jx4Agur64xRrvE3GiuY4S5GC+JOTBcbCXc7l2o+rOXOOEbuOYkxP
5znGPpya92D6bjDe1LNZ+SntH73vEGJXUHRvqLrZAdRZ4YQCPAxvI87AHNh7e2o8
a5QayZCYd0QVvHX2fa2lzDOQ2MV8adWj/IU1C6TRNThEQQgZzMvvqtl0nOcdetYh
blQo8n4WqdRRK3SeBB2z8lnzF3b5H79/PJCUSCI35gT39kw47GetwdtzrEODrl4E
LxRsl8XsmamWA0qq8DhWg7YlGMSYgx7on8gTyh73lN87cSziq26OnZEuAK1uQbcI
Ag0OllszMHJMIBY7CxgxAfNcEc91LPwmcNXSSybxJ0QJcFzSnKgWgQqvYLYOcfH7
olobW7zvnXr9rpYODd9P+EzXBWbvRKzp8tMUljb20jC8DZ49slCwkW+TzfloG6Q3
kvg8DcdSvh+XK8FzieDu
=I0E8
-----END PGP SIGNATURE-----
