X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3688" "Monday" "4" "May" "2015" "13:20:13" "+0000" "Mike Gabriel" "mike.gabriel@das-netzwerkteam.de" "<20150504132013.Horde.Z_Sb5TxHfEMgExorw0s4yg4@mail.das-netzwerkteam.de>" "100" "[oss-security] Re: CVE request: Caja / MATE Desktop Environment: caja automounts USB flash drives and CD/DVD drives while session is locked" nil nil nil "5" "2015050413:20:13" "[oss-security] Re: CVE request: Caja / MATE Desktop Environment: caja automounts USB flash drives and CD/DVD drives while session is locked" (number mark "        mike.gabriel May  4  100/3688  " thread-indent "\"[oss-security] Re: CVE request: Caja / MATE Desktop Environment: caja automounts USB flash drives and CD/DVD drives while session is locked\"\n") "<20150404093641.EF1C033215A@smtpvbsrv1.mitre.org>" ("<20150403192904.Horde.0NaAyaOcNQwGpQMQtHT27w1@mail.das-netzwerkteam.de>" "<20150404093641.EF1C033215A@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24298 invoked by uid 550); 4 May 2015 14:03:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22184 invoked from network); 4 May 2015 13:20:26 -0000
X-Virus-Scanned: Debian amavisd-new at grimnir.das-netzwerkteam.de
Message-ID: <20150504132013.Horde.Z_Sb5TxHfEMgExorw0s4yg4@mail.das-netzwerkteam.de>
References: <20150403192904.Horde.0NaAyaOcNQwGpQMQtHT27w1@mail.das-netzwerkteam.de>
 <20150404093641.EF1C033215A@smtpvbsrv1.mitre.org>
In-Reply-To: <20150404093641.EF1C033215A@smtpvbsrv1.mitre.org>
User-Agent: Internet Messaging Program (IMP) H5 (6.2.2)
Accept-Language: de,en
Organization: DAS-NETZWERKTEAM
X-Originating-IP: 178.62.101.154
X-Remote-Browser: Mozilla/5.0 (X11; Linux x86_64; rv:32.0) Gecko/20100101
 Firefox/32.0 Iceweasel/32.0
Content-Type: multipart/signed; boundary="=_Het3UvOdpx3_FESMaBPHzQ7";
 protocol="application/pgp-signature"; micalg=pgp-sha1
MIME-Version: 1.0
Cc: oss-security@lists.openwall.com
Date: Mon, 04 May 2015 13:20:13 +0000
From: Mike Gabriel <mike.gabriel@das-netzwerkteam.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Caja / MATE Desktop Environment: caja automounts
 USB flash drives and CD/DVD drives while session is locked
To: cve-assign@mitre.org

--=_Het3UvOdpx3_FESMaBPHzQ7
Content-Type: text/plain; charset=us-ascii; format=flowed; DelSp=Yes
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

sorry for the delay in the follow-up on this.

On  Sa 04 Apr 2015 11:36:41 CEST, cve-assign wrote:

>> https://bugs.debian.org/781608#15
>
>> This deserves a CVE ID
>
> Is upstream planning to announce this as a vulnerability fix? It
> appears that this increases security in some environments but
> decreases security in others. For example:
>
>   - MATE is used by an organization that requires each person to lock
>     their screen if they will be away from the screen, even for a
>     moment.
>
>   - The USB device contains sensitive information. The person is
>     required to maintain physical control of the USB device at all
>     times.
>
>   - The relevant screen is not located in the same room as the
>     relevant USB socket. The person is not allowed to change hardware
>     locations.
>
>   - The person requires automounting. Workarounds such as a script to
>     sleep for a minute and then explicitly do a mount are, for some
>     reason, unacceptable.
>
>   - There may be other constraints that aren't directly specified
>     here. The bottom line is that, in this environment, the person has
>     no way to have the USB device remain inserted at a time when that
>     person's screen is unlocked.
>
> This might occur only rarely, and one might argue that the person
> isn't allowed to "require" automounting.
>
> In any case, if the situation is roughly like "Upstream doesn't want
> automounting when the screen is locked. The previous behavior of
> automounting when the screen is locked was an oversight." then there
> can be a CVE ID. If the situation isn't like that, and instead is
> roughly like "Here's a usually useful security improvement or
> defense-in-depth measure," then there can't be a CVE ID.

There now is a pull request on Github [1] to get this issue fixed in=20=20
Caja. I just (a minute ago) received notification from upstream that=20=20
the PR will get merged ASAP.

So upstream plans to fix this with the next release of caja (probably=20=20
1.10) and it is considered an issue (similar to how it was considered=20=20
an issue in the nautilus browser where Caja has been forked from).

light+love,
Mike (from the Debian MATE Packaging Team)

[1] https://github.com/mate-desktop/caja/pull/400
--=20

DAS-NETZWERKTEAM
mike gabriel, herweg 7, 24357 fleckeby
fon: +49 (1520) 1976 148

GnuPG Key ID 0x25771B31
mail: mike.gabriel@das-netzwerkteam.de, http://das-netzwerkteam.de

freeBusy:
https://mail.das-netzwerkteam.de/freebusy/m.gabriel%40das-netzwerkteam.de.x=
fb

--=_Het3UvOdpx3_FESMaBPHzQ7
Content-Type: application/pgp-signature
Content-Description: Digitale PGP-Signatur
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAABAgAGBQJVR3INAAoJEJr0azAldxsxPaEP/3RT/31HycrI+rSGZ87vC1Wa
sOKLBvNk7Xm1MPZMw5GfxaFJaEoCizsqQ9UZCBJpvFj+0QmMnrMYgJK28D+ts2sy
ZKA5sfzODB3mXfwchO9Rc28ZNn0uX1jChqNWAyQVVsSWDrkO6d8KljAUe9Voj6mB
nJ+PAPPewl2q6PhE9ub+y/AdV62mL57UaTb41rrHFVQcJhrOcy5mFievFHtVneRO
aX0n+s9nOw1RwEcpo+suQWzkaTZZXjgRVi36kDzZ9FiTKKX0u/LfeWi9qiF0cDTK
SLj36sAKg+ZHEBImLrAH86O5RCUcIYr9jrDuL+PJd0YNcuEDVx083hyebcHAkLmA
cTI/G64ZAUzUry9UzYRaD9L88XPqwf6Jo2AEmtkayDYRUIDWs8J3wi/GIzrcACsr
HKaeaXw+PzvG8ipwCLBcQLfrluqqtBwx8r7T9RxIO/ZBRw3COcanGDVGZy8S/LCh
HbuuBUxel+exTJRsHBP8XRtaM+SSZqS1YqxJXPlq2lvX2J+XtVH2wVEpBBlr+Tdw
/gjlBP3+5uWyWfGMNS+hLHQ1pPidCEK1BoEjvW/p36Nlw8a2OrfWyPhXYxp2tnKK
6hk1bB7wx+ECF6ehzsZXALmdjhJy96uTtGPNXOK55J9uHdgo4D6x9liDf8nKul22
TI0XQY1D1CaHJwYyeckI
=SVJn
-----END PGP SIGNATURE-----

--=_Het3UvOdpx3_FESMaBPHzQ7--

