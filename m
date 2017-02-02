X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1402" "Thursday" "2" "February" "2017" "00:52:34" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<3c8af77457d54e9181fa84bb9646ce40@imshyb01.MITRE.ORG>" "43" "[oss-security] Re: CVE request: multiples vulnerabilities in libplist" nil nil nil "2" "2017020205:52:34" "[oss-security] Re: CVE request: multiples vulnerabilities in libplist" (number mark "U       cve-assign@m Feb  2   43/1402  " thread-indent "\"[oss-security] Re: CVE request: multiples vulnerabilities in libplist\"\n") "<Kbor4aA--3-0@keemail.me>" ("<Kbor4aA--3-0@keemail.me>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3899 invoked by uid 550); 2 Feb 2017 05:52:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3863 invoked from network); 2 Feb 2017 05:52:46 -0000
From: <cve-assign@mitre.org>
To: <nikola.sc@keemail.me>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <Kbor4aA--3-0@keemail.me>
Message-ID: <3c8af77457d54e9181fa84bb9646ce40@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 00:52:34 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: multiples vulnerabilities in libplist

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] heap-buffer-overflow in parse_dict_node
> https://github.com/libimobiledevice/libplist/issues/89

Use CVE-2017-5834.


> [] memory allocation error
> https://github.com/libimobiledevice/libplist/issues/88

Use CVE-2017-5835.


> [] issue in plist_free_data plist.c:185
> https://github.com/libimobiledevice/libplist/issues/86

Use CVE-2017-5836.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYksbsAAoJEHb/MwWLVhi2rGUQAKodAn16yldAnWkPkpBE5pEr
r1/v83CCzMhnlA4UyBjpPXi4hXuUJzW8epmMCPNpgGyvc/4QV4SYOM9pymd+QoLk
iXnWolB4tKszk3vquL81P871rXzkWHNNIybWpKsPCDRXjoAKJxicma3Rmk8otBWd
fzH8gBUQtShmMojeewPtGZWTubX15sCfXGp7YHczmcSj3k+XdsYf9rfYI5BFaue9
TFypQYqnkCzpkDf/aB7cA3p4kmHieRtkhceY7L2WuP+/kOQ24ABt8y4AJdspA/uH
ufVUgJwWe5/EVJjQDMJCIip5vfJMCTlg1ngz23NcaEhSRQl26zg9nqpDJpLrY+ck
ja22LUfVIbFuZLsj94rl65bMY4sGNXb0VkNSeBIg/HP9ZfiFZPY02uMI0IdIy+6t
T4/HnAUWxdSky9GjlCPl/8kPU5o9O7DRZTiYXbYnYKL/0jKXIHNpJIJVUCq3l8Ty
nH9OwlVBCnq6pcQCIAcwsf5uhgzusjItF2+ufAHL9GeGBN5DtGQP1aAt7b6qEFeC
6ociWZT9megQgGxI/QC+yty75BWszxQw7muqYaEKHUmI3FS/Mu9k53LyM+j+jukd
AIaieeDbNvKzNTM77ECYX5BirD7S8ESb56gyLydt+x2LbtkW9W2Z/6gd8gLbAYEu
ulBMECeaiMBpWZWXOfpp
=Kyb9
-----END PGP SIGNATURE-----
