X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1211" "Wednesday" "30" "March" "2016" "19:20:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160330232023.E7D568BC026@smtpvmsrv1.mitre.org>" "32" "[oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files" nil nil nil "3" "2016033023:20:23" "[oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files" (number mark "U       cve-assign@m Mar 30   32/1211  " thread-indent "\"[oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files\"\n") "<CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>" ("<CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30133 invoked by uid 550); 30 Mar 2016 23:20:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30113 invoked from network); 30 Mar 2016 23:20:35 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdTHZPTK7+u1ANCU-T-czJ_vT_-VQp8CisHreKKPAPpazw@mail.gmail.com>
Message-Id: <20160330232023.E7D568BC026@smtpvmsrv1.mitre.org>
Date: Wed, 30 Mar 2016 19:20:23 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Heap overflow in VLC 2.1.6 processing wav files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> https://bugs.launchpad.net/bugs/1533633

> It is evident that the memcpy operation has an abnormally large size
> parameter (4290773038).

Use CVE-2016-3941.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW/F7oAAoJEL54rhJi8gl5/fsP/0qZaXHxydl6ZJsxaqdac/Dy
fWVmg594wITgIvtZFpLAZ5pQzGgskboaHJEBcTYkxgQIonJska7QVhNrHSusf2Q5
ko1T1wkyioQu/en7CFTUBCr2OA5kOiAsSh4Z07zqjJanQHjQ9qvxwjcl+IzhNjJ7
2ORdJA6NgfseN1m5G7WCos9HqiU+Z7Yah4g9UWkwInBrhU/ehVKAjcLUzH+wFPhQ
SUx/IQ3hL6fSpY3sAJT2PPhm47Iswt3I6oXmVggMPhJ8rAJmlh51YJhuaPmMKPEI
hj6X9byGBDhHMEosZzGptDK54Q9nd/CLSjGfW7W0Wzd5o5YOZKzFNgtHhFueCaVv
CS7pqcmQRzzr6dRiAizjdss7EqJOLmnTGr42ZPQfH5uRg93N1KQyJcmQajkp2YpI
2yy5hb8wBMfUek/dhCq+VGgwon37pQ46pR++uH3SeYLsmw9EopAKusWlMBqf8CF5
/2BOHGey+MOKxnGBlGOzMQFseFeOfz1P0DgGvHcn3lOO/YYzmz8Jy94BsabeO58J
/lnKvbw5rg7/8xYam8x3YKlXrxE1kZvkhr0/FGWL4TvlnRAQg8lNdfaJ+UwJewQ8
DsJP8RzdLT7Mrwk+WInx3lCN4Gz44F27JvAVxv8KaN/M9ArDPLClUyCfDBMZCq4l
u70+kK2KhEaAcjYB4cgR
=SBqA
-----END PGP SIGNATURE-----
