X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3157" "Tuesday" "17" "November" "2015" "22:13:29" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<564BECD9.4070407@gmail.com>" "65" "Re: [oss-security] Re: Fwd: x86 ROP mitigation" nil nil nil "11" "2015111803:13:29" "[oss-security] Re: Fwd: x86 ROP mitigation" (number mark "U       danielmicay@ Nov 17   65/3157  " thread-indent "\"Re: [oss-security] Re: Fwd: x86 ROP mitigation\"\n") "<20151117221139.GE3818@brightrain.aerifal.cx>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>" "<564B7757.6080100@gmail.com>" "<20151117221139.GE3818@brightrain.aerifal.cx>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19726 invoked by uid 550); 18 Nov 2015 03:13:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19705 invoked from network); 18 Nov 2015 03:13:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=RRyjiDe3+hztE1ws6jgIBljjshzX/dzd215GiL3mq3Q=;
        b=Hfg+ja2lRR4eDeUGkEqPJv3vUVZONHhGoZZaebToMsoqcj+lY9YZFhoxlmXwk1wcXu
         zVvCWVrKi8bq1DGRTBoCp8JmkAtuPvkhfZpvg7aKtZ82taza186oserBevja0yVZc0R6
         Vos/kjsDQC+TSOyhFyE8bdPma0O9JoxBZO+jm/5iwLp0Grq9Fnmfh506XRb68bqoX5lK
         cN6jkePeAj+dsdtL8CF21FeMsSTiCpJV0xuNopYPm/F8xtrBKK+6Zl0pTQmERb+2VFg2
         9UnnvIwlayod1ZgC476bv/T2b2Ny2DGQVDEiS0wP8fEsk53nPNcUfHi+/Pgc83D7cIhA
         Z+Cw==
X-Received: by 10.140.128.87 with SMTP id 84mr19403924qha.54.1447816425541;
        Tue, 17 Nov 2015 19:13:45 -0800 (PST)
To: oss-security@lists.openwall.com
References: <20151117153951.GA28672@openwall.com>
 <564B52D6.9090205@t-online.de> <564B54BA.6090203@redhat.com>
 <564B6536.2030908@redhat.com> <564B7757.6080100@gmail.com>
 <20151117221139.GE3818@brightrain.aerifal.cx>
From: Daniel Micay <danielmicay@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <564BECD9.4070407@gmail.com>
Date: Tue, 17 Nov 2015 22:13:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151117221139.GE3818@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="UodS4cT59XmJfe2JQAGUJnmK6pfMtcprn"
Subject: Re: [oss-security] Re: Fwd: x86 ROP mitigation

--UodS4cT59XmJfe2JQAGUJnmK6pfMtcprn
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 17/11/15 05:11 PM, Rich Felker wrote:
> On Tue, Nov 17, 2015 at 01:52:07PM -0500, Daniel Micay wrote:
>> Is that really the right approach vs. preventing hijacking of flow
>> control via return pointers and function pointers? It doesn't really
>> seem like there's an end game in mind where it actually prevents ROP
>> rather than just removing many useful gadgets. Making useful ROP gadgets
>> harder to find doesn't mean much, since tools are used to find them and
>> the tools can be improved if it becomes necessary.
>>
>> i.e. why not just go with something like PaX's RAP
>=20
> My understanding is that it's not ABI-compatible with non-RAP code, so
> you'd essentially be going with a whole new ABI. If so, this is going
> to be completely impractical for most users. Am I mistaken?

AFAIK, it's ABI compatible with code compiled with it. Hard to say since
the implementation is not yet public. You do need to use it everywhere
to truly take advantage of it though. It might still protect the
function pointers reachable by the attacker without full coverage but...
that's not at all ideal.

Mitigations like this aren't comparable to ones providing incomplete
detection of memory corruption like _FORTIFY_SOURCE where even a small
amount of coverage can end up preventing vulnerabilities from being
exploited. A ROP migitation is only removing an exploitation technique /
making exploitation unreliable (hopefully enough that it can't be brute
forced) / requiring additional bugs to work around it so... it's no good
if there are easy ways around it for an attacker. It actually has to
enforce something meaningful.

RAP is essentially breaking the exploitation technique across the board.
It's not insurmountable but it's not incomplete either. And it can be
improved from the meaningful starting point. It's really hard to see how
removing all usable ROP gadgets can succeed. Maybe it can, but it's hard
to believe without seeing a compelling roadmap.


--UodS4cT59XmJfe2JQAGUJnmK6pfMtcprn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWS+zZAAoJEPnnEuWa9fIqK3sP/17TWemGaZDQVixM7TjTMUe6
U3BsBY0OSIDl66RLkndR08QgXLIuF6gVV9t1zuOObajGeixfRcIB2SqFeYuzYX88
6cJ4L3gsVVD+M9tdmMm61D1OVHi+EGUMpC4CHgySGxk8xe0NA9KdpfvB70148kas
pjDAjQHAMFvQOg5zZ+SBscovY4c7B7wiylFqhtLRe03sGqYMnpV69STl5FoSjplp
fJ2pOo3MP7DW8zQon3k/xV7wdEROjmpxqSPjpb5gULvCbfSzGfNt0wfVNK6zAvZA
7STE6HzJuCnhdbhr17W4BqFqaFeFR+OMws2Tbdiezrf7w/kbbN8Sxc93u714Yvz4
tYEESm0XRg3Bsx/BpL5TQ36cM1ZKjBqZSxFgf4S9uPDJZAh+oLP4TEQbTAgkYncR
87uJPdvDObO9ZlTSKb1gYxno34ZfZvyqXBvmQ0fmtgplwg6gcbok0tXwsjBKudME
YkO9eXb+zV0B9qy2E4Jv9ekK6ldGQWuWUJaVvTIj+L8idNwZRlpTayznoCISxDi1
HmslCkEyhsSm0ajD5tYHvnjGRVCXG+YUfp6W+FGYmFoX0x+y7ycv3fk7nQG9cagp
z8P80nZchSWjrHoYaMMWiXbKaZoVZVXoyw1Nw5w2XjAS0oDW9Au8qe6TNqa8iXdZ
WiAw63C41UrTk/gfPpPm
=PoIP
-----END PGP SIGNATURE-----

--UodS4cT59XmJfe2JQAGUJnmK6pfMtcprn--
