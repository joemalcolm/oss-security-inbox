X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1606" "Tuesday" "4" "October" "2016" "14:32:10" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161004183210.EA2B1B2E027@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE request for code execution via gem name collission in bundler (was Re: [oss-security] CVE Request)" "^Cc:" nil nil "10" "2016100418:32:10" "[oss-security] Re: CVE request for code execution via gem name collission in bundler (was Re: [oss-security] CVE Request)" (number mark "        cve-assign@m Oct  4   36/1606  " thread-indent "\"[oss-security] Re: CVE request for code execution via gem name collission in bundler (was Re: [oss-security] CVE Request)\"\n") "<DD111A77-208D-4A66-8A39-93872A2FBA24@collectiveidea.com>" ("<DD111A77-208D-4A66-8A39-93872A2FBA24@collectiveidea.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3649 invoked by uid 550); 4 Oct 2016 18:32:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3628 invoked from network); 4 Oct 2016 18:32:22 -0000
In-Reply-To: <DD111A77-208D-4A66-8A39-93872A2FBA24@collectiveidea.com>
Message-Id: <20161004183210.EA2B1B2E027@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  4 Oct 2016 14:32:10 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for code execution via gem name collission in bundler (was Re: [oss-security] CVE Request)
To: steve@collectiveidea.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I'd like to request a CVE to track a security vulnerability found in
> Bundler (bundler.io <http://bundler.io/>). Bundler allows the user to
> specify sources from which Ruby gems are installed. If a secondary
> source is specified, even if scoped to a specific gem, that source is
> silently applied to all declared gems. This allows an attacker to
> introduce arbitrary code into an application via gem name collision on
> the secondary source, which will unexpectedly (and without warning)
> take priority over the primary source.

Use CVE-2016-7954.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX8/U7AAoJEHb/MwWLVhi2xrwP/RjNz+PRsrpnt6grFruRj6rH
IvSdysqLU3/+gK2Q+1mXtdydmkn05PMLHrB58Os6hP+K5POjPnNjXsc+VfaoD83r
S4wmDBs3H4l3XMrT+WHOqvZWsF74iDlTSFA35DNLFRW6Ad5IwPNuMcUBE8yqlMyK
SQ6aU0BvwB7yygmeK6RBvDICsUthcyrTooXkmeDKe1EhRxgKXwdvFVeknKiCOneK
hTMvNl6MyWU6BW3W0AelJG0mcndEu9Ai7DUf50mgCtuJCLay0wKLn8QrcYg7dWR8
17xFYh8v3soNMNrWBhyKcJUxWPz/YhNKbqjvXnk4Q1BIiEaBmYL4/Mw08dj+nKmy
2LTE+Kcx9vKHedo6lNT/Qxuug+S1czmbGESfygWACDpl2frB9YwVaU8MbFxZkfVj
utU9+zrQBhRQXUw9ZMN83dJqqiC8956/IGWczI++rvp8cqrMETP91PueK23wE091
SEzfASXty4n2HdD4AWwg0caECoDeUiDZP8UrQkkLDYu9Xlyeqw9C1vgiATTT3Uni
bTFjnBhrohCXEh/uvoWJIqZZbO8DRQ0KWI6FlcDuDzubGrih0M4CM7KZ0bDRpwGC
9VGbDtdGK0XPOzzHvPUr+GDSjwZCJ0aFTaxlxwa+ol15mLKyBWCkLHd/8NYHvM5E
is4rHDl4O1P83Wx0+Er0
=RpXj
-----END PGP SIGNATURE-----
