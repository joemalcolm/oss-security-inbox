X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1920" "Saturday" "5" "November" "2016" "11:59:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<3355e013913e410fb611ac9aa61e8d5f@imshyb02.MITRE.ORG>" "47" "[oss-security] Re: CVE request: linux kernel - local DoS with cgroup offline code" nil nil nil "11" "2016110515:59:56" "[oss-security] Re: CVE request: linux kernel - local DoS with cgroup offline code" (number mark "U       cve-assign@m Nov  5   47/1920  " thread-indent "\"[oss-security] Re: CVE request: linux kernel - local DoS with cgroup offline code\"\n") "<1679169912.3935010.1478283449963.JavaMail.zimbra@redhat.com>" ("<1679169912.3935010.1478283449963.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5362 invoked by uid 550); 5 Nov 2016 16:00:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5341 invoked from network); 5 Nov 2016 16:00:08 -0000
From: <cve-assign@mitre.org>
To: <caiqian@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1679169912.3935010.1478283449963.JavaMail.zimbra@redhat.com>
Message-ID: <3355e013913e410fb611ac9aa61e8d5f@imshyb02.MITRE.ORG>
Date: Sat, 5 Nov 2016 11:59:56 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: linux kernel - local DoS with cgroup offline code

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A malicious user who can run an arbitrary image with a non-privileged user
> in a Container-as-a-service cloud environment could use the exploit to
> deadlock the container nodes to deny the service for other users.

> container> $ trinity -D --disable-fds=memfd --disable-fds=timerfd \
>              --disable-fds=pipes --disable-fds=testfile \
>              --disable-fds=sockets --disable-fds=perf \
>              --disable-fds=epoll --disable-fds=eventfd \
>              --disable-fds=drm

> # systemctl status docker
> <hang...>

> task kworker/45:4:146035 blocked for more than 120 seconds.

> "cgroup is trying to offline a cpuset css, which
> takes place under cgroup_mutex. The offlining ends up trying to drain
> active usages of a sysctl table which apparently is not happening." There is
> no fix at this time as far as I can tell.

Use CVE-2016-9191.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYHgGZAAoJEHb/MwWLVhi2lQsP/1q0DTwdkQ5NOL3xfeD48Lye
JiAOHPKs+X9iAfnpB/3rNiq6RvBPLXr12LPfKGcxiBasPf5mAq4sa1xzNhcXGerD
678Ch0m+sMKjTfLLTusSeu2WFDKG07Fs7yoiQs4juIfbjJ178nh7RJDz/V7lao0+
pBv1SUYrIgrZ5dRNNzUp380eOdVNmi5fWPiHvXxIR6PwXZsCu5GZNjowMAIOFgBB
XedYPtBhG+lbbrvQm9kyj/IoSsw8cKfyhCcDy+T5JE4UcOYWrYpixmgwNZTUXn0l
BUM8uMWeI2DgMEFDjzjdVL4KY3ktkcXUTbBh7EGYg5zpDiMm3oNbqsS1kv+m+/BQ
/BHikPAkC+x2W35fzWp/lIJZojBUkkeDCNHU+tc+lVBVVZpo+zEq6puv61GwSTEE
G2GgnHEeA33XW3AixqFpe2rGY9PIKw92kSIRfAH1aPg1i77Y34m1uqrpJ+HifuK/
qxowp64tKzwiDgzJqZmTdEYX22EVWqhb1DbukY1cgVM9BkEuI0+ZwrVeAmvy7k/7
Scp2LmwwN2AdLRagOhzKUSwORKeg6xd5gHDm5F9rhI/GhX/+soNMXKcYKBbq0jDh
+jBAl2oGnhELCnf026nVtrqmqMLS9SquwBXmtHTjdUV88co2NqstBR+oAlAeKrnd
W1Lyt8V0wHy00wNFmEJs
=jJL2
-----END PGP SIGNATURE-----
