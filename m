X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1813" "Tuesday" "22" "September" "2015" "16:55:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150922205555.6C564B2E1B1@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request: Plone Unauthorized user creation" nil nil nil "9" "2015092220:55:55" "[oss-security] Re: CVE Request: Plone Unauthorized user creation" (number mark "        cve-assign@m Sep 22   42/1813  " thread-indent "\"[oss-security] Re: CVE Request: Plone Unauthorized user creation\"\n") "<CAL8hw9HF3ohJHgGrBUgV2Z5RPHADf6UgDjOD7o2iEhmkf2XZWA@mail.gmail.com>" ("<CAL8hw9HF3ohJHgGrBUgV2Z5RPHADf6UgDjOD7o2iEhmkf2XZWA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32050 invoked by uid 550); 22 Sep 2015 20:56:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32032 invoked from network); 22 Sep 2015 20:56:07 -0000
In-Reply-To: <CAL8hw9HF3ohJHgGrBUgV2Z5RPHADf6UgDjOD7o2iEhmkf2XZWA@mail.gmail.com>
Message-Id: <20150922205555.6C564B2E1B1@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 22 Sep 2015 16:55:55 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Plone Unauthorized user creation
To: nathan.van.gheem@plone.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://plone.org/security/20150910/anonymous-is-able-to-create-plone-members
> https://github.com/zopefoundation/Products.CMFCore/commit/e1d981bfa14b664317285f0f36498f4be4a23406

> Do not make this a normal method comment. Doing so makes
> this method publishable

Use CVE-2015-7315.

We think this might be a somewhat unusual vulnerability cause. See
"Zope has few restrictions on publishable objects. The basic rule is
that the object must have a doc string. This requirement goes for
method objects too. Another requirement is that a publishable object
must not have a name that begin with an underscore. These two
restrictions are designed to keep private objects from being
published." on the
http://docs.zope.org/zope2/zdgbook/ObjectPublishing.html page.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWAb1rAAoJEL54rhJi8gl5Xo8P/2tgKny5vcnr67hC8RE/AZSU
ploRmUwqRpqDS2TJzhMK5ZtKBkNHu2paS88xFM342qL8CFzAsXC8RS8YT/UKWF/9
tvLwkH0SPkksaYSRonrHH/b6dkV1rt+eEKEGA7h56Xo3fnJZE9aq5wDLQQ8hFbUs
UxErOnG4T+oDMoW+K0ZPNU3D1sOupcvZ2IOcCBSO5req8cLx6u8pKB/yjn3Q7cw+
bf093qnzfyQgKkw1buq4TfkffHfO+StkpnBwPuqV4JwgsM5OAyN5haqiZjJewt29
bni0N2maU3krq5uYC4YwYfiUIiBY05ZDQ9II+4iX89fmozJB5fdUbqqTOmQjZX2i
99CmRWzOezYzd9Uz4oDFLzqAlNR9xegkzI8UfjMG0mZsK8/KsAyvOwfQeChgUT38
9bPAw5ghvY3M5MxghyjZueeWdawT7/A9b5xZvY25dxDSx5bseNfRkrh0/DeAE84i
Xje9tZgpjwaWZ078hOqIJ4n5bmxoqOKGmH2JO6baucz6VEy5l6bv9NKcJ424rYbD
piwdyLUBTK/ugUe+qotV783LVkE9vrmykWpJMtHHGRkaH8lP+PKBgpNjbiF5D7jJ
LxZti2Rj2s+gkbIHgGoDd8P/C50lnzl00XH2NHQqFmbfz2afLF6VLPv0Dp7NngVL
uCaG/GraegoAXNKsWjDV
=6/gi
-----END PGP SIGNATURE-----
