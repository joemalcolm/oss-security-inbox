Received: (qmail 18414 invoked by uid 550); 20 Apr 2023 11:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18396 invoked from network); 20 Apr 2023 11:51:50 -0000
Date: Thu, 20 Apr 2023 11:51:37 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20230420115135.fmeae6hawx7mqqoh@yuggoth.org>
References: <CAGUWgD9UDNkNMsixAnLcmS0OuWM0Btvx6fRbRr1OSk1UsXhy2g@mail.gmail.com>
 <CAHQ_-nSmiU3vZM-8skFJ0jvuZhjR5eHWX=UOjZM-i1qy47pUwQ@mail.gmail.com>
 <CAGUWgD8-GXOj=hvUzTD0K=GeiQTR-qSstSX0AQ+7GPsv1TWZzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wivrsf4yxvy3f2cb"
Content-Disposition: inline
In-Reply-To: <CAGUWgD8-GXOj=hvUzTD0K=GeiQTR-qSstSX0AQ+7GPsv1TWZzQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Checking existence of firewalled URLs via
 javascript's script.onload

--wivrsf4yxvy3f2cb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2023-04-20 10:58:42 +0300 (+0300), Georgi Guninski wrote:
[...]
> I can't imagine how can you check for open port/URL without
> javascript, can you give reference or explanation? You can make
> request, but without javascript you can't read the result.

If the attacker controls the destination, they can simply record
whether the connection is successfully established at the remote
end. While this may not tell them much about what specific hosts the
victim has access to reach, it can easily leak general egress
filtering information.
--=20
Jeremy Stanley

--wivrsf4yxvy3f2cb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmRBJ0BfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCm51hAA3q1x+aOKwqcADXPwbUZEPYzuAy6TaVRhFQllhiR+lZUzBM+K6k+pb4JC
vmkPTkcqk5wnGYBI+1dSq+5p11rU2E10yIDXY0xej67M9s4RUM9jrw27iAp2vxeP
wfpDWc7fn0K5qiwHiel79x9rrZZgNud9A9qmlU1NipA8MfyUUBjbdXBGXuEc1CqM
oJwrRfFpKFBohfWjyzZ2qY6wrFMTJdVS+hRMUYJabbDTp1bkYCWeEPNEDExWb/8q
sphQ3CyxOmMKjME/iec/OBR+BrNfbFMXwc/4/jLekaxxJQmKwFBoXE4dov5HvFGk
hClNpr9lKvijUnEnbPFUvc5PpWd/q8XR685vk3DQte0Zy81Im0FZmoYfZKpkv41i
23Di4E+Hikf6C9jQOMDTNrYfYSv+hPcMXuNj7+WS4AtTUYuIoK9UM4XswCfOQeX4
8j//7lj954+DGIGrFILt9plp9eY1vh80A4YVAVqojUkHWouX5eT5sptqEd5T5+p3
MtIbhu6vAPiH2Xt4Ks1pR+YqV9vIqF6qcKPRws19yFlVhfLUlZlXN5vY32gXZW8n
E65tIXaT6GkGs0sgTO4B8ZGeYYrHQTQnQcdFDySNERdjHulCZoso2cCEpPQhG87G
6KsKyzZIr4WQqY0mQBcPk66JcMzw/CP6i7PdR6a9hxCsWpo99ZM=
=uZu8
-----END PGP SIGNATURE-----

--wivrsf4yxvy3f2cb--
