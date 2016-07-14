X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2286" "Thursday" "14" "July" "2016" "14:09:43" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160714180943.CEF62B2E017@smtpvbsrv1.mitre.org>" "54" "[oss-security] Re: CVE Requests: Information exposure caused by ecryptfs-setup-swap failures" nil nil nil "7" "2016071418:09:43" "[oss-security] Re: CVE Requests: Information exposure caused by ecryptfs-setup-swap failures" (number mark "U       cve-assign@m Jul 14   54/2286  " thread-indent "\"[oss-security] Re: CVE Requests: Information exposure caused by ecryptfs-setup-swap failures\"\n") "<5785E1FC.8090907@canonical.com>" ("<5785E1FC.8090907@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21676 invoked by uid 550); 14 Jul 2016 18:09:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21654 invoked from network); 14 Jul 2016 18:09:56 -0000
From: cve-assign@mitre.org
To: tyhicks@canonical.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5785E1FC.8090907@canonical.com>
Message-Id: <20160714180943.CEF62B2E017@smtpvbsrv1.mitre.org>
Date: Thu, 14 Jul 2016 14:09:43 -0400 (EDT)
Subject: [oss-security] Re: CVE Requests: Information exposure caused by ecryptfs-setup-swap failures

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> ecryptfs-setup-swap script that is provided by the upstream
> ecryptfs-utils project. The script can be used to convert an existing,
> unencrypted swap partition into a swap partition that is encrypted.
> System admins may use this tool and the Ubuntu installer uses it when
> the user opts into home directory encryption.
> 
> On systems using systemd 211 or newer and GPT partitioning, the
> unencrypted swap partition was being automatically activated during boot
> and the encrypted swap was not used. This was due to ecryptfs-setup-swap
> not marking the swap partition as "no-auto", as defined by the
> Discoverable Partitions Spec

> ecryptfs-setup-swap improperly configures encrypted swap when using GPT
> partitioning
> Bug: https://launchpad.net/bugs/1447282
> Fix: https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/857
> (Please ignore the inaccurate commit message for commit 857)

Use CVE-2015-8946.


> ecryptfs-setup-swap improperly configures encrypted swap when using GPT
> partitioning on a NVMe or MMC drive. This bug is due to an incomplete
> fix for bug 1447282.
> Bug: https://launchpad.net/bugs/1597154
> Fix: https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882

Use CVE-2016-6224.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXh9TcAAoJEHb/MwWLVhi2VUAP/RibsMY5eaJJQfehovvPDDZL
N4qZ33Rn347WoQnvnHm+dSaxC6Jys2jtGCyqJZ4xTxJXUFIZzsBDyIVONpuUd6Sz
mrnLDSPtBAvfzrBYcUbVoJLMYAoYWC27I9NcnwttE4MTLBvlDLhws2ncZJ+werph
bSVzBS8qGPj7LFJGTP1YiFj9qTbnbJwxRAvPIIz2wAcTyOljKcQTmpGXYoqSZIOV
oE6jSlA9HIsvgLS+VHuOzqWJTfABcjEtN6VHJEQovp0DI8EfrWenYMpGH8kFCgtO
KW3Y45IgJeEksbfIfX2ehlWkOEABZsRsg9sjFZGlVrLUCDsN35ooVLOLIvE+yebU
StESPy77rxhkjS709PBr+JeKMS276AIqoK/5TRu9B7Y5Lmz5FuPLhlOn79JJfoLW
XUoFrF9U9MeJk8EV1Hm+x3uU0EvVvWOXvtpL4VdrOfLBhihvUf8SXn3e2IkYxbuj
erfnb/0EIILAj+oulMAmyQ2gcN0JNso4nDWNFua+0+TBd1Ep5OPV5AgogxXemew8
L5Z3hQkSwFGbXrIkdUSYm+MD/VyxMC7lwSOIYs2S3hwtnN/m1eILOzgYGqTt6Tls
/sjTgi2l1v+sJeQPoFTo7Riuzqe7F+kUlBCjg8lyi9QF5evvlrWIhxS1kHmlrQlI
we6cyqgnjlYJRq+QWyvm
=11vA
-----END PGP SIGNATURE-----
