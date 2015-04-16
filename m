X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1237" "Thursday" "16" "April" "2015" "02:55:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416065530.E268E6C0016@smtpvmsrv1.mitre.org>" "30" "[oss-security] Re: CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify" nil nil nil "4" "2015041606:55:30" "[oss-security] Re: CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify" (number mark "        cve-assign@m Apr 16   30/1237  " thread-indent "\"[oss-security] Re: CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify\"\n") "<20150412190435.GC2456@yuggoth.org>" ("<20150412190435.GC2456@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15392 invoked by uid 550); 16 Apr 2015 06:55:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15365 invoked from network); 16 Apr 2015 06:55:42 -0000
In-Reply-To: <20150412190435.GC2456@yuggoth.org>
Message-Id: <20150416065530.E268E6C0016@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@etherpad.org
Date: Thu, 16 Apr 2015 02:55:30 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for incomplete fix to CVE-2015-3297 in Etherpad Minify
To: fungi@yuggoth.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> An anonymous reporter pointed out an incomplete fix to CVE-2015-3297
> in the minify feature of current Etherpad releases. There is an
> additional location in the script where backslashes are replaced
> with slashes in the path parameter of HTTP API calls after path
> normalization is applied, allowing an attacker supplying a slightly
> different specially-crafted request to remotely read arbitrary files
> 
> https://github.com/ether/etherpad-lite/commit/0fa7650df8f940ed6b577d79836a78eb09726c4b

Use CVE-2015-3309.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVL1xzAAoJEKllVAevmvmsqWEH/2N77rp93iqfKbhqgMi2Ew+U
QP3tcg0pJoDbU3nJYLLhmcYtYyVa/2epCub3NXy+VuG6cRxORQiVVtlNPHOChf7Z
chb5DP7CRYIAD99mCQ+QZwWCaSfqf3ZqaL9t8ZVw+YvYwPnOUKpAQsOo6MqG1SNR
WOp9n3iE2kD8E7VbvKeFx8TlOEcsU1lEGxX+vHEVepJxnk3++sa6n0JFzv2vHKiU
KWLPLybUETGB7mPNfKXKImvU+RfXeQ+1yl6KevtPlYMElq5Rxt+FJCBqQNDSW7VU
ZWEBGB43J8T6QCNVTNFOkP6LJoXXjcOySHAk4wfWrJRm9EEVrUGk1M60PKJ4PdA=
=zRWw
-----END PGP SIGNATURE-----
