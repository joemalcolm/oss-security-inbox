X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1561" "Wednesday" "19" "October" "2016" "17:32:33" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161019213233.2E9CA52E00A@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue found in OpenSSH" nil nil nil "10" "2016101921:32:33" "[oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue found in OpenSSH" (number mark "U       cve-assign@m Oct 19   37/1561  " thread-indent "\"[oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue found in OpenSSH\"\n") "<88E4FB7D4EC3E04EAA5DAFEB85C81D4232B14140@EX02.corp.qihoo.net>" ("<88E4FB7D4EC3E04EAA5DAFEB85C81D4232B14140@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23817 invoked by uid 550); 19 Oct 2016 21:32:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23798 invoked from network); 19 Oct 2016 21:32:45 -0000
From: cve-assign@mitre.org
To: shilei-c@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <88E4FB7D4EC3E04EAA5DAFEB85C81D4232B14140@EX02.corp.qihoo.net>
Message-Id: <20161019213233.2E9CA52E00A@smtpvbsrv1.mitre.org>
Date: Wed, 19 Oct 2016 17:32:33 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue found in OpenSSH

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The OpenSSH has a memory exhaustion bug in key exchange process. An
> unauthenticated peer could repeat the KEXINIT and cause allocation of
> up to 384MB(not 128MB that the official said). In the default case, an
> attacker can build 100 such connections, which will consume 38400 MB
> of memory on the server.

> http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/ssh/kex.c?rev=1.127&content-type=text/x-cvsweb-markup

>> Unregister the KEXINIT handler after message has been received.

Use CVE-2016-8858.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYB+W7AAoJEHb/MwWLVhi2PK0QALEeBA+iTzAL1ZrgIoiDJsYm
xvsg61m19gz/Wf9sxXLPDd13lhRJhEIs/fBfdngIBaXRTi5dYI7HAsVGB2gnWMsj
fqUZSfmcYri2VunzYWOX8J81OtBxUR670SOA757g7ktd+6MEq2QQNb1vJSOprapU
1MqZkz9ZD/c/22pAC/SNCIeT4mZpCNxHZwVCPrELIKKnsp9cYQf0xvRBYFnxulre
RplzO2iq6GDOk4etpA0YyOzOGA6iZt9+O13+ROaILYUIwUF7DseQKNpB2F82An6l
qCXYE7d0ZMHDRyPZPmKf72VVM92N+KDoRG/8LlFcn4Yso2o7gHmv5UCRUuFVjD15
3ZDwYbCB+qtYQ5aLm561Jp1+2rTGg+p1G3bvjRAILp4ZFdsyzDgS02r1epg9TBfx
GU9QN0GJyjNHFR16KJgo5JtPU0lHk+g68JtsmHzXRZemsQ53ujUK/4gv9lB1feuA
Nw0ABpuznYOgxN/FuEi1k7SasAZH1KRSiUV/UIiAWLayXE/6q9MMYWhzGPjk317c
dX+ceeov1GfjsZOfnqiK8bzZfrfPm0qBhOZ1mAJsOiSdQjU4nzYJVewTmflrNLnR
a+0MHCdOp0uOVoG3jLUOc50mRePLscv80DiiuX31ukO1SacGGNEMyAE/N4eqHd57
ByjtYBRhe+CxotowFPtd
=Op5b
-----END PGP SIGNATURE-----
