X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1620" "Saturday" "8" "October" "2016" "11:35:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161008153546.5A92852E4A0@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE request: invalid memory accesses parsing object files in libgit2" nil nil nil "10" "2016100815:35:46" "[oss-security] Re: CVE request: invalid memory accesses parsing object files in libgit2" (number mark "U       cve-assign@m Oct  8   49/1620  " thread-indent "\"[oss-security] Re: CVE request: invalid memory accesses parsing object files in libgit2\"\n") "<CACn5sdQhDOBYjZ86=9G_tE3n_MZZ=az179T67ztn0pZvUHeiKw@mail.gmail.com>" ("<CACn5sdQhDOBYjZ86=9G_tE3n_MZZ=az179T67ztn0pZvUHeiKw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26131 invoked by uid 550); 8 Oct 2016 15:35:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26111 invoked from network); 8 Oct 2016 15:35:57 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQhDOBYjZ86=9G_tE3n_MZZ=az179T67ztn0pZvUHeiKw@mail.gmail.com>
Message-Id: <20161008153546.5A92852E4A0@smtpvbsrv1.mitre.org>
Date: Sat,  8 Oct 2016 11:35:46 -0400 (EDT)
Subject: [oss-security] Re: CVE request: invalid memory accesses parsing object files in libgit2

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We recently reported two invalid memory accesses in the last revision
> of libgit2

> The developers are preparing a patch to harden object parsing in libgit2 here:
> 
> https://github.com/libgit2/libgit2/pull/3956


> * Read out-of-bounds in git_oid_nfmt:
> https://github.com/libgit2/libgit2/issues/3936

>> AddressSanitizer: heap-buffer-overflow
>> READ of size 1

Use CVE-2016-8568.


> * DoS using a null pointer dereference in git_commit_message:
> https://github.com/libgit2/libgit2/issues/3937

>> AddressSanitizer: SEGV on unknown address

Use CVE-2016-8569.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX+RBBAAoJEHb/MwWLVhi2pIsP/3r+mK3MErKPVn3pSw9s7j68
2hvKXTV5xyzdCrM85se+AVo2KszYtmIVpfojhUxTGh1vJ10ZCNprPwQQzMiqMKoU
DN9OOECQITgmMeSirRVCN9mfbVLhHP0mnrJn8E07iFpi+zjwBpIcXEVdilZPXSpT
GvmhnFVhQYxskJz9BxxT0euow5GNMVdLXz8uMyCIi7YdxZxHPmMFYnHtZutnr6Bp
2QTkbarZA1qaTd6xrf3VKVJNXJbs3x8+MNyMMEss26L+3nZZUM5KOZOzsHmXrwIY
tiA6J6jB3sWn6X4LopdXswQyidjYmdahv8QyuX6yBPJwntmswHpkCBMBNhrXGMqA
+KoR7dVMkh48KH+KMgB2QyeQ7nYasCSZ5J/OWnm9TiMgeaw+39dKcc/9gRmgxwfV
KH6aZWHT11XUGfRK0cXEOKaO3S5+SWXzfPg2AELEkqA+v0qZO0h1ax1dUcYgCuWp
8XRTyEXZzWhQOG3oP8KK74liddEUoJBXa/GmBAr9iGqt0PzJAn2/gLpqP0zW1R9C
8YboSai6v51uQuGJutlNFeor5PY0gDVaEzbtRdXL42U7RkyutwEraDcmfoWsi/lL
lqRoltnxseYju9ztrQF9B88wE1LSa6/SbuZx+3HZJGKOGPIQVvcqnrcUVsg/P1V8
pfrxWeIOGJG7GMSeCynU
=i1n/
-----END PGP SIGNATURE-----
