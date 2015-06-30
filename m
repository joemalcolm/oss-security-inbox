X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1940" "Monday" "29" "June" "2015" "23:11:08" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<559224EC.3080008@redhat.com>" "49" "[oss-security] Question about world readable config files and commented warnings" nil nil nil "6" "2015063005:11:08" "[oss-security] Question about world readable config files and commented warnings" (number mark "        kseifried@re Jun 29   49/1940  " thread-indent "\"[oss-security] Question about world readable config files and commented warnings\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26380 invoked by uid 550); 30 Jun 2015 05:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26358 invoked from network); 30 Jun 2015 05:11:23 -0000
Message-ID: <559224EC.3080008@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="dcRMWeG8QisGoURbUhc1F2Ba34eMCP0K8"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Mon, 29 Jun 2015 23:11:08 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Question about world readable config files and commented warnings
To: Assign a CVE Identifier <cve-assign@mitre.org>,
        oss-security@lists.openwall.com

--dcRMWeG8QisGoURbUhc1F2Ba34eMCP0K8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So, if a config file is world readable by default, but the section where
you might put a password says:

########
# Database URI for the database that stores the package information. If it
# contains a password, make sure to adjust the permissions of the config
########

Is that good enough, e.g. no CVE, or do we actually need to have proper
permissions?

I'm thinking we need proper permissions and not a note (especially with
administration tools/etc that may parse/modify the file but not change
the perms). Thoughts/comments/final decision from Mitre is welcome.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


--dcRMWeG8QisGoURbUhc1F2Ba34eMCP0K8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVkiTtAAoJEBYNRVNeJnmT9ccQAI5kKpZmG/1R87sc0A917Fhy
OOiE+RH9DmLVokztMYesAqu1R2Kiufwdiz/KK0+1q6nGtyj4QQ1FxFnVJVz6yPE7
7xOp3YdIIGhcaBbfGNpJlYhv2/iG3Z/cATO+XPpYDJjcqB4nbAA6iObgkViPpntx
5+NRZPcMA7YSrMypZuk3x8G5J48SaNZh05Qx5QWY3RgJRdUYL0rQ+E3v7Q/lNKaN
4WYeJu6o8qU0FnYWTHJIz2xXSXsvGW+Dyh8lBFHcNImNjyVRfdgsiHC5eDCdSv80
tT5ysNqJVR86//0EelTRXDBfVDc1HMigXAqHBx7kY3LptSNyOZM8UlngKktRdykz
LnwBmohvP7IzZQEBeERlAc5717VVSkGKHPRFWGNJV6FlkO2HQqYpnZ6B2sdc5JeD
2XTh2KndhWHPl8znGA4PTSRwGYvlLhOBg3bYZSiGBNUt1RJBGs117lb4sffvlEYk
EsRvVf1nbhUIRfdp5T96/kkd04cMXeA95CaW81n2WXlP1na5TVdPdtpZHyURKD8l
iNCBGIQMRntP/NRMzS1AFhIF4cbi0uXla0X8InjcagPRZgmAljYEOXwOVz8m+FOu
viqGHueC9C1HYdyyxtWgTf5m81B19rvhuHMWWzdgAdueDX8c2/VSVfEENPFTlT2B
abot6u/NBEYLswbhApOW
=mcsV
-----END PGP SIGNATURE-----

--dcRMWeG8QisGoURbUhc1F2Ba34eMCP0K8--
