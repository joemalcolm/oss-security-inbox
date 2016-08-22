X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2095" "Monday" "22" "August" "2016" "16:55:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160822205557.001A36FC085@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE Request: lshell: shell outbreak vulnerabilities via bad syntax parse and multiline commands" nil nil nil "8" "2016082220:55:56" "[oss-security] Re: CVE Request: lshell: shell outbreak vulnerabilities via bad syntax parse and multiline commands" (number mark "U       cve-assign@m Aug 22   52/2095  " thread-indent "\"[oss-security] Re: CVE Request: lshell: shell outbreak vulnerabilities via bad syntax parse and multiline commands\"\n") "<20160822195435.naiv4hyfs6lxwenf@eldamar.local>" ("<20160822195435.naiv4hyfs6lxwenf@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27649 invoked by uid 550); 22 Aug 2016 20:56:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26556 invoked from network); 22 Aug 2016 20:56:08 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160822195435.naiv4hyfs6lxwenf@eldamar.local>
Message-Id: <20160822205557.001A36FC085@smtpvmsrv1.mitre.org>
Date: Mon, 22 Aug 2016 16:55:56 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: lshell: shell outbreak vulnerabilities via bad syntax parse and multiline commands

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1/ Shell outbreak due to bad syntax parse
>    - https://github.com/ghantoos/lshell/issues/147
>    - https://bugs.debian.org/834949

Use CVE-2016-6902.


> 2/ Shell outbreak with multiline commands
>    - https://github.com/ghantoos/lshell/issues/149
>    - Fix: https://github.com/ghantoos/lshell/commit/e72dfcd1f258193f9aaea3591ecbdaed207661a0
>    - https://bugs.debian.org/834946

Use CVE-2016-6903.


https://bugs.debian.org/834949 and https://bugs.debian.org/834946 also
mention "Command parser in this shell is beyound of recovery." This
suggests that other vulnerabilities may be fixed at the same time as
issues/147, or that other vulnerabilities may be discovered. In
particular,
https://github.com/ghantoos/lshell/issues/147#issuecomment-241366750
mentions a different attack methodology. At least for now,
https://github.com/ghantoos/lshell/issues/147#issuecomment-241366750
is within the scope of CVE-2016-6902. It is difficult to predict what
other CVE IDs may be needed until there is further vendor followup
about issues/147.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXu2Z5AAoJEHb/MwWLVhi2yV8P/jYtI8rE7dbkIHDCytF6ligt
O586ap6xBzpt0x874jrEZvteWGm1qDmA0JhQsuRa6CAGWRwOy1DweZpppDZ0u3ic
85dT8yQw+9Hz3eJe0G/M3WjSk6m2eeyUGf5N6817UAim/SM+RnNVfPrP+ytBCb5Z
tpdXPW+BKJa1/FsSAcQ6+mzkpytPXb8DFdf9Tb82g8rAPZTMNw/beJXaBo4o+Btr
ZYOv3QGkpubbak6TWVCI9mmbslekFKrcI7qKYwYAwkON4CUHkXg8/RhbMbLVDzlC
sSlvPBiGibzm3uNtuMqkbVAKazrpad/NNwt/ioAVYltDOZjIs7jNPe7Va9YLKcBz
33IVH9QQMQr5CRh5kYgV3coSMRvQfduIIE4I7HxlumlwGJKsvARQ4JiEYhoqrgKv
/M1pzohNpg7TBW5RjHuYMZougbHa70tezV2+mtjdb28lB3DrsAafNPa+9R9cE+UB
5fE4Qm7LYRqA4hNtut0OrdEF5zmJL1u8xuVOoj5pUdRDs4A9FL/hT8TEFXsQaknA
nXNtI+bqYQxOqE1ZXg40WbN6Z/aeZYSIUXhZ1DdirCGqtEsnD6IJ07kch/QuZsUc
Qd1IoN4d6fCfKcObz2AZ4fg+As7ndsmuMapi+VMPff3JZrqakQVroptK1K2gTHY2
92ovu5VQOdGYAvoWVFQR
=ICSm
-----END PGP SIGNATURE-----
