X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2621" "Saturday" "13" "February" "2016" "23:03:06" "+0100" "Kristian Fiskerstrand" "kristian.fiskerstrand@sumptuouscapital.com" "<56BFA81A.30601@sumptuouscapital.com>" "65" "Re: [oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software" "^Date:" nil nil "2" "2016021322:03:06" "[oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software" (number mark "        kristian.fis Feb 13   65/2621  " thread-indent "\"Re: [oss-security] Thoughts about security of Linux distributor collaboration platforms, bugtrackers for opensource software\"\n") "<20160213141513.06096f21@pc1>" ("<9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>" "<20160213141513.06096f21@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27696 invoked by uid 550); 13 Feb 2016 21:56:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27678 invoked from network); 13 Feb 2016 21:56:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sumptuouscapital-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=QJAV5VxJ8wSofYWLBYelGtwUz1Bvzej3TwwQ838GbK0=;
        b=aJxKHkkWiebCbbC4flv5+FlLemNHJCjb+/XVJotrDcTQ3zo21HjzNk0dRjS29seac4
         H1KverYN1xSA3CnkFctscNxkMRu5MqYRzbyaWBWEHRAA6lTeKYkb0htTIjCi5YQBZJPu
         JQGk3n3jl6yEp94RlCsoeiUYj/WF51RbjAUN3VNdv+N8/WnrLpoRRHh6hBVmqa1ispTA
         aliIIhRVfJbGZU3JZh3eqbBu2nfo4cXxYte9VoU4wTjgipAOHVWcbip/a30WXV7y/ZG/
         QHfjVrtvhUTiICx9aJcwG5X7s8cVtpojDpFOekPlv572v3yn+R2SORRcFnNTkEz9Y4Uw
         A3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type;
        bh=QJAV5VxJ8wSofYWLBYelGtwUz1Bvzej3TwwQ838GbK0=;
        b=BW3eAEA5yQTXfE8NxCFXXMw0ryWx7mCQqQaBA9/J8Hd+NKzHjnn9DQtT4E2D85iT5b
         WepiNaBAr0M8RowJRnMI2siNePafseNvxfX55NRntNqs03p5SCd4zSeKfi72bF8HoRvd
         pNETTMsxUhXisHwIROkuowtmtpv9eudMwrR9uYBQCzd7hjLQEgJKt7Ux58VvyQyvt7bl
         ZdBU60esskyrolFRfalAvTx5cwMWHZbB+wvL10j5w9Px+gU9/I8qd15EJdgrXOM9C8Md
         Wg/pXyT6xfvSXHSwubdAZ0T7+ro3wJkur/Ph6a8l7BvvBNRMmFwgE69a0NPGLNALGbQW
         hTGg==
X-Gm-Message-State: AG10YOQfgL7Hz80WkUxQUd1Y64XlaIaqPGj4g3fPRnbzVcSOizRZqx9fEF/ekgkBqVXJYQ==
X-Received: by 10.25.18.25 with SMTP id h25mr2912036lfi.165.1455400606764;
        Sat, 13 Feb 2016 13:56:46 -0800 (PST)
References: <9d8ff9da-5b07-588e-f2c5-38ba1e46b27c@halfdog.net>
 <20160213141513.06096f21@pc1>
Message-ID: <56BFA81A.30601@sumptuouscapital.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <20160213141513.06096f21@pc1>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="a4bRtLDpJsE0JxpD96jWQRFhwJfgMniGg"
Date: Sat, 13 Feb 2016 23:03:06 +0100
From: Kristian Fiskerstrand <kristian.fiskerstrand@sumptuouscapital.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thoughts about security of Linux distributor
 collaboration platforms, bugtrackers for opensource software
To: oss-security@lists.openwall.com

--a4bRtLDpJsE0JxpD96jWQRFhwJfgMniGg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 02/13/2016 02:15 PM, Hanno B=C3=B6ck wrote:
> On Sat, 13 Feb 2016 05:52:44 +0000 halfdog <me@halfdog.net> wrote:
>=20
>> Hence really critical security material perhaps should not go to
>> such platforms, e.g. Ubuntu Launchpad, or the platform should be
>> modified to send security issues only in encrypted mails without
>> talkative title, members without mail public key registered
>> should get only message "Bug [Number]: Info changed" including
>> the HTTPS link to the issue in the platform.
>=20
> This is roughly what mozilla does and I like it a lot. They have a
> bug tracker over https and you can add a PGP key. If you don't add
> a PGP key and report a security bug you won't get updates via mail=20
> unencrypted.
>=20

Sadly the bugzilla implementation, or rather the perl module they are
using for it, is flawed and encrypts to the first public key it
considers viable [0,1] irrespective of usage flags [2], resulting in
un-decryptable emails unless modifying the OpenPGP certificate
presented to secureEmail. I'd really like to see this fixed, but I'm
not sure if the scope is proper for a project such as GSoC. I actually
just wrote up a slight summary of such a project on [3]

[0] https://bugzilla.mozilla.org/show_bug.cgi?id=3D790487
[1] https://github.com/btrott/Crypt-OpenPGP/issues/9
[2] http://tools.ietf.org/html/rfc4880#section-5.2.3.21
[3]
https://download.sumptuouscapital.com/GSoC/perl-bugzilla-openpgp-potential-=
gsoc-project.txt

--=20
----------------------------
Kristian Fiskerstrand
Blog: https://blog.sumptuouscapital.com
Twitter: @krifisk
----------------------------
Public OpenPGP key at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3
----------------------------
Aquila non capit muscas
The eagle does not hunt flies


--a4bRtLDpJsE0JxpD96jWQRFhwJfgMniGg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWv6geAAoJECULev7WN52FUfQIAKEy+r/0K/HWqxKFyzTUdRSF
N1gncGHLtWWHuMPYmDSHPWb0uJHnPd5RM1C9/N1d6mOLwk9Mf4wfPR6g5LrwtC3j
XfJSvLEflxAQWaeoyeTgp2Rii7sdCoVxhiij0rDA4oTlZa6YEY+IuGUhOfmZCJFD
eeyDXa1lnL92BawLCL4Q3ekIhzxfpa5HV4CkbHVili/TXMV/q6RvjTAHG1PSGR2f
+vaOhcNLBtiRub4aY/uwvsl6HmHbmgaqz+wkP2nM8sS+mnj2Hm4XXVqLeVxdn6SN
+aNHz2fLesx4L5CkpXUiUkwov4VRuGN8plEkpNluUAh+MRIaqC0KTy0ZnSLD9uc=
=6NcT
-----END PGP SIGNATURE-----

--a4bRtLDpJsE0JxpD96jWQRFhwJfgMniGg--
