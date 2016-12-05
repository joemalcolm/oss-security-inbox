X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4674" "Monday" "5" "December" "2016" "16:18:37" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<0c4d4271-436b-044a-0023-a5131e6b5978@canonical.com>" "129" "[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow" nil nil nil "12" "2016120522:18:37" "[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow" (number mark "U       tyhicks@cano Dec  5  129/4674  " thread-indent "\"[oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow\"\n") "<16120515504112_2020046C@antinode.info>" ("<16120515504112_2020046C@antinode.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5839 invoked by uid 550); 5 Dec 2016 22:18:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5819 invoked from network); 5 Dec 2016 22:18:58 -0000
To: "Steven M. Schweda" <sms@antinode.info>, oss-security@lists.openwall.com
References: <16120515504112_2020046C@antinode.info>
Cc: security@ubuntu.com, Info-ZIP-Dev@goatley.com
From: Tyler Hicks <tyhicks@canonical.com>
Message-ID: <0c4d4271-436b-044a-0023-a5131e6b5978@canonical.com>
Date: Mon, 5 Dec 2016 16:18:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <16120515504112_2020046C@antinode.info>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="wJ24toIT3UHGXBqjx2H3sldDPLKXk1u8N"
Subject: [oss-security] Re: CVE Request: Info-Zip zipinfo buffer overflow

--wJ24toIT3UHGXBqjx2H3sldDPLKXk1u8N
Content-Type: multipart/mixed; boundary="UaSID4GgUKQW5KbVIqK4f3DvVHxbQd7KK";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: "Steven M. Schweda" <sms@antinode.info>, oss-security@lists.openwall.com
Cc: security@ubuntu.com, Info-ZIP-Dev@goatley.com
Message-ID: <0c4d4271-436b-044a-0023-a5131e6b5978@canonical.com>
Subject: Re: CVE Request: Info-Zip zipinfo buffer overflow
References: <16120515504112_2020046C@antinode.info>
In-Reply-To: <16120515504112_2020046C@antinode.info>

--UaSID4GgUKQW5KbVIqK4f3DvVHxbQd7KK
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 12/05/2016 03:50 PM, Steven M. Schweda wrote:
> From: Tyler Hicks <tyhicks@canonical.com>
>=20
>    Thanks for the (thorough, helpful) report.

I appreciate it but Alexis deserves most of the credit.

>=20
>> Alexis Vanden Eijnde has discovered a zipinfo buffer overflow and
>> reported it here:
>>
>>   https://launchpad.net/bugs/1643750
>>
>> It is very similar to, but different than, this `unzip -l` crasher:
>>
>>   http://www.openwall.com/lists/oss-security/2014/11/03/5
>=20
>    It is.  And the easy fix is also very similar (and should appear in
> the next UnZip release, version 6.1e beta):

Thanks for the quick fix. Is there a public code repository available so
that we can reference a specific commit that fixes this issue?

>=20
> ALP $ gdiff zipinfo.c;39 zipinfo.c
> 2568c2568,2579
> <         sprintf(&methbuf[1], "%03u", G.crec.compression_method);
> ---
>>         /* 2016-12-05 SMS.
>>          * https://launchpad.net/bugs/1643750
>>          * Unexpectedly large compression methods overflow
>>          * &methbuf[].  Use the old, three-digit decimal format
>>          * for values which fit.  Otherwise, sacrifice the "u",
>>          * and use four-digit hexadecimal.
>>          */
>>         if (G.crec.compression_method <=3D 999) {
>>             sprintf( &methbuf[ 1], "%03u", G.crec.compression_method);
>>         } else {
>>             sprintf( &methbuf[ 0], "%04X", G.crec.compression_method);
>>         }
>=20
>    Typical output (pre-release UnZip 6.1e beta, with some minor,
> unrelated report format changes from UnZip 6.0):
>=20
>    Old:
>=20
> ALP $ unzip6l -Z PoZ.zip
> Archive:  ALP$DKC0:[UTILITY.SOURCE.ZIP.test_mthd_ovflo]PoZ.zip;1
> Zip file size: 154 bytes, number of entries: 1
> -rw-rw-r--  3.0 unx        2 tx u65535 16-Nov-21 19:07 a
>                                 ^^^^^^
> 1 file, 2 bytes uncompressed, 2 bytes compressed:  0.0%
>=20
>    New/next:
>=20
> ALP $ unzipx -Z PoZ.zip
> Archive:  ALP$DKC0:[UTILITY.SOURCE.ZIP.test_mthd_ovflo]PoZ.zip;1
> Archive size: 154 bytes; Members: 1
> -rw-rw-r--  3.0 unx        2 tx FFFF 16-Nov-21 19:07 a
>                                 ^^^^
> Members: 1; Bytes uncompressed: 2, compressed: 2, 0.0%
> Directories: 0, Files: 1, Links: 0
>=20
>> The zipinfo buffer overflow occurs due to a flaw in zipinfo.c's
>> zi_short() function:
>> [...]
>=20
>    Yeah.  We should have noticed this whan the "unzip -l" complaint was
> made.
>=20
>> Please assign a CVE. Also, consider assigning a CVE to the related
>> `unzip -l` issue from 2014. Thank you!
>=20
>    Is that something I should do?  (I normally get reports with CVEs; I
> have never created one.)

Nope. As you probably noticed, MITRE just assigned a CVE. It likely
helped that you confirmed the issue. Thanks again!

Tyler

>=20
> ------------------------------------------------------------------------
>=20
>    Steven M. Schweda               sms@antinode-info
>=20



--UaSID4GgUKQW5KbVIqK4f3DvVHxbQd7KK--

--wJ24toIT3UHGXBqjx2H3sldDPLKXk1u8N
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYRee9AAoJENaSAD2qAscKE/YQALOokHGWaCVUBucgG7q/e5Hc
WUx96m5MtixOEsNTSsNBv0GzhsboasxjvUNotWqJr3KKQ5yFRleWWsdcwZCaFayR
m9NY6iV3okD0ojpdSXegSAUkpT5UY9Mx2/TWjlEztPFTKq9g9Xedn76Nos59lvLn
QCYodGme8i2F3uxllEk1YZ7kuytjJLubw6nS5dgPGVg+IrIS41sGBO94DAwtJ0uW
c7evIfrj5C3xEGh02RsSfB0hPAfkR6vEwEybWUS7dOYUcJs7SP84widhpQqxAETg
dlbA6E/cv1QtS7Gd9ezSo3cAQeeUgB72qg2e2nAvudY4WSETDz3j1dR5tcp69ufm
pYV4bDBMiym8LhdGMvaWezTZaS53ikG4aVx2gwRf2hchaQ4GaLg6O36cRJATFkSK
gFlBs7Zg5/oGNKXu6BucCMA0MWC8BJLDCeC2baX5uxPQUNw/TtfBypK/YlhR7a/n
2umTn8DufDUiO93jsbMRLB0ejRw9BCF7efSYURvF7qS+E7aSzkPxDKiKybuCQyIq
zYxwaKnJZHFEoGthQeunF6LmNEzpjDL7FFzGVEK+qtXKENqZrDXQGgq+XPM/v8Yi
NnpdchyNXyUa0DXFglCKJAJMja29veERC0XPZa8QFQSObGbHqQTC5v5t1tplhokT
0kukM8UC/1rMtZgjqFXx
=AZD3
-----END PGP SIGNATURE-----

--wJ24toIT3UHGXBqjx2H3sldDPLKXk1u8N--
