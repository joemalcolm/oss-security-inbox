X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1522" "Friday" "12" "May" "2017" "13:48:16" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<4DB80547-81B4-4091-BEDD-ADFF17ADAE6B@gmail.com>" "46" "Re: [oss-security] Multiple crashes in OpenEXR" nil nil nil "5" "2017051218:48:16" "[oss-security] Multiple crashes in OpenEXR" (number mark "U       bperry.volat May 12   46/1522  " thread-indent "\"Re: [oss-security] Multiple crashes in OpenEXR\"\n") "<20170512184509.GA30373@tunkki>" ("<6543F18F-81C2-492A-917E-6F331F917D02@gmail.com>" "<20170512184509.GA30373@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12278 invoked by uid 550); 12 May 2017 18:47:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12257 invoked from network); 12 May 2017 18:47:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
        bh=7DyQC7WCJtCHI7U0Kti08s0k++HHzNlRgLVcO4rxBDs=;
        b=CYrX/+xHSpIXw+BlxsLSVdJRfNq9YyBZL7LA3sYVW4V7myKCjG4jL4geW/8W/hUtT0
         YKHR18ud2jGiLqWkqzVm9vRPl630oJRKghdwHJIfMFzDkqcpTfC6gnOx7MVKFC8nLZKd
         32C+GbUMk4k77JNxo1rOIqj5f5J0kBxw9tOpuylazE69vvSqOhvoYpt4yIUvxXi4iyLy
         OhAUe65N9Df2NIYAq9P9QawshJ5RYbNorxesQ+HnCxr8QzlvlsR2uh5CKIYsNX9RFqj3
         FqX6DQx2Xr7bVlOX8t5P/Br+DSqgQ8VguvxOWYov6tkkWmdqnryQiQP0FFm6OsiEtuBk
         Qv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:date:references:to
         :in-reply-to:message-id;
        bh=7DyQC7WCJtCHI7U0Kti08s0k++HHzNlRgLVcO4rxBDs=;
        b=JufgALt1v5paLHzvBc9StSnxG7jraEc4ODwOgP3/pz5IExjrli/am1hS6F+TkELjQU
         MtNzKqZqoPhPIwZbQJNrzBSr48vWFSve9P7PVBEvWXZyEHs6tf5B+mqG03eXDQNaQTtF
         81pTuOvN1wxOfLHJ8n7ck4q5HzDk4UOfLoTv+EUwphwmziqwQIwHXcL5PVKXL/lXhtZp
         GNUJl0kqPTTGtu4kwBjg4RdaPwnozpR81SJ7oqHoDDD5KQVo9MTrmY3iCEFMZZQuEXHM
         mvDFl/miU+mjsM2EfHfjwbss27VEeVoSt8l8QZXepunL10FzjP+MPR7Q+1dVFLQsj39J
         q2nQ==
X-Gm-Message-State: AODbwcDxNVdCtnFTFZggn2kq5BmM1g1ixHllVscDNf1X18LjV4bmQkH7
	u54xkal4lgKYokck9II=
X-Received: by 10.157.11.166 with SMTP id 35mr3106629oth.51.1494614866856;
        Fri, 12 May 2017 11:47:46 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_21CC37A8-8310-4B80-A44D-0F10A99AA467";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 12 May 2017 13:48:16 -0500
References: <6543F18F-81C2-492A-917E-6F331F917D02@gmail.com>
 <20170512184509.GA30373@tunkki>
To: oss-security@lists.openwall.com
In-Reply-To: <20170512184509.GA30373@tunkki>
Message-Id: <4DB80547-81B4-4091-BEDD-ADFF17ADAE6B@gmail.com>
X-Mailer: Apple Mail (2.3273)
Subject: Re: [oss-security] Multiple crashes in OpenEXR

--Apple-Mail=_21CC37A8-8310-4B80-A44D-0F10A99AA467
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 12, 2017, at 1:45 PM, Henri Salo <henri@nerv.fi> wrote:
>=20
> On Fri, May 12, 2017 at 12:09:30PM -0500, Brandon Perry wrote:
>> As of this writing, <snip>. No CVEs have been requested.
>=20
> Why not?

I=E2=80=99m lazy. I might this weekend.

>=20
> --
> Henri Salo


--Apple-Mail=_21CC37A8-8310-4B80-A44D-0F10A99AA467
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZFgN1AAoJEKJq8VjVbt2p+0YP/iHCVU1CnI9B1Iw7sFAZ2swr
0aQJwkaEBEjeMk6wRo0cMTUKFuZttFuIvp4N99rf1+jgQtRDzJ5py5HzqZ3tYI6f
5SdV3JGtxwByMxDStmGnlO6hxtTwzPJgiKfSdlu4GHPi+hf1cz7TlUDyhXIfbTRi
L1szSxXGCTl0xvlc5hQnbejDQyRs4p85IkrUkFumeOHMqPzsgegQEv9YzVFWvbnN
hQKmwf4jHDiQK04ncG8Jlr0xY67gUmDshtw9MGrxkJg/e/YbR5JEbFrvj8aVel5T
xGP1JSSFUEWKhwg5h9jKAYuqIAIZzm58l7ftdEnkuXEQuyYz2bGpfBNWaMpd36IL
Fz/zobZtw0tjCyBbUk6AipRzDfFNWidpQZiA/ha0Y7qIxQBX5LOsR/p5qO573g41
/9Y9rFpdtXFYJdpgdDoZWiwVpEmb6gFFS4pWIiwgdP2W246K+3g4pRu1XWuais4C
22r2YmLGBRpZFhbKDquXRKahZA6spYhEiiKXQbE98dUg3IEQqPhB4TXDNPwL3h3C
hNVJcSxdsfQEvdJPVjB42YtG/JdeVwjH+sqlVjpciR7a3VUnM2XsBwAJwkE6sWDV
9zXnaE24/8Wl8q5fRspHg2XCNUCHZbFznPJ1D9yMt9zJd9PZdsS+/JSLkUOcEsJ0
OMt8JiNfQ6sgMwkbGGXR
=QNS2
-----END PGP SIGNATURE-----

--Apple-Mail=_21CC37A8-8310-4B80-A44D-0F10A99AA467--
