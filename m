X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1849" "Thursday" "2" "February" "2017" "00:55:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<2ac0c9bbb12f40eda8a5a359d865e4a0@imshyb01.MITRE.ORG>" "55" "[oss-security] Re: CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r" nil nil nil "2" "2017020205:55:01" "[oss-security] Re: CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r" (number mark "U       cve-assign@m Feb  2   55/1849  " thread-indent "\"[oss-security] Re: CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r\"\n") "<CAGW7fdsN9uyoMX7YtLn1=9k+LtYN12cQOnRpvz6DEMbatiR=Gw@mail.gmail.com>" ("<CAGW7fdsN9uyoMX7YtLn1=9k+LtYN12cQOnRpvz6DEMbatiR=Gw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17980 invoked by uid 550); 2 Feb 2017 05:55:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17959 invoked from network); 2 Feb 2017 05:55:13 -0000
From: <cve-assign@mitre.org>
To: <max@appcanary.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CAGW7fdsN9uyoMX7YtLn1=9k+LtYN12cQOnRpvz6DEMbatiR=Gw@mail.gmail.com>
Message-ID: <2ac0c9bbb12f40eda8a5a359d865e4a0@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 00:55:01 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Two similar vulnerabilities in ruby text-to-speech libraries.

> [] 1) espeak-ruby
> 
> Rubygem espeak-ruby passes user modifiable strings directly to a shell
> command.
> 
> An attacker can execute malicious commands by modifying the strings that
> are passed as arguments to the speak, save, bytes and bytes_wav methods in
> the lib/espeak/speech.rb.
> 
> https://github.com/dejan/espeak-ruby/issues/7

Use CVE-2016-10193.


> [] 2) festivaltts4r
> 
> Rubygem festivaltts4r passes user modifiable strings directly to a shell
> command.
> 
> An attacker can execute malicious commands by modifying the strings that
> are passed as arguments to the to_speech and and to_mp3 methods in
> lib/festivaltts4r/festival4r.rb.
> 
> https://github.com/spejman/festivaltts4r/issues/1

Use CVE-2016-10194.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYksb0AAoJEHb/MwWLVhi2mkEQALLyH6VlcdSpoQJaTgu9Rb3m
7E5nG6xJpQOgaSGnG7app8LBgGkXDxpO8O02tqHpjvriq+WrstxgepvohYEh71z7
AgahTWdBRThSx8hRFxQE0ixj0RuIa0895ic82H0c7uD6RESGkfDJf+YgYis4wvoF
APYmog4LJ8AbqN0khPh7ug0w/jpqV/RQAtddcC5PXqbgcl7K+RjFpSWHL4R9feS/
aq3tBEJ7grXfJ+juUE1OvuXDRLO9RJbWMHeVHHghvwL37gUJ13sUtjlvPBTztYeJ
h9VQ7WH67TSYI+OqsA09U0SzG9lagVerffgPXU3Fe62DeV3JQouto0KqraUpDmZa
+Ucz3orTsJ/QKRIlxJimC3/RDwWz/WhJv0SdjdbqPaCehXCiGWs5QbakVYa+R1H6
+UNmHA5FlxB/zCiAltgviL+OdaxNUCT1dhSuXW7JnFmrujQ4PdknYy0UVV+KWwxp
OdRXJVkbLDj53FxXi1MIq1P3qQDr74U60+eJHE0hbg7UYGqED5DQ5zrgpZEv97kd
ldr8XnS3zgxOqsNMGxvGKUIKjLxEGqqHRPWzYJFtk946WC49upbkmsezGRx7F0Hr
KxYXqnjLm28oBCI4q8jA8KtgapnxnbMjw1SWQvOOQnltmbwRbEEAVa53B6dCoCGT
03ZXu+SVo5UqQbGCBmcM
=np+3
-----END PGP SIGNATURE-----
