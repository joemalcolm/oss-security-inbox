X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3852" "Thursday" "18" "May" "2017" "08:35:40" "+0930" "Simon Lees" "sflees@suse.de" "<e59bd254-68c2-b809-6143-f822e3452481@suse.de>" "99" "Re: [oss-security] terminal emulators' processing of escape sequences" nil nil nil "5" "2017051723:05:40" "[oss-security] terminal emulators' processing of escape sequences" (number mark "U       sflees@suse. May 18   99/3852  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170501164428.GA12322@openwall.com>" ("<20170501164428.GA12322@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12065 invoked by uid 550); 17 May 2017 23:06:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12047 invoked from network); 17 May 2017 23:06:02 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
To: oss-security@lists.openwall.com
References: <20170501164428.GA12322@openwall.com>
From: Simon Lees <sflees@suse.de>
Message-ID: <e59bd254-68c2-b809-6143-f822e3452481@suse.de>
Date: Thu, 18 May 2017 08:35:40 +0930
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <20170501164428.GA12322@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="TvRhKhB5lwVLSUld7E6RxkwOphealK6hg"
Subject: Re: [oss-security] terminal emulators' processing of escape sequences

--TvRhKhB5lwVLSUld7E6RxkwOphealK6hg
Content-Type: multipart/mixed; boundary="N9AVsHVVirUef7VKrKol08rpoTx8fpWRA";
 protected-headers="v1"
From: Simon Lees <sflees@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <e59bd254-68c2-b809-6143-f822e3452481@suse.de>
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
References: <20170501164428.GA12322@openwall.com>
In-Reply-To: <20170501164428.GA12322@openwall.com>

--N9AVsHVVirUef7VKrKol08rpoTx8fpWRA
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 05/02/2017 02:14 AM, Solar Designer wrote:
> Hi,
>=20
> It is a well-known feature, previously discussed in here, that data
> printed to a terminal (emulator) may control that terminal, including
> making it effectively unusable until reset, and in some cases even
> pasting characters as if they were typed by the user.  Also as discussed
> what characters may be pasted varies by terminal - sometimes they can be
> arbitrary (e.g., if the terminal supports macro recording and playback
> via escape sequences) and sometimes not so (like a terminal reporting
> back its status, usually not followed by a linefeed, so not yet
> executing a shell command until further user assistance).  Here are some
> relevant threads:
>=20
> http://www.openwall.com/lists/oss-security/2015/08/11/8
> http://www.openwall.com/lists/oss-security/2015/09/17/5
> http://www.openwall.com/lists/oss-security/2016/11/04/12
>=20
> (I link to messages that started these threads, not necessarily to most
> informative messages in the threads.  So you might want to go through
> the threads with the "thread-next" links.)
>=20
> Besides (mis)features, there may also be implementation bugs.  A couple
> of weeks ago, I brought in here vulnerabilities in terminal escape
> handling in minicom and prl-vzvncserver (both already fixed in latest
> versions by then):
>=20
> http://www.openwall.com/lists/oss-security/2017/04/18/5
>=20
> I already knew this wouldn't be the end of the story as some other
> terminal emulators exhibited suspicious behavior when targeted with
> streams of unusual escape sequences involving large or negative integer
> parameters.  I sent the following to the distros list on April 17,
> presented here with updates reflecting the current status.
>=20
>=20
> terminology:
>=20
> ---
> ERR<10676>:termpty termptyesc.c:1115 _handle_esc_csi() unhandled CSI 'x':=
 2147483647;0x
> ERR<10676>:termpty termptyesc.c:1115 _handle_esc_csi() unhandled CSI 'x':=
 2147483647;0x
> ERR<10676>:termpty termptyesc.c:1115 _handle_esc_csi() unhandled CSI 'x':=
 2147483647;0x
> ---
>=20

For reference terminology was fixed with this commit
https://phab.enlightenment.org/rTRM63d65ed4bb06094e6a8b6cafdc7c4cbfc62dd677

Thanks

--=20

Simon Lees (Simotek)                            http://simotek.net

Emergency Update Team                           keybase.io/simotek
SUSE Linux                           Adelaide Australia, UTC+10:30
GPG Fingerprint: 5B87 DB9D 88DC F606 E489 CEC5 0922 C246 02F0 014B


--N9AVsHVVirUef7VKrKol08rpoTx8fpWRA--

--TvRhKhB5lwVLSUld7E6RxkwOphealK6hg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAEBCAAdFiEED0hBIYMo9ADHKtZgEdQumr4Y/JEFAlkc10QACgkQEdQumr4Y
/JHlfAf4ztCXjm9ozk0EPlnlixP1NLkFMEPTYsykaCrtINvZMMpHHP59AKz3WWQT
9Db686yxAOEZ9d5iYu44XMsZWr8T2yHHimdHL3LInTA/27GNbDqkO2FTDwxXjqB3
rs6QA3MvvvhP1IGzJz1gPLZNTMQGq3CXp3D4MJPAEKtWzDp3B2T9j1lDgpz87Qxk
pbBj3xidMKfyHHblLQhns0Mj3D4GW8nTqJ73/KRzA6RGNBSWbr+KX1iUl01Qp0gJ
D9kgYdx3MaCQBJ86zJDH5V/qV+kSs5G94Td4Vm08/p8o7vxCQ7beXp3QI8uXCni3
dFwT09ZQ/bRmbHN0vS7s90vzM2EG
=Uut+
-----END PGP SIGNATURE-----

--TvRhKhB5lwVLSUld7E6RxkwOphealK6hg--
