X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2243" "Tuesday" "14" "July" "2015" "00:21:23" "+0200" "Alessandro Ghedini" "ghedo@debian.org" "<20150713222123.GA7882@kronk.local>" "59" "Re: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" nil nil nil "7" "2015071322:21:23" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" (number mark "        ghedo@debian Jul 14   59/2243  " thread-indent "\"Re: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow\"\n") "<20150713220303.GA7107@kronk.local>" ("<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>" "<20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>" "<20150713220303.GA7107@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32322 invoked by uid 550); 13 Jul 2015 22:21:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32301 invoked from network); 13 Jul 2015 22:21:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=mP9W23E+0kHK+ubG4vNvEWloq3u6L5k7mm+jNxB9zrE=;
        b=lG9okkOE3N7C/qo7/Jxu7zZXfI7KZMjsN/7G0GC6nAFuzot4t6b7DCutFd6X+vFspz
         p29yQsRt5krRrwrSfB1GoEPepQUQPtrBPcdDYEU3cz2LkzEiBJr5esE7/PENlTltQug1
         WZ0hpF/yg3XbtPCsox7yUlvbZmev6lcw7r2nVTf1TyLPWu2kBJGsfo1Ft6Ue+Ye5xi96
         fTZh39wlVVbIAXdiXDK3ydgBo6lvxiHNBRjqBUR+nG4hAUH02QzWDs3zsHL70YymHcVt
         nioyeFNZS9cxtSGvHm0u3kJmgOrRFgwon2RChiNDgTpNEvdQjDQ346UU5OvTGEeKJIFG
         Js9w==
X-Received: by 10.181.25.234 with SMTP id it10mr26581658wid.41.1436826084729;
        Mon, 13 Jul 2015 15:21:24 -0700 (PDT)
Message-ID: <20150713222123.GA7882@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
 <20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>
 <20150713220303.GA7107@kronk.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
In-Reply-To: <20150713220303.GA7107@kronk.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Tue, 14 Jul 2015 00:21:23 +0200
From: Alessandro Ghedini <ghedo@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request - tidy 0.99 / tidy5
 heap-buffer-overflow
To: oss-security@lists.openwall.com

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 14, 2015 at 12:03:03AM +0200, Alessandro Ghedini wrote:
> On Mon, Jul 13, 2015 at 05:37:49PM -0400, cve-assign@mitre.org wrote:
> > One complication here is that the CVE request was sent to oss-security
> > without mentioning that a CVE request had been sent privately to one
> > Linux distribution a few weeks before that. See:
> >=20
> >   https://github.com/htacg/tidy-html5/issues/217#issue-84488886
> >=20
> >   I contacted Debian about the issue on May 17, so far I have not
> >   received a response about a CVE assignment.
> >   ...
> >   Date: Sun, May 17, 2015 at 8:11 PM
> >   Subject: tidy heap-buffer-overflow
> >   To: security@debian.org
> >=20
> > (added security@debian.org to the Cc line)
> >=20
> > Our only question for Debian is: did Debian already assign any CVE
> > ID(s) for this? If not, then MITRE will.
>=20
> No, we did not assign any CVE for this issue.
>=20
> FWIW the reason was that by the time we got around to replying to Fernand=
o, the
> issue had already been made public on GitHub so we recommended him to come
> straight to oss-security for a CVE assignment.

CCing cve-assign as well.

Cheers

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVpDnfAAoJEK+lG9bN5XPL5BwQAIUdQXh+F5ch+cM9cmQn5dnH
yXXyj/iLsiGU/t+A0YBFC446SRJAYshV4x53DyzuoF1pyWiCj3pVmalg+4tkKp6+
JS08ksStbvpkNCrGNtbGyzIxee5z9EzZChHBE0CPf529WgAsO0ncede2l78Rxp10
5RIexwOtD1BCmYjgiN1C+NVoswph3tuNJQzosZnuiOg1tswJ1vKbUuQ2187ujbx4
47v79siadev7yTtuXih8HexPxl7CPlozJt1iRCnA7wruhH9WZMf7RQt+/dZ/Z4zL
MYZnYDDSa1I3U+CJCnRR2sWgpSrEISd1D3tVFYXmRTorkeSmJSYyzz2ek7eRb8n2
BtaGYjocq225W2v5A221kWX2n/e7wyCzPFzOvwM/Z8TgAWBEhhHymoUv/NDIo5n9
jkKTXeISVZmktIZg/JNW07qbOQxGacADd03jchx0lPRDGmkLwhD4WXNUPzLIpMBO
jmT6N736UqkOPsjTtpQeUcBTeHci4vbtpXSR/FhKbwl8ozAM/3aQWctcSaqAA10t
KGjx1pwm8961eovWDY+wdHRBmd5mut1LN03B3D4KsuNIBDBv+bN3fsn0pRNG60fu
cLwQ/RnNLdywZ2hggYGrdV1rlHrr6GuRFE4erBaBzgHN0Z5fu4SLO/0jr3p6hLJx
WuEeJWRM0O0hqWr7mr7J
=SGKg
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--
