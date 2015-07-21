X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1787" "Tuesday" "21" "July" "2015" "07:50:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150721115058.8205A52E158@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: CVE request: IPython CSRF validation" nil nil nil "7" "2015072111:50:58" "[oss-security] Re: CVE request: IPython CSRF validation" (number mark "        cve-assign@m Jul 21   48/1787  " thread-indent "\"[oss-security] Re: CVE request: IPython CSRF validation\"\n") "<CA+tbMaW_byk+-swLHZ9nE7jDh1GCGc9Dd9A8who56h0rmAzjwQ@mail.gmail.com>" ("<CA+tbMaW_byk+-swLHZ9nE7jDh1GCGc9Dd9A8who56h0rmAzjwQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24053 invoked by uid 550); 21 Jul 2015 11:51:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24014 invoked from network); 21 Jul 2015 11:51:10 -0000
In-Reply-To: <CA+tbMaW_byk+-swLHZ9nE7jDh1GCGc9Dd9A8who56h0rmAzjwQ@mail.gmail.com>
Message-Id: <20150721115058.8205A52E158@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, khanam@us.ibm.com, security@ipython.org
Date: Tue, 21 Jul 2015 07:50:58 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: IPython CSRF validation
To: rgbkrk@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Software name: IPython notebook
> Attack outcome: Possible remote execution
> Patches:
>   2.x:
> https://github.com/ipython/ipython/commit/a05fe052a18810e92d9be8c1185952c13fe4e5b0
>   3.x:
> https://github.com/ipython/ipython/commit/1415a9710407e7c14900531813c15ba6165f0816
> 
> POST requests exposed via the IPython REST API are vulnerable to
> cross-site request forgery (CSRF). Web pages on different domains can make
> non-AJAX POST requests to known IPython URLs, and IPython will honor them.
> The user's browser will automatically send IPython cookies along with the
> requests.

Use CVE-2015-5607.

This part of the patch seems unusual, but we haven't researched it at all:

  host = self.request.headers.get("Host")
  origin = self.request.headers.get("Origin")

  # If no header is provided, assume it comes from a script/curl.
  # We are only concerned with cross-site browser stuff here.
  if origin is None or host is None:
     return True

Is this a case where it is safe to skip CSRF protection in all
situations where the client omits an Origin header?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVrjG9AAoJEKllVAevmvms5UwH/2hScDKEqZ7YRg+Rrh5GNsZj
/EqVTy7VhFSr67xFxE1p/wn8X6UsRs4c4C1BtqGdbFFgh/UHE2X3uFrqeSEX+mWg
i5fDE+OGKSZdqK+UM0pazNsEtWCyrvx/5j+zJ7PSL2Jejrc4v81F/UGP83qtY5CC
1cbslombkmi1juKiupm57sQwqCAhVPASrTaQn9LFZyDlcuvpa/93OlGgdKtlyqX4
u77/cDUVQ+RVb0Ivj9EJAJbfjhfdZ8h/BDn8GiAbQ51ADpogTDCpPpIqRN+9/0d1
LAaDDbROGwBc0IdDzlDB8D2sW2z28o/D6tL9U7Kj5xYKsHuXC8PjPkSBaHZ3om8=
=jjDB
-----END PGP SIGNATURE-----
