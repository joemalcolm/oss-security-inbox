X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2345" "Tuesday" "24" "January" "2017" "16:55:01" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1485294901.1902.2.camel@gmail.com>" "58" "Re: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" "^Date:" nil nil "1" "2017012421:55:01" "[oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" (number mark "        danielmicay@ Jan 24   58/2345  " thread-indent "\"Re: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)\"\n") "<CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>" ("<20170124085501.GA9322@suse.de>" "<CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28572 invoked by uid 550); 24 Jan 2017 21:55:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28549 invoked from network); 24 Jan 2017 21:55:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version;
        bh=Na80DNeqz7nMX0Dw2blf5M7H/YNVTPNP221vaEMxgHs=;
        b=RizIKz8ShIg+59GldPGphxIr6/schSGADgL8JsgyA4TDGnCO4KkqrtTEVtYyt+haxB
         AFdzf5lqFrm3rGo6+f7EcnwMuZW4WLMlU2LzQUbb2SD4Cdo1me09/Hh8afIlmxRc1Ig2
         fgM+sX0CuLzi8F0zg1t1pedfyr7Li7m422Up/RSeuLcUQv/6KtO2wcn3l91eFGGVHz0T
         b1jaU1foYyRHGgxSZL9onZZ1izpdLv0/dhVp/xzzGr68y9YOcuqhEgvc/856+IQZNGV9
         teKCoJf1lr6P+TtSl89IlAxy3IpeKym2oR25MheMZdPwZB3V93LgcS5+BgsPixXa6LSD
         hitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version;
        bh=Na80DNeqz7nMX0Dw2blf5M7H/YNVTPNP221vaEMxgHs=;
        b=mT4HXpWodvbI/T8I/bGVmYIRlpmVl7KOpzG+snt+tL6fEIUy7AcyCg0QGedGVAjYZB
         dYfqMAlhadC8MTW+GuBpcD4RH/a3fGBIk1+smleZg7F05RPncbMwGDXEphvd4y5/br3v
         ycO1kQ8DU4smFDI4nmlmG+XHQZgAwwTgw1U2FH/6LMhDA2+oUoepj5A5GUEOmSS7/Wdy
         kirl/rCFqau104bUe0Rwci+eyFk97IT+Pe8+gXqevUOOx96rJbJCqmmIAn7ezORauydw
         Dfl38YTzIzyIBl+I3RlmU2SORs1oVZnjUGC8y2xYXmgYwsbDKIt3u6D8zUBZC3bDxFzp
         0jLw==
X-Gm-Message-State: AIkVDXImEzhWuUK/EW7VuP0sDKdbph3TnWNIAmCzBRrIgcFR+9iqD1M5S+qbKsb0Y+ZtkQ==
X-Received: by 10.36.190.205 with SMTP id i196mr21526387itf.38.1485294903343;
        Tue, 24 Jan 2017 13:55:03 -0800 (PST)
Message-ID: <1485294901.1902.2.camel@gmail.com>
In-Reply-To: <CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>
References: <20170124085501.GA9322@suse.de>
	 <CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-2rNfh92WjNVDHLHV9WKU"
X-Mailer: Evolution 3.22.4 
Mime-Version: 1.0
Date: Tue, 24 Jan 2017 16:55:01 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Headsup: systemd v228 local root exploit
 (CVE-2016-10156)
To: oss-security@lists.openwall.com

--=-2rNfh92WjNVDHLHV9WKU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2017-01-25 at 01:20 +0500, Alexander E. Patrakov wrote:
> 2017-01-24 13:55 GMT+05:00 Sebastian Krahmer <krahmer@suse.com>:
> > Hi
> >=20
> > This is a heads up for a trivial systemd local root exploit, that
> > was silently fixed in the upstream git as:
> >=20
> > commit 06eeacb6fe029804f296b065b3ce91e796e1cd0e
> > Author: ....
> > Date:=C2=A0=C2=A0=C2=A0Fri Jan 29 23:36:08 2016 +0200
> >=20
> > =C2=A0=C2=A0=C2=A0=C2=A0basic: fix touch() creating files with 07777 mo=
de
>=20
> That's important for users of Arch Linux and other rolling
> distributions.
>=20
> If the system has booted the vulnerable version of systemd at least
> once, then the files with dangerous permissions will be there. There
> is no code in systemd that fixes permissions on already existing stamp
> files. There is no postinstall script in Arch that does it, either.
> So, you have to fix permissions to 0644 or remove the stamp files
> manually, once, even though the commit appeared in Arch repositories
> long time ago.

Ah, sorry, I didn't see that it did this for /var/lib timer files too.

It does seem to recreate them if the timers are still around at least.=

--=-2rNfh92WjNVDHLHV9WKU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQJKBAABCAA0FiEEZe7+AiEI4rcIy/z3+ecS5Zr18ioFAliHzTUWHGRhbmllbG1p
Y2F5QGdtYWlsLmNvbQAKCRD55xLlmvXyKoAtEACP5mnYHAPGU47q+vXyZNHo0Z14
eDEnvZ7C1Snv0DBIAH6BJugq9dmTHy6tQRA+FQPBQ165JRM+Pj3l5tggXFwhndDg
b4Jx8DqdDBbgZKRjgMEFUpMnzR8E8mt+B87RcTrMxUUDVn6dwY4jg0k6Mz+dVuFR
+jAzTghM5QLYu1BstVgt/RVGFFYfNQOVektbEit4SDliDdLxd9atyevMQRS7ljqm
0lzBXMWl0NI+zTtJagI+4+LcUgFktsergR0HkeH3y16TnyBX138QHLKUehx8rxZ2
rfjnwULe6/T/XEhSkg+2LSZtOzmpvX3p9xFiGVB0lyWIkM+NALXXNbscAEdIltAv
4w/mfkKrOGhMKdAFtroh0gbLZ3jR6q+HhlhVu1NeUWetQVsWIy+xg9qcIA5E1rr3
3zOHdwzgxp2fCuMj6qh+7WYXUxZ9XiUwhUbKhR8XlRGKcnKBMyh62bokhB/azfRJ
TESCuSGYInU7vAeBKw3L21NMF7LIdi8ATlQySKdnYMU6NU6zkHEUpHx5AZ2QvVQO
6XvxS4dVP83bvUQyrpH0OADLSTEgItEUiwadz4xCWd2xlw1CTrdqEZnJZa3XRc5G
SVOCvZZ9FLoGhL4gTRgdEsfqWoxUnFIbFHUHUw+dG6VJ1APnEZtbbtlxqBEhT53c
He63D1ZZFvbenjNA6w==
=Sqhj
-----END PGP SIGNATURE-----

--=-2rNfh92WjNVDHLHV9WKU--

