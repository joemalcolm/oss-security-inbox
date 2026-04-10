Received: (qmail 13712 invoked by uid 550); 10 Apr 2026 01:51:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32118 invoked from network); 10 Apr 2026 01:32:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775784741; x=1776389541; darn=lists.openwall.com;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=6KKOVxJHuwBWVBE5wMBIPn7W64w4ibUjNrs9S/I/hfo=;
        b=O/x1vMSbSfovFjUdI2R9/Q1YsOhALkMv6/y0YhXhO6OMD7+7Hnt4TkIGAYzceOP4TO
         ntOIQn89RCTYDE/S/cx3RhqTBD4EZ8v7kxt4StEsu8YOx2VxcpGUvNhxpLsILqtuI6SJ
         O5DS5GMgvgVC0ep4VESrH57albhH2pp73FO3Lu7b8IWymL4jXg+/IA8dg471THkK0aZ7
         4C104awl7bCcvhthvCgi5krG9oMT77YXvtOywIesSnYrDtmjWFaPJI6IbTbZOPTLs58x
         /UE/Fo+Qoxdx5loWpYY3jgX+97US8Rceln1TLz0H701bBhhv4Ht6Z9rgLwZcRHKWvqWK
         34Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775784741; x=1776389541;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6KKOVxJHuwBWVBE5wMBIPn7W64w4ibUjNrs9S/I/hfo=;
        b=n2bhOkjloA9KA0CedsmdBnMR0/WkhdOVFh9bQyZooyxvcgjo32tRE35kxetz0hA5i4
         lT83o54OHUd/EFhYIOiuryz7L6hv9qtHgKdN45+fGR0taRlsh6DXwrSOAEMR8X+YhKBZ
         AvREwfpHdtztQmJIwJP0mN5CrMONo5keVmseEQkFcYcsEcS2fq3g0LSDMGb7s/WIv9y8
         HrPMpSu7sSMt7EYmPO9mMuTjpnZEp/zqCHD0a/gc8idjOMHV0pW7BFpIfVFhix4CqvZc
         BUAns4cCAdy9uNS4tgnP3LtfeHGdid9rjlVFftIozobQcg6htUoYr7+4IIBhYSZS8WAW
         FH1Q==
X-Gm-Message-State: AOJu0Yw0WLSLkT9UC1Gs9ElY2stL8EHmL/Yl1cKpIcjro4U7Srm128O4
	Boqw+HPKQAnI5j8sSTNRlr40K2JN5XPcWanHqU/VDtt4lk4t31njgF9w
X-Gm-Gg: AeBDieumuCtO5XDZt3NoYo6luwyy3wQFRgptPk6lqw1qSEA0j4QRGW/839v2pyf0kLq
	b22ugqYGSt9tsZ0CaCkPZfFZAoW3239e0dMnfYuqAz2aAMZF/CoxCDLP67E/tfzzO85i09P98p+
	JgvQpLMJcRTS8GsAiQaxWfE5GAY6e+74jwjxRj2wh3PpbFFKICwp9C32mXpkJpbNnwCVGO8u5ES
	+iKIZ3rHzWMKGZrtJN0QPzvSLZkNVpkJBs6m0D91ezDACRALORq2b73Qb2G8RSd+WfeJyVDOW3N
	0ylE6xboWMfSeO8vjbCMVfo1KrV6EcQb/mudH+jYFFxnaHKhEcP5njuAFtKSPxG9voMlw5DErVb
	WZDMXHkHK1G55nHyTnC/rpF+3kVDJGdHg1ZAl7W1Ro/kixqUwf/fxGnV1akqbzfh+PuX7ZiM3dl
	70Slb9LjknjW5AF96BKx8vSwy2k81UX+VjQWkM1DotkTIKxDkuIg==
X-Received: by 2002:a05:6870:2b19:b0:423:b89d:4341 with SMTP id 586e51a60fabf-423e1204a91mr435759fac.8.1775784741014;
        Thu, 09 Apr 2026 18:32:21 -0700 (PDT)
Date: Thu, 9 Apr 2026 21:31:26 -0400
From: Aaron Rainbolt <arraybolt3@gmail.com>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: oss-security@lists.openwall.com, adrelanos@whonix.org,
 arraybolt3@riseup.net
Message-ID: <20260409213126.7a700b69@gmail.com>
In-Reply-To: <addC9yTFAPYQnzpi@eldamar.lan>
References: <20260407200906.14b9bcc0@riseup.net>
	<addC9yTFAPYQnzpi@eldamar.lan>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/h1/Svi3yZs4NC=YhH0cNCXS";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: Re: [oss-security] systemd-journald in systemd 259 does not escape
 characters in emerg messages that are wall'd to other user's terminals

--Sig_/h1/Svi3yZs4NC=YhH0cNCXS
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 9 Apr 2026 08:11:03 +0200
Salvatore Bonaccorso <carnil@debian.org> wrote:

> Hi Aaron,
>=20
> On Tue, Apr 07, 2026 at 08:09:06PM -0400, Aaron Rainbolt wrote:
> [...]
> > I discovered this while doing work for the Kicksecure and Whonix
> > projects. This bug was reported privately to upstream on December
> > 23, 2025. As per Kicksecure's Vulnerability Disclosure Policy [1],
> > we're disclosing it publicly on April 7, 2026, 90 days + a 14-day
> > grace period later. An upstream bug report can be seen at [2].=20=20
>=20
> JFYI, the reference to the issue: It currently say: "This issue has
> been deleted.". Is the issue reference correct, was it really deleted
> or is there a typo?

The issue reference is correct. systemd upstream didn't agree with
Kicksecure's vulnerability disclosure policy, and elected to delete the
bug report for being "irresponsible". I disagree with them, but in any
event, the email contains all of the useful info that was in the
upstream bug report.

--
Aaron

--Sig_/h1/Svi3yZs4NC=YhH0cNCXS
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCadhS+gAKCRA5rdye4jrr
CCDcAQCyamEHtrRsQilcMUYCLkxnoAVPeuOstdw6T8giVrR0PAEA6Hpbwcsb2DLx
1Jqt0EqNPvX3uCN4/07TbADBEuM8hgM=
=I1rR
-----END PGP SIGNATURE-----

--Sig_/h1/Svi3yZs4NC=YhH0cNCXS--
