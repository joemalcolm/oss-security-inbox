X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1791" "Wednesday" "5" "July" "2017" "17:26:47" "-0500" "Patrick J. Volkerding" "security@slackware.com" "<20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>" "45" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070522:26:47" "[oss-security] systemd fails to parse user that should run service" (number mark "        security@sla Jul  5   45/1791  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705211451.GA16241@hurricane.linuxnetz.de>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" "<20170705211451.GA16241@hurricane.linuxnetz.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27671 invoked by uid 550); 6 Jul 2017 10:21:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1970 invoked from network); 5 Jul 2017 22:24:15 -0000
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
 <20170705211451.GA16241@hurricane.linuxnetz.de>
Message-ID: <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170705211451.GA16241@hurricane.linuxnetz.de>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="djkL9vqcMbpAvDxmU85vfDRSHgUGoGeGb"
Date: Wed, 5 Jul 2017 17:26:47 -0500
From: "Patrick J. Volkerding" <security@slackware.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

--djkL9vqcMbpAvDxmU85vfDRSHgUGoGeGb
Content-Type: multipart/mixed; boundary="sMxaFQJHtEiqiVukEUwVIOArlQ98bTcdJ";
 protected-headers="v1"
From: "Patrick J. Volkerding" <security@slackware.com>
To: oss-security@lists.openwall.com
Message-ID: <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
 <20170705211451.GA16241@hurricane.linuxnetz.de>
In-Reply-To: <20170705211451.GA16241@hurricane.linuxnetz.de>

--sMxaFQJHtEiqiVukEUwVIOArlQ98bTcdJ
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 07/05/2017 04:14 PM, Robert Scheck wrote:
> +1 for both, the CVE and that this is a problem. The service should not be
> started with more (!) permissions simply if parsing username fails.

One would think that without any User=3D line specified, defaulting to
nobody:nogroup would be more sane than defaulting to root. Since the
User=3D mechanism exists, if you want something to run as root, you should
need to ask for it.


--sMxaFQJHtEiqiVukEUwVIOArlQ98bTcdJ--

--djkL9vqcMbpAvDxmU85vfDRSHgUGoGeGb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTsVknaQB4iq/pnNu9qRGPAQBAiMwUCWV1npwAKCRBqRGPAQBAi
M0qZAJ4gGA+55UUiA+hF8po/JdFiX425ogCeMLvMid9vU6wEKGaxIAUA4xjxlHA=
=MscI
-----END PGP SIGNATURE-----

--djkL9vqcMbpAvDxmU85vfDRSHgUGoGeGb--
