X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2347" "Monday" "6" "July" "2015" "01:56:03" "+0100" "Ben Hutchings" "benh@debian.org" "<1436144163.7337.64.camel@debian.org>" "57" "[oss-security] Re: CVE Request: UDP checksum DoS" nil nil nil "7" "2015070600:56:03" "[oss-security] Re: CVE Request: UDP checksum DoS" (number mark "        benh@debian. Jul  6   57/2347  " thread-indent "\"[oss-security] Re: CVE Request: UDP checksum DoS\"\n") "<20150702024857.14E9A72E0D8@smtpvbsrv1.mitre.org>" ("<20150702024857.14E9A72E0D8@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13832 invoked by uid 550); 6 Jul 2015 05:07:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23575 invoked from network); 6 Jul 2015 00:56:21 -0000
Message-ID: <1436144163.7337.64.camel@debian.org>
In-Reply-To: <20150702024857.14E9A72E0D8@smtpvbsrv1.mitre.org>
References: <20150702024857.14E9A72E0D8@smtpvbsrv1.mitre.org>
Organization: Debian project
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-FzQBLQnYzrnBKRo9lOEy"
X-Mailer: Evolution 3.16.3-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.4.249
X-SA-Exim-Mail-From: benh@debian.org
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: oss-security@lists.openwall.com
Date: Mon, 06 Jul 2015 01:56:03 +0100
From: Ben Hutchings <benh@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: UDP checksum DoS
To: cve-assign@mitre.org, carnil@debian.org

--=-FzQBLQnYzrnBKRo9lOEy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2015-07-01 at 22:48 -0400, cve-assign@mitre.org wrote:
> >=20
> > https://twitter.com/grsecurity/status/605854034260426753
> > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/=
?id=3Dbeb39db59d14990e401e235faf66a6b9b31240b0
>=20
> > remote DoS via flood of UDP packets with invalid checksums
>=20
> It appears that you are primarily asking for a CVE ID for the issue
> involving the absence of a cond_resched call. Use CVE-2015-5364.
>=20
> However, the presence of "return -EAGAIN" may also have been a
> security problem in some realistic circumstances. For example, maybe
> there's an attacker who can't transmit a flood with invalid checksums,
> but can sometimes inject one packet with an invalid checksum. The
> goal of this attacker isn't to cause a system hang; the goal is to
> cause an EPOLLET epoll application to stop reading for an indefinitely
> long period of time. This scenario can't also be covered by
> CVE-2015-5364. Is it better to have no CVE ID at all, e.g., is
> udp_recvmsg/udpv6_recvmsg simply not intended to defend against this
> scenario?

It seems reasonable to assign a second CVE ID to that issue.

Ben.

--=20
Ben Hutchings - Debian developer, member of Linux kernel and LTS teams


--=-FzQBLQnYzrnBKRo9lOEy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUAVZnSI+e/yOyVhhEJAQo7Vw/8D7Ba35oswDenglrQKcIOXkzKiVp0Z3Tx
dQLrI3L6ovar9CJGCUy/4gSpS+HE9cGkYeAqZ7W4mdq5oEtxkptYguK2y4Bekr3N
uYddik6mHry0Vyc0fapc0VqzN7U8avHAHdcqVZDx4Pg7EZM3oYlws3yQxVwdNwha
Cpik4JfCQ3S8FzdNzE8YSu4PQXbjZBA0o930B/x3DARAWcUdqn1CWux+cF5bFCGL
ny6d80M0hkn1Ilo+/+D/ARxXoEnd5KSWER98o5vwI4dto7FxlI9WkF5NhkNU3vtq
8SctpR/WX2L3/ztapq78SVYiyOely21+Gu9DxCQtfrIqAqS5gACtVQcA1fdi4m1q
DJsrlmhMi/EZGOLy8DJKonuAn0EjA/7KjCXcv4aZg3fcyNufXh+b94xVN7fd7Mfz
isHm+6kHhDMi/A/oyRvrTjL+lKvzO0pCu/pU0mkyx4JH3nJvjfeuu7dmYluZSjaM
y53FHNFWfVKzVQFzBtZXSkM26/BLVUx6rzmDt0OBdBxWMgZPcWTmAYzYvBjyJKj+
qH9McVper/1k6JG8/4FZGVFRwpV2Yn/ZBq67zG1YwFNKvTS2S3cMJhrCMGZyccb/
S5r9wRKXEdkVRChVnqY8cBnUsmhIviUpQaE9UE7WYT4ltJmukPddXJVPj2I9UK/a
XqUwLa2Anew=
=/KtZ
-----END PGP SIGNATURE-----

--=-FzQBLQnYzrnBKRo9lOEy--
