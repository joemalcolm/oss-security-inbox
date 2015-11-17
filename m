X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2323" "Tuesday" "17" "November" "2015" "13:52:07" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<564B7757.6080100@gmail.com>" "50" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111718:52:07" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       danielmicay@ Nov 17   50/2323  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<564B6536.2030908@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22490 invoked by uid 550); 17 Nov 2015 18:52:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22472 invoked from network); 17 Nov 2015 18:52:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=6zh4SHaJimRDDdl0Bg2806cuMFBAzJfLdDnAjY4ic6Q=;
        b=yMuFZTbi/cNbJ6akPc6OlkmXXXtmHQBopr6N+75VwT6QF9qr1UO0l442FxCSovqePr
         dOJZ5NPctiS39Ac9FFS16UawjLWdal4aMBJ9ZUYOlcNcwgw2LMGwJ3Q8OmDY0uzTces/
         AH9iDDthcfKVpcoR8oT361j1FUJT0/qQhcUkuNEMH1zclQC5s1ZcEkYmXEPhwzW4/Vn0
         VwoB3yoX3l+jNipAjCNLYgReTecONPVOoJbAdxdT6P0oz9iTdIAngb3b36MpAG1u6J+B
         xn3MAcHqxCWmU9Zica0WCKFSqKuuLCuj8w2s6Dd9dvwWlkT7+UQI6m46swhtW7LFKcQS
         Pgyg==
X-Received: by 10.140.36.212 with SMTP id p78mr42774138qgp.13.1447786338974;
        Tue, 17 Nov 2015 10:52:18 -0800 (PST)
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <564B6536.2030908@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <564B7757.6080100@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564B6536.2030908@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ObEUXB7qnVQW83ReJgFQ4k5v3Q1Bu2cO0"
Date: Tue, 17 Nov 2015 13:52:07 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation
To: oss-security@lists.openwall.com

--ObEUXB7qnVQW83ReJgFQ4k5v3Q1Bu2cO0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Is that really the right approach vs. preventing hijacking of flow
control via return pointers and function pointers? It doesn't really
seem like there's an end game in mind where it actually prevents ROP
rather than just removing many useful gadgets. Making useful ROP gadgets
harder to find doesn't mean much, since tools are used to find them and
the tools can be improved if it becomes necessary.

i.e. why not just go with something like PaX's RAP

(things like CPI/SafeStack could work too, but SafeStack requires
hardware support that's not available on x86_64 and ARM yet)

Preventing ROP by preventing hijacking of flow control in the first
place isn't as good as outright preventing memory corruption (i.e. the
bugs are still exploitable in many cases) but at least it wipes out a
form of exploitation entirely and forces techniques that are not always
going to accomplish everything that's desired. Chipping away at gadgets
doesn't do that unless they're entirely gone, and it's hard to see how
that could happen without higher performance costs than simply doing
full memory safety (not like ASAN, but rather with GC).


--ObEUXB7qnVQW83ReJgFQ4k5v3Q1Bu2cO0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWS3dXAAoJEPnnEuWa9fIqPL8P/ilKztDVgxtum4DG5lTSoks8
6yufCh3ko1EIZAWOwnX5oWxmK9Tii5wswYvLf9fN7nrKn6sXg0cV8zab6EY0d/AT
IyeojJysr2q1dqxjMDcuYhjsI3KS5ghm5n9rBXPmMewjlz3RmOcO+8d2rZMhL63C
ThTGHE1izqDtGs+2uyw0Vc0jP6wND/45gyza6dczTX6v/EdwQN3KN+EUdu8nc5Nv
JLh4KBgIqiUcKKjBNs+Xn5A7jhyHRE1TDnC4m+t8r+GsvEQZRJGPJ9NIKNHQbt9F
i7OpPOdDpl6KzqWRGvK9K7kBRk12GE68i2v7fJsWbLFgvmsn+2XvsyBIRGLydGpr
KDG8IHkTc0GQUYSabWptmP6gtgMSICYIVSolXjKEmeK0n1NUjtR1RDj7fYvy673G
hw783s92Yz5jqyZGqAqxBVflmZzvcxHpyJxY4DcpECO0JdEDlkeVrm2dQyP4oW+y
//u138JPGLY2IbRfffJtq/hsOHDeX35u4zMwoVRXRRvMeX9DD8W04zDbpmXEETlY
fq/ePq5F437W12Gnhsldq/4mrhKmUph61pls7f98ZYzJ9c4Wo9WT9rr7hItU0+il
h3g0cA52qoBzGXdR9dUmF75foxqhVMAhZotvWLUZG9zZLPNpeVB/RVxoQJkW5L3P
IIvLtHEY4LuxKJFWIpRl
=XD8n
-----END PGP SIGNATURE-----

--ObEUXB7qnVQW83ReJgFQ4k5v3Q1Bu2cO0--
