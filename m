X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2608" "Saturday" "28" "January" "2017" "18:14:31" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<810345fbbe3d4999b8f707cf17113204@imshyb01.MITRE.ORG>" "69" "[oss-security] Re: wavpack: multiple out of bounds memory reads" nil nil nil "1" "2017012823:14:31" "[oss-security] Re: wavpack: multiple out of bounds memory reads" (number mark "U       cve-assign@m Jan 28   69/2608  " thread-indent "\"[oss-security] Re: wavpack: multiple out of bounds memory reads\"\n") "<20170123193803.4abc7401@pc1>" ("<20170123193803.4abc7401@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30408 invoked by uid 550); 28 Jan 2017 23:14:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30373 invoked from network); 28 Jan 2017 23:14:43 -0000
From: <cve-assign@mitre.org>
To: <hanno@hboeck.de>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20170123193803.4abc7401@pc1>
Message-ID: <810345fbbe3d4999b8f707cf17113204@imshyb01.MITRE.ORG>
Date: Sat, 28 Jan 2017 18:14:31 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: wavpack: multiple out of bounds memory reads

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> All of them have been fixed with a single commit:
> https://github.com/dbry/WavPack/commit/4bc05fc490b66ef2d45b1de26abf1455b486b0dc

> [] global buffer overread in read_code / read_words.c
> https://sourceforge.net/p/wavpack/mailman/message/35557889/
>> read_code ... wavpack-5.0.0/src/read_words.c:576:14

Use CVE-2016-10169.


> [] heap out of bounds read in WriteCaffHeader / caff.c
> https://sourceforge.net/p/wavpack/mailman/message/35561921/
>> WriteCaffHeader ... wavpack-5.0.0/cli/caff.c:699:61

Use CVE-2016-10170.


> [] heap out of bounds read in unreorder_channels / wvunpack.c
> https://sourceforge.net/p/wavpack/mailman/message/35561939/
>> unreorder_channels ... wavpack-5.0.0/cli/wvunpack.c:2142:27

Use CVE-2016-10171.


> [] heap oob read in read_new_config_info / open_utils.c
> https://sourceforge.net/p/wavpack/mailman/message/35561951/
>> read_new_config_info ... wavpack-5.0.0/src/open_utils.c:573:45

Use CVE-2016-10172.


Note that http://openwall.com/lists/oss-security/2017/01/23/4 had an
incorrect URL for the open_utils.c issue. (It was a duplicate of the
previous URL.) The correct URL is in the quoted text above. Also, the
vendor response of "I am pretty confident that these particular
failures are not exploitable, although I am not an expert in that
area" is on the
https://sourceforge.net/p/wavpack/mailman/message/35618215/ page.

We are assigning the four CVE IDs to the individual reports even
though it is possible that
4bc05fc490b66ef2d45b1de26abf1455b486b0dc implies that there were
only three independent issues.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYjSVxAAoJEHb/MwWLVhi22ScP/04u+ZLeBYlmyv36NiriDF3a
wGHD/tLrOidlT7BvyW6iFgJO2rJiO1/4YzMT6/w6JFSwhioKWkJQMtOnMu2gp+ZY
l7M0qdTHduEE3oNt5mxwXy7yLraJKjz6DRy7ZlFJcp6wyO48lrWi08Uf9EG0d+mD
vZUXy0wgMeieGsDF3grSfSWkh3djmIbvygo3dpucFce/oexcfED/3R6WhxGPi3ix
U1fc6XB4rKmsSmTxbmOC+XYE7elOgBYhElvZ0RiJLhBVc9fRil91VfUQqSGZcbQa
dYxdV+dpFEkLuQBYWRiWshiN46RO1TdvWr8oLAbwjGLn8roOc1bDN2pQsB9DS8uf
BOLYQ6A8DVuvtGRqYf1QyP53TgHg90BDjYMz7jUt9nkl+FozkMv5/Ncj/Luy9Jj6
AHb/n644Q1dtLZBUiP/j4v1otHYZz4ixZamahRL+SmlRAaj9hDW+YHDUVf1syIpS
KsjWkeAgi5gBZdC7xpoiyJ3NQddwKCVWbGtYR+mXetnb1uvOCW7MGnI8vt9yLSF7
4mX8xTA1SBrJNfm2SjjhKLhM/Z3XvLqmHdqoMQSDlj1Pv+KUJmjr9PsXDO4aWV7h
HaM34KzSfvBFmwpBycig3YU+sIw8SXRYwvKVgJoom2ZUsq5nSpE8QDoctixr2JEe
Hz0uj8YntzJ26TxAskiL
=MiV2
-----END PGP SIGNATURE-----
