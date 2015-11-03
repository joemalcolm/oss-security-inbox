X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1336" "Tuesday" "3" "November" "2015" "15:03:28" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151103200328.7CE0452E006@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: libsndfile DoS/divide-by-zero" nil nil nil "11" "2015110320:03:28" "[oss-security] Re: libsndfile DoS/divide-by-zero" (number mark "U       cve-assign@m Nov  3   37/1336  " thread-indent "\"[oss-security] Re: libsndfile DoS/divide-by-zero\"\n") "<549AB330.9030404@internot.info>" ("<549AB330.9030404@internot.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22480 invoked by uid 550); 3 Nov 2015 20:03:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22439 invoked from network); 3 Nov 2015 20:03:40 -0000
From: cve-assign@mitre.org
To: honey@internot.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <549AB330.9030404@internot.info>
Message-Id: <20151103200328.7CE0452E006@smtpvbsrv1.mitre.org>
Date: Tue,  3 Nov 2015 15:03:28 -0500 (EST)
Subject: [oss-security] Re: libsndfile DoS/divide-by-zero

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Date: Wed, 24 Dec 2014 23:36:00 +1100
> 
> I found a divide by zero bug in libsndfile.
> Could I get a CVE-ID for this?

> https://github.com/erikd/libsndfile/commit/725c7dbb95bfaf8b4bb7b04820e3a00cceea9ce6

> + if (bytes == 0 || items == 0)
> +         return 0 ;

Use CVE-2014-9756.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWORI1AAoJEL54rhJi8gl5fJwP/An9dn4fffHVYuO9ULtk6wTv
Q00kp5m6fOMta6BzLRR/f5VG1LhnvV3+GgvNdo0s+2to9FKrQ8iKcYa0YIzqBtDy
5ygBV+ZqSrL3dfXGSzbskMZk8aXVh/S2W5WwAA5R5xikv19joANygHIbySZySLXB
9okZ3iRTIfCPEYYYu3GojgXzpNFin849v5Xgzmzk5izGhHoC8HdzBx3KVqIGvOgG
HY5jYRCD2ySgdl7ycIWg9mWOj0qUpkwM9qz4PVIah1XcMWpFPOnLh9dmbOQhOMQ8
OybYFiIH1Zp8Cghjy1OAHU+cegHSfgm+Tj/e9iDnIsa0plXFJjHdlKEHCAA2txcR
WnGoI7yQ3Iu927/u8hKi0aMHRMW9BanH2vaUQSz3YlcPv0foL+eKBG/cVcyDlm5K
BHeROjFLpzJroQyUzF5KyL5fU3MvGn6OfMoGFkBxNMhu7SWWzVVoNH4fzPryH0zd
OUnqe0lKb/MqmWlm7SWU1ZSShn9LbFMzHjQq4pLUH5CkNnprE+avLDfxpCbTIC9m
IfT40CplEIg6iwTC9Tq4jLtNrTQcKY5XblQK39oZ6AvobFzedcNFMPNEwp6WkeGk
g+xfpdAEjOCIJX3W9xE0PB3TpvkmU8HJTYMGHHnEGv6iHQ8Ay0BSan0/d0FeCbm0
hmeZzEvGDwep3P/OyKyx
=HRSj
-----END PGP SIGNATURE-----
