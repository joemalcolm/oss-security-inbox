X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1204" "Thursday" "24" "January" "2019" "10:30:28" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<e04349fc26ad12ba9a8d3b74848b42c88bba5dc3.camel@debian.org>" "31" "Re: [oss-security] Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" "^Date:" nil nil "1" "2019012409:30:28" "[oss-security] Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" (number mark "        corsac@debia Jan 24   31/1204  " thread-indent "\"Re: [oss-security] Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)\"\n") "<CAO5rKUP1iPL87rTg5jUKE43uNxVEoAJb+aGOsAfi+vuwkbtNMg@mail.gmail.com>" ("<CAO5rKUP1iPL87rTg5jUKE43uNxVEoAJb+aGOsAfi+vuwkbtNMg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20147 invoked by uid 550); 24 Jan 2019 09:30:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20126 invoked from network); 24 Jan 2019 09:30:44 -0000
Message-ID: <e04349fc26ad12ba9a8d3b74848b42c88bba5dc3.camel@debian.org>
In-Reply-To: <CAO5rKUP1iPL87rTg5jUKE43uNxVEoAJb+aGOsAfi+vuwkbtNMg@mail.gmail.com>
References: 
	<CAO5rKUP1iPL87rTg5jUKE43uNxVEoAJb+aGOsAfi+vuwkbtNMg@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Date: Thu, 24 Jan 2019 10:30:28 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux Kernel: Missing access_ok() checks in
 IOCTL function (gpu/drm/i915 Driver)
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Wed, 2019-01-23 at 14:28 -0600, Timothy Michaud wrote:
> NOTE: I have requested a CVE identifier, and I'm sending this message, to
> make tracking of the fix easier; however, to avoid missing security fixes
> without CVE identifiers, you should *NOT* be cherry-picking a specific
> patch in response to a notification about a kernel security bug.
>=20
> Due to a lack of "access_ok()" checks in i915_gem_execbuffer2_ioctl[1], it
> is possible to escalate privileges similar to the waitid vulnerability[2]

Hi, thanks for the report.

The patch doesn't seem CC: stable, could you give us a status on the various
stable releases?

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlxJhbQACgkQ3rYcyPpX
RFsNSwf/WQH9UPK9YIFBdu47hZUKOr2tRkFosjnyEecG8HsBxI1191fXsZcGgeJk
YVzL+oWvlvQcTajPnbBLPU6qey9ZFz8AdNkXGSKXnejaPpn9LvkJntT086s6lX1i
dWSgDbhAX0PT2UO1I1k4GJ5KA8SxEIzPnqq2moB8WjcIIWuqFEFJIjYkL36Wovhp
/rKIBZGMX25zxKHzCckGYcski/KKFpgqbqbyQ2jLydht3nHczlhGP/lTa/DVr8IN
YH//6ayr0Kml/G9X8ZIV1ciu+UKQGFAVwrXNAmugNmy6tZwRVDezvP2+JfWZNAG/
bjhyac/xqmS/VquQjKKgyTQPoPBUkg=3D=3D
=3DXt1Y
-----END PGP SIGNATURE-----
