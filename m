X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1453" "Friday" "6" "May" "2016" "16:10:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160506201059.165AF332055@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: ikiwiki: HTML-escape error messages to prevent cross-site scripting attack" nil nil nil "5" "2016050620:10:59" "[oss-security] Re: CVE Request: ikiwiki: HTML-escape error messages to prevent cross-site scripting attack" (number mark "U       cve-assign@m May  6   36/1453  " thread-indent "\"[oss-security] Re: CVE Request: ikiwiki: HTML-escape error messages to prevent cross-site scripting attack\"\n") "<20160506193041.GA4287@eldamar.local>" ("<20160506193041.GA4287@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23983 invoked by uid 550); 6 May 2016 20:11:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23961 invoked from network); 6 May 2016 20:11:11 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160506193041.GA4287@eldamar.local>
Message-Id: <20160506201059.165AF332055@smtpvbsrv1.mitre.org>
Date: Fri,  6 May 2016 16:10:59 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: ikiwiki: HTML-escape error messages to prevent cross-site scripting attack

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://source.ikiwiki.branchable.com/?p=source.git;a=commit;h=32ef584dc5abb6ddb9f794f94ea0b2934967bba7

> The instance in cgierror() is a potential cross-site scripting attack,
> because an attacker could conceivably cause some module to raise an
> exception that includes attacker-supplied HTML in its message, for
> example via a crafted filename. (OVE-20160505-0012)

>> CGI.pm

Use CVE-2016-4561.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXLPn2AAoJEHb/MwWLVhi2ALMQAIlovh1Sl+fuQdZIQBAzRJfg
f4IgcFMZxk6MFeTzDXmrdDlRHSPqI/BDAaSPz96thHjURMVet/CCSNkbA1G8CIVB
r04BTvqNhDaL2tP/KxZ/bha9q4BM9BpO+6L8+aRK4sjiRbr21Q/PlvicEus3B20e
1e/jyMX/69oX4O8mqkm9UoQtsft2nlI13TOwM9yKKgQ61eMkjkDpDFMkAOaj25wP
qJ7pXPHWIYv5ic0Wg0KacF+BRlrFckN0RXfody4pzya7ND0yck/41F1y6h0isn4c
MHkwvKJ29qTeccflgF4FoB2YSD8E0dZkQU9CYpo95hdsyeVMj7O4wRE5bd5kPCZs
HIF8KEKzzvvZZ01xGxNeIgAFEDqBu0rnUQ9JC9bfVDYDSNFKkiHZE039lL/vr/3A
+y03HSvSZAjX7ZiALfRgcFvdAdqQfi6RPT6awU0X1HOfJChDJO9RG4UJf4qdK2/X
lM8T0bqeWA/975ftkZUfIPNxYy4UI/jrKkdK7MeVLe1JcXfbqO4BiCRRSx34MaNS
AqREZahOpL29UfRPysWYBJce30SCI/I4YBgn4xhe1KEu0Ud33+UirvIcSTeXM9I1
PViZrkuTUDAhACg9sYpvVxhnqyfd6+t7mJ0nqrs7UiF+1ZYwCQKWgyiqr7FN64lu
JvZf7sCAq3oE9ULBEP9d
=Y0cq
-----END PGP SIGNATURE-----
