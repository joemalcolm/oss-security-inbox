X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1278" "Monday" "18" "May" "2015" "18:50:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150518225059.69D7C6DC001@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE request: SQLi in FeedWordPress - WordPress plugin" nil nil nil "5" "2015051822:50:59" "[oss-security] Re: CVE request: SQLi in FeedWordPress - WordPress plugin" (number mark "        cve-assign@m May 18   36/1278  " thread-indent "\"[oss-security] Re: CVE request: SQLi in FeedWordPress - WordPress plugin\"\n") "<CAEhYM0YpdjmT2jeak9Xm_zo9yfUMtPAcfOT1TTf-1t4HOMHaEQ@mail.gmail.com>" ("<CAEhYM0YpdjmT2jeak9Xm_zo9yfUMtPAcfOT1TTf-1t4HOMHaEQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15435 invoked by uid 550); 18 May 2015 22:51:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15414 invoked from network); 18 May 2015 22:51:11 -0000
In-Reply-To: <CAEhYM0YpdjmT2jeak9Xm_zo9yfUMtPAcfOT1TTf-1t4HOMHaEQ@mail.gmail.com>
Message-Id: <20150518225059.69D7C6DC001@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 18 May 2015 18:50:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: SQLi in FeedWordPress - WordPress plugin
To: adrimf85@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> I discovered a SQLi in a WordPress plugin:
> 
> * SQL injection vulnerability in FeedWordPress
> * vulnerable version: 2015.0426
> * patched version: 2015.0514
> * changelog: https://wordpress.org/plugins/feedwordpress/changelog/
> 
> Download Version 2015.0514
> 
> fixes a security vulnerability that was reported to me privately
> (thanks to Adrian M. F.) which, under other low-probability
> conditions, could allow for SQL insertion attacks by a malicious user
> with access to login credentials, which would compromise data
> security.

Use CVE-2015-4018.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVWmxeAAoJEKllVAevmvmsTqkH/3u2Nj6ymKh821/xE6QmzDb4
91DqYFzchK862aguT5iRkegxw1eKH+4e1UH4hAyP3sbxfeI6qiqd6BTFwyXyH+X9
e5u/OPDtXDaz+T42+TTVgrg47RTlBI1HsKBwAFgmWzNc/8m/gIW7BwRudxILeCx5
nFTgKZ9XGnUyhmerrwyQd1D4m3cE4221NM4/M7H7qlx4DmL8kGaTOr6L/scUPp5y
Vw/+q7m0MH7ckIBJO8MiACAHRs5G2EQMIE4LqevyDsY36oYpxmMCzlsV1s7OaW60
XuR3BAx8BbvH23sjCw++S/rAKZZCLltIa6gZkqB4Ini74fhZisISYXB3KXQfTX4=
=W440
-----END PGP SIGNATURE-----
