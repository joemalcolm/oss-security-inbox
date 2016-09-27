X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1483" "Tuesday" "27" "September" "2016" "16:55:12" "-0400" "Leo Famulari" "leo@famulari.name" "<20160927205512.GA25156@jasmine>" "43" "Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016092720:55:12" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        leo@famulari Sep 27   43/1483  " thread-indent "\"Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<160916195601.AA66726.SM@caleb.ins.cwru.edu>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>" "<160916195601.AA66726.SM@caleb.ins.cwru.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3078 invoked by uid 550); 27 Sep 2016 21:50:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11502 invoked from network); 27 Sep 2016 20:55:26 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=7D9tg
	Fkfdanj818CetOvO4zYtms=; b=jKExyw1wKFNTW20lj8USRD38aWZJ5dZqO+1G1
	CPhVuUY0+7fVmDEykYajcefJ++Qor6cALayTNdKmItAAYlhH9A0st4b8k9SCBCer
	NaFbNzp1qZlLUAwSJamkMmhusz68+LGFyK8YEHBOC7yTlYqvBmCdg8Sikw3U66OJ
	Vg5Itg=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=7D9tgFkfdanj818CetOvO4zYtms=; b=ASS+C
	EjV5mpTnw4XWD3MgGJE/TuJ51JDp2PBhTzFsSHlRmj4pgvwUfFidjEN87EwJQlv/
	ALjJ2sD1VAKz2Iurq6edsDYQwzQz16rvIGxTGMw6KpDvQNAX/HrqRPUI1UjB9Gnx
	m9JQvc7O8k7+ff+CwRiZ5ebQgnAf5y2ey9K9JY=
X-Sasl-enc: 6MzSoGh/DZ3xPUwsraFS7TRUX99QVD9FPsYgqk0zJ/wV 1475009713
Message-ID: <20160927205512.GA25156@jasmine>
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
 <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
 <160916195601.AA66726.SM@caleb.ins.cwru.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
In-Reply-To: <160916195601.AA66726.SM@caleb.ins.cwru.edu>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: john.haxby@oracle.com, chet.ramey@case.edu
Date: Tue, 27 Sep 2016 16:55:12 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding
 $HOSTNAME
To: oss-security@lists.openwall.com

--UugvWAfsgieZRqgk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 16, 2016 at 03:56:01PM -0400, Chet Ramey wrote:
> > > I believe the fix in parse.y is this (Chet, please correct me if I'm =
wrong):
> >=20
> > Yes, that is the current fix for this.  There are other ways to do it.
>=20
> Here's a patch to bash-4.3 that will fix this.

Hi Chet,

Thanks for the patch! Do you plan to add it to the bash-4.3-patches
series [0]?

[0]
https://ftp.gnu.org/gnu/bash/bash-4.3-patches/

--UugvWAfsgieZRqgk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX6tysAAoJECZG+jC6yn8IXkQQAOQTz7xo/vJRAEWgJqezaq8f
/kUg5Y8wUcaWfEWEJ6iP2Jp4HrlksMrNMGat4Bp1in6f37wvFuwM3ynlfW1IksKm
tEzskoB8sKM5ChX7aCMQDEkdqFBtP92YuZUUYfAGVFuG+aNIOe8VR/TuwBFZMG9M
tc4XBX1x/KzCIyIDV7XkhYRhA6EYKvTh1DUyeI3whI0IKNZgsROC0u1AsuVtpX1P
9FGS04u10hdUyQgt8FzGI/z4qyD1qkhgx/jM8P8zbnKbTMbR5wedKpqfl+afINFg
gXYhKGSzAc9l9SUDvQXRsHUjSLoLa+8UouOeoUrZfPjS8Ot015vlAypTciYqvU0+
+RaMkznhKffipwWfuEqPDKCqmdb3S9i8HHzjvIDE39gdEPIXQW/sjj0R8XHgx6gx
xiiyILYKpJoQYuOQuIseWc+4JsjWSNrn+uvQ1iXbhufw9aS+dPydWFaBesPwYx+M
1e9eHz2QvxwXRUBi+I2UVJPTCrR5T/jP7cLAE16AofxPqWBAHKyugYVQ04AF4wQ9
56b2LepqwPfHSJ5nswA2zNlnpEyy0fJmjD0252saETLxfbwoAm2n6ifgy8lSJ1Lr
iCEsnrBKUZf0m5rZm3H4ukM3l2UvkZ9rVKnahySE8vozLakWVg30yvZh8RXjC2QD
Rz9u1AqLbcwPq/6Xmm44
=TDwW
-----END PGP SIGNATURE-----

--UugvWAfsgieZRqgk--
