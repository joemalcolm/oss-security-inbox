X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1335" "Sunday" "30" "October" "2016" "15:49:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d14b218f69c243e8882399bdea634e66@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" nil nil nil "10" "2016103019:49:53" "[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" (number mark "U       cve-assign@m Oct 30   36/1335  " thread-indent "\"[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read\"\n") "<CACn5sdQ7qc6fBEUJ+W5VD=FcGB0-OWg3Bq3OPVLa9XKZMCZG+Q@mail.gmail.com>" ("<CACn5sdQ7qc6fBEUJ+W5VD=FcGB0-OWg3Bq3OPVLa9XKZMCZG+Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25993 invoked by uid 550); 30 Oct 2016 19:50:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25954 invoked from network); 30 Oct 2016 19:50:05 -0000
From: <cve-assign@mitre.org>
To: <gustavo.grieco@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CACn5sdQ7qc6fBEUJ+W5VD=FcGB0-OWg3Bq3OPVLa9XKZMCZG+Q@mail.gmail.com>
Message-ID: <d14b218f69c243e8882399bdea634e66@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:49:53 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Despite CVE-2016-7563 looks fixed in the mujs bug tracker, it was not
> properly patched:
> 
> http://bugs.ghostscript.com/show_bug.cgi?id=697136#c4

>> AddressSanitizer: heap-buffer-overflow
>> READ of size 1

Use CVE-2016-9109 for the issue of an incomplete fix for
CVE-2016-7563.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFkuiAAoJEHb/MwWLVhi2RYQP/RUxITs9d7YwygKvsonPO6KY
G0w5aAZSoJQq5SuQHFpU5B6CBfMfGB4iSWTrdLhu71hSBHlFMoca8Q4Rlirnnefh
mrK2dUlB4ZeY9iAu/WAsi7svdMhbsaNWD4FchYdm8PTBP10Q0pHCilPAmJI4/fev
vZIeSeHl0KcYD104MtYD2ek6bOUm56Dxuf2nBTRfVJNBZa/q1FRS62cg+Nkwo4Hx
sfvepzy26nE0PzCFn1GcPu3H0SuWe1nkgfSwgZjFSDAg+OwueJLAFnm/Y+xloUWv
lD3WiHU1cESxY4SyH3UgUa2QgNTI0zauLxLzcwLOYMF2rh8UlACG2DqOckgI9Bkk
GYetbtkGbnZOmwBTEFPdKfFISEo5dBBPRWTxFXnepCnwjU/Gl1gLt07s4/90UM/7
+w+kXl0boDt7W7PUYxyn6lkYUbT6Irodxvk1QDe5LcI5eyU8+QN2yNW1t8sp7qAi
578PKtcezerFo0L9WHSvNcV3+CM9mO00LdI6ZxCEy8qmc5s5yrnbtIElaNdJfOek
1riKd3yPvz3T/2EGbpVXE/9gkpz4My37e+bhhkBhzScp6pcM6tOcycBvSzM1LKls
HNh0uzMpzadWQA474KQsCoXAZ+M3N1ViBmUs0KUCGs9NAqxjYV/pKtONiKUqTHbJ
4cNzu7H/SxrQp0e6nt3h
=vKjs
-----END PGP SIGNATURE-----
