X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4090" "Tuesday" "1" "November" "2016" "10:19:36" "+0100" "Andrej Nemec" "anemec@redhat.com" "<2a996479-3555-7830-9f01-62cec52c72cf@redhat.com>" "111" "Re: [oss-security] Memcached 1.4.32 and earlier buffer overflow." nil nil nil "11" "2016110109:19:36" "[oss-security] Memcached 1.4.32 and earlier buffer overflow." (number mark "U       anemec@redha Nov  1  111/4090  " thread-indent "\"Re: [oss-security] Memcached 1.4.32 and earlier buffer overflow.\"\n") "<alpine.DEB.2.20.1610311531190.20334@di7>" ("<alpine.DEB.2.20.1610311531190.20334@di7>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11402 invoked by uid 550); 1 Nov 2016 09:19:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11384 invoked from network); 1 Nov 2016 09:19:50 -0000
To: oss-security@lists.openwall.com
References: <alpine.DEB.2.20.1610311531190.20334@di7>
From: Andrej Nemec <anemec@redhat.com>
Message-ID: <2a996479-3555-7830-9f01-62cec52c72cf@redhat.com>
Date: Tue, 1 Nov 2016 10:19:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1610311531190.20334@di7>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ghrREkjaAnDQ0BTKwXL9XFU2lJTKRtSak"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 01 Nov 2016 09:19:38 +0000 (UTC)
Subject: Re: [oss-security] Memcached 1.4.32 and earlier buffer overflow.

--ghrREkjaAnDQ0BTKwXL9XFU2lJTKRtSak
Content-Type: multipart/mixed; boundary="xJOcmpQJqxCj5aASAEegSeoRPU2LLJiHb";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <2a996479-3555-7830-9f01-62cec52c72cf@redhat.com>
Subject: Re: [oss-security] Memcached 1.4.32 and earlier buffer overflow.
References: <alpine.DEB.2.20.1610311531190.20334@di7>
In-Reply-To: <alpine.DEB.2.20.1610311531190.20334@di7>

--xJOcmpQJqxCj5aASAEegSeoRPU2LLJiHb
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

As per Talos page, there seems to be three issues.

CVE-2016-8704 - Memcached server append/prepend remote code execution
vulnerability

An integer overflow in the process_bin_append_prepend function which is
responsible for processing multiple commands of Memcached binary
protocol can be abused to cause heap overflow and lead to remote code
execution.

http://www.talosintelligence.com/reports/TALOS-2016-0219/

CVE-2016-8705 - Memcached server update remote code execution vulnerability

Multiple integer overflows in process_bin_update function which is
responsible for processing multiple commands of Memcached binary
protocol can be abused to cause heap overflow and lead to remote code
execution.

http://www.talosintelligence.com/reports/TALOS-2016-0220/

CVE-2016-8706 - Memcached server SASL authentication remote code
execution vulnerability

An integer overflow in process_bin_sasl_auth function which is
responsible for authentication commands of Memcached binary protocol can
be abused to cause heap overflow and lead to remote code execution.

http://www.talosintelligence.com/reports/TALOS-2016-0221/

There is also a talos blog post about these issues:

http://blog.talosintel.com/2016/10/memcached-vulnerabilities.html

Thanks for sharing!

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA

On 10/31/2016 11:35 PM, dormando wrote:
> Release notes with tarball here:
> https://github.com/memcached/memcached/wiki/ReleaseNotes1433
>
> Copy/paste from the relase notes:
> Serious remote code execution bugs are fixed in this release.
>
> The bugs are related to the binary protocol as well as SASL authentication
> of the binary protocol.
>
> If you do not use the binary protocol at all, a workaround is to start
> memcached with -B ascii - otherwise you will need the patch in this
> release.
>
> The diff may apply cleanly to older versions as the affected code has not
> changed in a long time.
>
> Full details of the issues may be found here:
> http://blog.talosintel.com/2016/10/memcached-vulnerabilities.html
>
> In summary: two binary protocol parsing errors, and a SASL authentication
> parsing error allows buffer overflows of keys into arbitrary memory
> space. With enough work undesireable effects are possible.
>
> CVE's were requested and assigned by the reporter. I unfortunately don't
> have them handy :(
>
> -Dormando



--xJOcmpQJqxCj5aASAEegSeoRPU2LLJiHb--

--ghrREkjaAnDQ0BTKwXL9XFU2lJTKRtSak
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJYGF4oAAoJEIkERKHVe23ay6UQAIHf9jnyd4SD4Nduedog5QnD
myH+8bCeEeeH7HyBHilgz04ZR+IUthdElrn3/DWiiuu/IVInC4AnbmBLfIU+oDqr
QXzTbmelhG6FQUXGe8PH7tFBeN0FiQJ5uV9yqGJ7hKwPy/RYtAcaHco8N5xCKlIT
h/wFRFtNWwcHlzx+51gRf8Xo7zhQ0FYwqm0Q/3CWazvRN9K5rs/o/Mj7gjd/5GkS
SaUBlM6Ms0CHhjagNnpJGqFKmTpLe9PxHniMjk+r7juIpi7vOUKHLZ+EIdZUNn8l
pbBJVPFekp+X58YwPPzZHsgoU+KFEhXwxulXOGL8arpKZ7kU5T8kGgP19ooPSosq
FVoDkt8l7J+1AJFWyr6hGRcVHnX2yAl1/1E6fdtbayTUOLdLVA+cE/ydYGORJi8r
+SC2jjePk7I+vdojd5afj0mstn+p9iRjCWijyKv3mDnlPgdUvlAaIOftAwx62P3n
c3M1poGUK0QhRrg9v3JBxF+8zOn/0EPVFWNKjbTA4hFHZqZz8hWvlCUwyBYOFeIs
nZ7X/vTSmgxYJtWbvegnxLYcLJhCBVvUz5+C2usA9+cip9ctZDqlfC5CcdN3hJGX
YynjWDH/PkRVbsnkPwkfmnkh4R593XP3qo+w8MrEBrz6fXPbnU0s15Pc6P2NPtIh
J+AAowGWnrLp1iwTHuTN
=DkTq
-----END PGP SIGNATURE-----

--ghrREkjaAnDQ0BTKwXL9XFU2lJTKRtSak--
