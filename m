X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2950" "Friday" "16" "June" "2017" "08:29:38" "+0200" "Andrej Nemec" "anemec@redhat.com" "<06780369-357d-1413-cec6-f8befecd2566@redhat.com>" "85" "Re: [oss-security] CVE request: sthttpd remote heap buffer overflow" "^Date:" nil nil "6" "2017061606:29:38" "[oss-security] CVE request: sthttpd remote heap buffer overflow" (number mark "        anemec@redha Jun 16   85/2950  " thread-indent "\"Re: [oss-security] CVE request: sthttpd remote heap buffer overflow\"\n") "<CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>" ("<CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15793 invoked by uid 550); 16 Jun 2017 06:29:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15772 invoked from network); 16 Jun 2017 06:29:52 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 5042785541
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx04.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 5042785541
References: <CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>
Message-ID: <06780369-357d-1413-cec6-f8befecd2566@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Ub3ETPL1mPBuFqexSaxNam507GoOWaaOC"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Fri, 16 Jun 2017 06:29:40 +0000 (UTC)
Date: Fri, 16 Jun 2017 08:29:38 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: sthttpd remote heap buffer overflow
To: oss-security@lists.openwall.com

--Ub3ETPL1mPBuFqexSaxNam507GoOWaaOC
Content-Type: multipart/mixed; boundary="C6CIgxQiglnINdvI1sc8HOKq55iUhXTxv";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <06780369-357d-1413-cec6-f8befecd2566@redhat.com>
Subject: Re: [oss-security] CVE request: sthttpd remote heap buffer overflow
References: <CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>
In-Reply-To: <CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>

--C6CIgxQiglnINdvI1sc8HOKq55iUhXTxv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello Alexandre,

Unfortunately, CVE assignments are not done through this list anymore.
You need to visit [1] and request the CVE by filing out the form. Could
you please look at it and let the list know about the assigned CVE?

Thanks!

[1] https://cveform.mitre.org/

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA


On 06/15/2017 11:33 PM, Alexandre Rebert wrote:
> Hello,
>
> sthttpd [1], is a fork of thttpd, a small, fast, multiplexing webserver.
> Our fuzzing tools recently found a heap buffer overflow in the request
> parsing code that can be triggered remotely. The patch was recently fixed
> [2], and the bug was introduced in [3].  It seems that it's also affecting
> thttpd 2.25b present in OpenSUSE [4].
>
> Let us know if you need more information.
>
> Thanks
> Alex from ForAllSecure
>
> [1] https://github.com/blueness/sthttpd
> [2]
> https://github.com/blueness/sthttpd/commit/c0dc63a49d8605649f1d8e4a96c9b4=
68b0bff660
> [3]
> https://github.com/blueness/sthttpd/commit/aa3f36c0bf2aef1ffb17f5188ccf5e=
8afc13d3dc
> [4]
> https://build.opensuse.org/package/view_file/server:http/thttpd/thttpd-2.=
25b-strcpy.patch?expand=3D1
>



--C6CIgxQiglnINdvI1sc8HOKq55iUhXTxv--

--Ub3ETPL1mPBuFqexSaxNam507GoOWaaOC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJZQ3rSAAoJEIkERKHVe23a4ncQAKhOHUJhPdOHwz2TOAa3sWoF
HHFKiVYYv6g+vi9+iBzeHBEGYdMDfe6nxnsV96yggZcWn4k29Z7UAaCH14+ZBE89
Jl+YH+bvhCvp+azwofibCGAjE35ZFrACRFJVBG8RQbpUhrXrOdihU/adwPMezkK6
h8XhkyEyw9prWDh9oPvMV2KRb3tzKybztEkVkSMCo2um5AoP5wg1CXRu3PQvg5xs
sx5J4n1dJiOt0eYI23iKpXEuSBYwjFx38Hwg5mhZ/DsYjCoYkrIHLUaC0LZ/Fei7
Wd8C4ADe22VzlX6NIxxH0BI/3gEJ4C7uij/yA7EepvDciBT8UyjlrN928xg6tlrJ
c1jVPbSM7eepzTHl81UliJhnt+9abdxwdF43t+6xrdM6kc8wMQohNVx0WRykmBXW
HGC4Ewf7tUNJ8xwnD8WitKOykYy28sWOITDLO8t29hBVXtk2ryDWuXbuKQgUNvSl
/9U0HkesaYA5tasPPjTWM63c0ED7iSU3+cNaXqTA1WLwfDQ3Wfeq/eEds+nl0aCf
pBw15SiYFECwmGfJbEzdzf1cg1vTbarS2tVXOl9EeKZx18KER6/aU3YWjwiOoWMQ
7iLW9Im+irizId44vfgedxSQCyw2x5G+BZ7BQznl0zl5wdizt17zyI2mYQROIvg3
rGRELzDZsq2eb5ax8eND
=8JRC
-----END PGP SIGNATURE-----

--Ub3ETPL1mPBuFqexSaxNam507GoOWaaOC--
