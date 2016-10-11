X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1466" "Tuesday" "11" "October" "2016" "12:28:33" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161011162833.2F1006C1338@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Cc:" nil nil "10" "2016101116:28:33" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        cve-assign@m Oct 11   37/1466  " thread-indent "\"[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFkJ5Dc6JwjZsb9EbhbYKDJe4vwXmpe9usRHepZp7GQF5MQ@mail.gmail.com>" ("<CAJ_zFkJ5Dc6JwjZsb9EbhbYKDJe4vwXmpe9usRHepZp7GQF5MQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7895 invoked by uid 550); 11 Oct 2016 16:28:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7875 invoked from network); 11 Oct 2016 16:28:44 -0000
In-Reply-To: <CAJ_zFkJ5Dc6JwjZsb9EbhbYKDJe4vwXmpe9usRHepZp7GQF5MQ@mail.gmail.com>
Message-Id: <20161011162833.2F1006C1338@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 11 Oct 2016 12:28:33 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems
To: taviso@google.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Here is a different type confusion bug, originally I thought it was
> just a NULL dereference, but after seeing the patch it does look
> exploitable.
> 
> id: http://bugs.ghostscript.com/show_bug.cgi?id=697203
> patch: http://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=f5c7555c30393e64ec1f5ab0dfae5b55b3b3fc78
> repro: clear 16#41414141 .sethalftone5
> 
> Please assign a CVE for this one.

Use CVE-2016-8602.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX/RJMAAoJEHb/MwWLVhi2eRAP/0pY2yag9OtfjcTBqJ30efgV
pdWeaaGnY/V793JA8TuygA4GfWlutx7wEHaIsO+FR4Ur3YD63r4Ru3dkMk5w6nHR
GAKfKseZDGPx4vYHqmvMULmwmh97WkBZXgwSFmIP2Z7qBnXzTb0LphhvQLymZTDu
gc/B8hlTRbjVKZk2nwq5VajG5I6zY776Ok0fN6TSkVkrN6QWTdzOHr7XsNw33fks
a01IqHrb3kMeaOOTyyrnm1nCehz3yF7uqBJb7PzY28FFqeX6rKqB3hulkB+7Ulnn
7txIzxqdeHJHJjAG3Z0drfu0yoDcXXFl6aVSy/+2mxPs5H+CyTHzzmCkWdWDlw4y
6sJahKu+A/Q0yxsfqmFqc0wXQXv0/Db8hbaP5ZPa1Io9Hp3VqM/ZmGt0elsFWFq1
QcKV3TF35PfNJeR/5EuVBUCQLH017pA4ozT90qPYDTFAcbUZMH1PBlcNheLz10M4
XXFsaocBYbKDxcr22/cWiUWOTefDgkBdFTWzg5RxVLAEcY2/ov1KdwRmRF9O1X+h
z/bwoD/HHbt3xTwoZ7zZuj8qK1hli2aoiIk4sGekwD0lmmbECyL1kSYpZORAXLG9
3adzKdoIQ+31rrubIoJbOrZVtv0O+/7ZfIAcJVMytz3seQH7QYP6BEgVGlH34v7d
YgyQlr15jLLG5YrXRhQN
=YVnm
-----END PGP SIGNATURE-----
