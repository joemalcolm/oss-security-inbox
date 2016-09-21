X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1365" "Wednesday" "21" "September" "2016" "12:31:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160921163126.DAB8F6C4A26@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: libav: divide-by-zero in sbr_make_f_master (aacsbr.c)" nil nil nil "9" "2016092116:31:26" "[oss-security] Re: libav: divide-by-zero in sbr_make_f_master (aacsbr.c)" (number mark "U       cve-assign@m Sep 21   36/1365  " thread-indent "\"[oss-security] Re: libav: divide-by-zero in sbr_make_f_master (aacsbr.c)\"\n") "<1512070.Ry1Vm5FAnA@willoughby>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11931 invoked by uid 550); 21 Sep 2016 16:31:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11905 invoked from network); 21 Sep 2016 16:31:38 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1512070.Ry1Vm5FAnA@willoughby>
Message-Id: <20160921163126.DAB8F6C4A26@smtpvmsrv1.mitre.org>
Date: Wed, 21 Sep 2016 12:31:26 -0400 (EDT)
Subject: [oss-security] Re: libav: divide-by-zero in sbr_make_f_master (aacsbr.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/21/libav-divide-by-zero-in-sbr_make_f_master-aacsbr-c/
> 
> A fuzzing with an mp3 file as input discovered a divide-by-zero in 
> sbr_make_f_master.
> 
> AddressSanitizer: FPE on unknown address
> 
> sbr_make_f_master libav-11.7/libavcodec/aacsbr.c:338:57

Use CVE-2016-7499.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX4rUMAAoJEHb/MwWLVhi2TS4QALQBNhZyy3tqN5IIDyejpudo
xKtiPEOe7lHzgMTm9I25aAJcUHZGGdHcoY3rgdQtLZTdME8OejjOrHg0znNmmkDZ
fjwbFxuVo9bwJ8Wa7X4YkHvX55hDmvtlwCyJjl31NmykEjx0hVpaiLGln6zLscX8
YRBbJwkYsm0EWgNC1FIU3DfhGv7DG6GLGUjhFdqumik/gyhaHGd4FtYLm5AMFI9X
bMyr9joOSUm5RobISMRfmNkye9UTtKFqNUxrLUMHGq4evUys9bsW1oY1Brfv0JxD
M2LQoB7nWNE8hM5lQUVfVHxp1ztSoDqOmtD9BjN2eI4f2xhJgPfPHc9SrgCjvrty
p/zAmLiLCI3bjNOMxkBruX5V/QFFUsJfN9UTRrU6sBsk2ysCsUDN+pXUfacOMuhj
XBwMp3pRpoCI+JDu6eNaCBT3qAhJTSL53euHavNQvyCRdFI7MJ9JbQFZ0UQFfOUO
OlBtAsQO6iACBo+BqlzO0rpDEYhfrgW5jqo+teGSO3YHuEAUUwRzxGuLSoVBpHgn
fw450fVgijaxG2RzUXB7X9PqNqyIouWrK3GlOUXgwPiVLwBuhnoHfzllqAPSOtqI
vn7WZjnZkslWfjKCqzvb4YzSWWbzOxppmMha59K3/KRUU5E5kc2lZe9izeM4/WVN
GkH5FjtTGwj8lJCz2jDd
=BEMY
-----END PGP SIGNATURE-----
