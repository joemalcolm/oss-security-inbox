X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2927" "Sunday" "30" "January" "2022" "21:36:15" "+0000" "Sam James" "sam@gentoo.org" nil "74" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil "1" nil nil (number mark "U       sam@gentoo.o Jan 30   74/2927  " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14004 invoked by uid 550); 30 Jan 2022 22:12:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30288 invoked from network); 30 Jan 2022 21:36:38 -0000
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D4B80F4A-5EE5-476D-9005-3E7AED341BF8";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
From: Sam James <sam@gentoo.org>
In-Reply-To: <YfWgu/Uv+2r3TpdL@jasmine.lan>
Date: Sun, 30 Jan 2022 21:36:15 +0000
Cc: John Helmert III <ajak@gentoo.org>
Message-Id: <388160F1-1B99-47C8-A904-3C204DA7D3DF@gentoo.org>
References: <cb8ce1dd-6dee-b6f9-4081-f662887ce835@igalia.com>
 <YezR31IUUe48w7KH@sol.nexus.lan> <Ye2pUrZ81PjFsary@jasmine.lan>
 <Ye6z5G/Dq89PQ9jz@sol.nexus.lan> <YfWgu/Uv+2r3TpdL@jasmine.lan>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3693.60.0.1.1)
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0001

--Apple-Mail=_D4B80F4A-5EE5-476D-9005-3E7AED341BF8
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii



> On 29 Jan 2022, at 20:16, Leo Famulari <leo@famulari.name> wrote:
> 
> On Mon, Jan 24, 2022 at 08:13:15AM -0600, John Helmert III wrote:
>> I don't think it makes much sense for every downstream to make these
>> kinds of assumptions.
> 
> Why not? History shows that this assumption will almost always be
> correct for WebKit.
> 
>> Besides, this doesn't seem to be what's
>> happening in practice. For example, WSA-2021-0006 was released on
>> October 26, 2021 with vulnerabilities addressed in 2.34.0, released on
>> September 22, but RedHat's bugs for it were only opened in the days
>> after the *security advisory's* release, not the software release. It
>> doesn't help that most most distribution security tooling seems to be
>> oriented around CVEs, which aren't released for WebKit until after the
>> associated advisory.
> 
> I'm sure that Red Hat's package maintainers know what a WebKit update
> means. Presumably they are busy and their KPIs prioritize fixing CVEs,
> so they don't act as proactively as one might prefer.
> 
> In general, it seems that WebKit is handling these issues like Linux.
> Observers know that important bugs are fixed constantly in software of
> this size and complexity. Relying only on CVEs is too reactive and
> limited in scope to provide a meaningful security stance, increasingly
> so since the CVE assignment system stopped working in the last few
> years.

This isn't an argument against WebKit Doing The Right Thing (TM).

There's no need for us to rehash the standard arguments for/against
bothering with CVEs at all.

The point is that CVE notifications are useful for some of us and
it _seems_ (obviously I can't know) that they're intentionally not
published at the same time as release notes, often a week or more later.

I, and John, are just saying that if possible, it'd be a big help for
them to do so.

Best,
sam

--Apple-Mail=_D4B80F4A-5EE5-476D-9005-3E7AED341BF8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQGTBAEBCgB9FiEEYOpPv/uDUzOcqtTy9JIoEO6gSDsFAmH3BM9fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDYw
RUE0RkJGRkI4MzUzMzM5Q0FBRDRGMkY0OTIyODEwRUVBMDQ4M0IACgkQ9JIoEO6g
SDuXxwf+K8h36WGosHTz0ihhDKNnAX6MB7uiTQ/GkGI97C6YSS6ig7VAzRRBVE3/
1owsivRF6BKCwTWPsk35gNY7pO+QdXOarbLNClrU9Nz535heFuKk9rcIknD1ixsb
+n4MaH4NnAFXuMy5VzE1AYpb3tm/uirrKhh4Xh+FZ4bD3x2UzI13vXNLwn7xIJ1p
27rAmc1Drqlg40UatLKIhL3UIcipci6XofBIym7idYJHC40xjslyNVBxKqZd7dkf
kiRitys9Y3RxgeNv4s/N8piMnpXof2ocrQWx6BI4U+nIq/3f4PKcbtmrr5o3Cv3k
dTFQlEHguH6jj4S5+P3FBq6V6PZw5g==
=3cLT
-----END PGP SIGNATURE-----

--Apple-Mail=_D4B80F4A-5EE5-476D-9005-3E7AED341BF8--
