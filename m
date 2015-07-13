X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2096" "Tuesday" "14" "July" "2015" "00:03:03" "+0200" "Alessandro Ghedini" "ghedo@debian.org" "<20150713220303.GA7107@kronk.local>" "56" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" nil nil nil "7" "2015071322:03:03" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" (number mark "        ghedo@debian Jul 14   56/2096  " thread-indent "\"[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow\"\n") "<20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>" ("<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>" "<20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17456 invoked by uid 550); 13 Jul 2015 22:03:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17433 invoked from network); 13 Jul 2015 22:03:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=+iPXBs3qFmuvTOJ7QqKCNCX2hAzphi3cjKEoZHAPH5A=;
        b=h3tVh3vZxU8NKJby1ONOS3idMI7Pyw8BjVoT0h9FWcD7mXt8SYddJX8eJD6fGk0JqS
         bXsTXMuzX+uqUJSbM5hEic61B16cUHYLEMFedtkHFb7V+60vnAplo5Nxs4O9rwXmaLJE
         x8kEJJ4IhoEI32TiRPdNhbm7NlLa/PFtYY8nzl/FPaCRluGc8WA9tech8CSwKCapKTQ6
         6qV8yBQxtnlBXCZdUl3NgkrI1cglAjNrWvbQ/stkCOsKR/SZ/Taovh+XhNcahcX2mhj0
         GHg052fwjVdkgWLtbJR4lh7NH2rokRgT5dIy8HO5JZEjENgIizFpAKCeQGQvo3BuwCUM
         xifw==
X-Received: by 10.194.176.201 with SMTP id ck9mr70880676wjc.108.1436824985079;
        Mon, 13 Jul 2015 15:03:05 -0700 (PDT)
Message-ID: <20150713220303.GA7107@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
 <20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
In-Reply-To: <20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Tue, 14 Jul 2015 00:03:03 +0200
From: Alessandro Ghedini <ghedo@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow
To: oss-security@lists.openwall.com

--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 13, 2015 at 05:37:49PM -0400, cve-assign@mitre.org wrote:
> One complication here is that the CVE request was sent to oss-security
> without mentioning that a CVE request had been sent privately to one
> Linux distribution a few weeks before that. See:
>=20
>   https://github.com/htacg/tidy-html5/issues/217#issue-84488886
>=20
>   I contacted Debian about the issue on May 17, so far I have not
>   received a response about a CVE assignment.
>   ...
>   Date: Sun, May 17, 2015 at 8:11 PM
>   Subject: tidy heap-buffer-overflow
>   To: security@debian.org
>=20
> (added security@debian.org to the Cc line)
>=20
> Our only question for Debian is: did Debian already assign any CVE
> ID(s) for this? If not, then MITRE will.

No, we did not assign any CVE for this issue.

FWIW the reason was that by the time we got around to replying to Fernando,=
 the
issue had already been made public on GitHub so we recommended him to come
straight to oss-security for a CVE assignment.

Cheers

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVpDWUAAoJEK+lG9bN5XPL2S4P+wetzsgCO1B0FtZhXzRDMv8C
FUBJ+3Clcy17Hc+7CZdv5PNDaH1ET/3WLVBzlpXsddFyVp6WxbieF7XcABM0FYwp
0/cUd+etAAcjNOKw4+IKkSYpAB0uXQWQsvDosUG8rdENFkrU43ccPl8gX7CXRCcU
MhnnvvH1BuruymvIZsht+GGbxdqMfn+e2Fk9+DTihY6B5KWAxgGveO/+HCKMTswE
xJSn/bhXuxCrQeKQuuFahSFFRwNgfPUKN6sKVshQBWCKeb18gOBJNTKebAkvj9/6
4ksWyk8FDfEYHQs+VVHW0i+Wx4xWGvFt+Mkk/rpAKslT4iqaoWdFDtiCoLQQnZbW
KWJIkAqLK3WsEtb8e6Q4EVCp7rTZj6YYb2gW46khcTdXQTfRfoaGBIk2MI3Rqevq
ebaLk72cnzb8/NGm/YM3/SwhgUZ+t92AAVC1z6+Pk6AaJHCpcLBtjcNrxWsB63Z3
10unny2NaR+wvxIV6QATD8kfkKTlJ6I4GNG4h4wXdQD0eZlBLobzW5UZHF9n2ptP
xjecIJx0xn/EyQ6mCtIndrsUl/JGKxbN7K1fG3fJEoY9inQWF9yZCDj5pbq65KyD
cjADyzuRtxZ3bPAAeuBOlej5/oUDh6YvDpIVlbMpgQSK1gKUttrHjetZLlYtAZQi
V44F4WQNj5hb8f0d9Oqz
=D80U
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--
