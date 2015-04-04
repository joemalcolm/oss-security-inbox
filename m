X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2647" "Saturday" "4" "April" "2015" "14:54:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150404185434.6F84B6C0048@smtpvmsrv1.mitre.org>" "59" "[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts" nil nil nil "4" "2015040418:54:34" "[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts" (number mark "        cve-assign@m Apr  4   59/2647  " thread-indent "\"[oss-security] Re: Linux namespaces: It is possible to escape from bind mounts\"\n") "<20150403105802.GA21110@pc.thejh.net>" ("<20150403105802.GA21110@pc.thejh.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19889 invoked by uid 550); 4 Apr 2015 18:54:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19841 invoked from network); 4 Apr 2015 18:54:46 -0000
In-Reply-To: <20150403105802.GA21110@pc.thejh.net>
Message-Id: <20150404185434.6F84B6C0048@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  4 Apr 2015 14:54:34 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux namespaces: It is possible to escape from bind mounts
To: jann@thejh.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://permalink.gmane.org/gmane.linux.kernel.containers/29173
> http://permalink.gmane.org/gmane.linux.kernel.containers/29177

> Containers on Linux normally use bind mounts to restrict how much
> of the filesystem is visible for processes inside the container.
> However, if an attacker can gain capabilities within such a
> container or can create another user and mount namespace within
> the existing container, he can do something similar to a
> double-chroot attack to break out of the bind mount and gain
> access to the full filesystem to which the bind mount refers:
> 
> Create folders /A, /A/B, /C, /D inside the namespace.
> Bind-mount the /A inside the namespace to /D.
> Let a process chdir to /D/B.
> Move /D/B over into /C.
> The process which chdir'ed to /D/B is now in /C/B, but at the
> same time it is in a bind mount with /D as root. It can then
> traverse upwards, past what looks like / inside the namespace.

Our understanding so far is that the underlying problem is that the
original design didn't fully consider the ability of an attacker to
rename. Because of this, the rename implementation has been changed so
that it detects a violation of the intended security properties and
puts a countermeasure in place. This has been done in the fs/dcache.c
__d_move function. There is no commit available yet at

  http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/fs/dcache.c

Use CVE-2015-2925 for this issue.

As far as we can tell, the patches don't address a separate scenario
in which a ".." attack can occur but the underlying problem is
something other than rename handling. So, we don't think a second CVE
ID is needed.

(For purposes of CVE, a set of "possible to escape from bind mounts"
discoveries could have multiple IDs if the root cause of one issue
were the acceptability of the ".." syntax in a certain context, and
the root cause of another issue were unrelated to this.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVIDIRAAoJEKllVAevmvmsw7YIAJjYr1bQr1YxTISGoFlx40Z3
NE6Y6icrOwqwj2SBhDx2U7i/t5PSIz9bqAL+dsHRKgYumYr5wYHnwBofqkhOsw0u
bXhh3R+5xWVHHhcYgAkIUPr7L4D+jN8qp9IpvM7Z4wpgXwdr2HIpKE8sKdKwvqLR
oaUkqrvZi5QEcW8sWONIi65FJmG2l9YcHQ5wpM7E3wN7HIoFK005er40882mMimC
zJpLiBt1/SMqplGLUCFaMQ64SnC90EBJE3r8rGPWBaDGaS8mW6yRV5h++2t3K4dM
axFwwkOrJcpcrbjGeBowte44XJ/1W2wgq9t/6NXFzuPxmE+JyTa/tv5xF795lLI=
=vO4b
-----END PGP SIGNATURE-----
