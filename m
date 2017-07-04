X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2774" "Tuesday" "4" "July" "2017" "16:24:40" "+0300" "Leonid Kanter" "lkanter@cloudlinux.com" "<9beb0ba7-c754-3c50-81d5-91d7539c7b45@cloudlinux.com>" "67" "Re: [oss-security] linux-distros list membership application - CloudLinux" "^Date:" nil nil "7" "2017070413:24:40" "[oss-security] linux-distros list membership application - CloudLinux" (number mark "        lkanter@clou Jul  4   67/2774  " thread-indent "\"Re: [oss-security] linux-distros list membership application - CloudLinux\"\n") "<20170704123718.GA28787@openwall.com>" ("<CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>" "<20170703231023.GA16022@altlinux.org>" "<20170704123718.GA28787@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1636 invoked by uid 550); 4 Jul 2017 13:31:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28386 invoked from network); 4 Jul 2017 13:24:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to;
        bh=CXH/eCEXPO9OfrOyrAcCJXGJ3xB4oYtOv6XfVrtoZz4=;
        b=1LasX4WHj2CgHcDv6jfH0r33GW6UBLgBLY0e1kKhZbC4cLBIoKGuah2v1ZqigUIJO1
         4rljCCJaO9qvIrJJ4WjCPQ+jub8H2tXNlotRYuu6XxemPmI5H89S+rqghjvcj5OqumGz
         xWzN49VVGE6gw8LIDC4nfH/ap3bryh5iTmZuMqWnX0Gg2xysP6tuLkUmVk1zq5PFvyxX
         8i8LE22td6023WsTSURafGgJ7wZtPvKpeCcRHlbdOuS6l9goSSmi2+LxMl3RFAARNn5p
         XqmMN0hTUAsZqhAmjcyWm+9a0OvCI201gkFM5k0GXpkWaiXJw//u7LOsRGiUyCufq7Dn
         yYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=CXH/eCEXPO9OfrOyrAcCJXGJ3xB4oYtOv6XfVrtoZz4=;
        b=iYIWscLOBrtb90jKDuuDbj1bVwikMDp1/2k2GNiIzL2F2yJ6Wj9FY6g7bOIifxOTv4
         prnam/b7DydhQW4BrcmiszuBJ8VkX3/taTdKiPA5eKasc5vcSNTJ8bYz03b62BwV/hYO
         fmWm3/lTCRd2mQlhhsFGTvQragNj0mxK/WYBhRno8ywGrN3Be3iJnY6wOId4/CNDo3Hc
         otTQQfd4svat7EoC6drnEE55zQ4haQHj6AGt0zsuWiKDTTOrXG3+Ks7AIeMQx1JQ7Bel
         kQXApuhXENuOgF2gZoyE3u7iRrrbB0AzlAq2sr34Kfu2X36BNXDo86nmdCaxprAomN7y
         uaog==
X-Gm-Message-State: AKS2vOwbpCFEZ59mcAXisrDZmel707T7Mz/3L94TkD4Ncj1TSzsQYwI8
	r4kO2xq7nRiEdWcFofuCSQ==
X-Received: by 10.28.220.133 with SMTP id t127mr29025878wmg.29.1499174683334;
        Tue, 04 Jul 2017 06:24:43 -0700 (PDT)
References: <CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>
 <20170703231023.GA16022@altlinux.org> <20170704123718.GA28787@openwall.com>
Message-ID: <9beb0ba7-c754-3c50-81d5-91d7539c7b45@cloudlinux.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20170704123718.GA28787@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="nnqf6X8akGVmulbArsEQcmRWDATSPieNU"
Date: Tue, 4 Jul 2017 16:24:40 +0300
From: Leonid Kanter <lkanter@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros list membership application -
 CloudLinux
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com

--nnqf6X8akGVmulbArsEQcmRWDATSPieNU
Content-Type: multipart/mixed; boundary="cW1k644udDgumLlOWJ3buRxv9mwhVaV1j";
 protected-headers="v1"
From: Leonid Kanter <lkanter@cloudlinux.com>
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Message-ID: <9beb0ba7-c754-3c50-81d5-91d7539c7b45@cloudlinux.com>
Subject: Re: [oss-security] linux-distros list membership application -
 CloudLinux
References: <CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>
 <20170703231023.GA16022@altlinux.org> <20170704123718.GA28787@openwall.com>
In-Reply-To: <20170704123718.GA28787@openwall.com>

--cW1k644udDgumLlOWJ3buRxv9mwhVaV1j
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi Aleksander,

Yes, I vouch for my colleagues Igor Seletskiy and Konstantin Olshanov.
Konstantin's key is already available on
https://cryptup.org/pub/kolshanov@cloudlinux.com

On 07/04/2017 03:37 PM, Solar Designer wrote:
> On Tue, Jul 04, 2017 at 02:10:24AM +0300, Dmitry V. Levin wrote:
>> On Sun, Jul 02, 2017 at 05:29:25PM +0300, Igor Seletskiy wrote:
>> [...]
>>> 9. Have someone already on the private list, or at least someone else
>>> who has been active on oss-security for years but is not affiliated with
>>> your distro nor your organization, vouch for at least one of the people
>>> requesting membership on behalf of your distro (then that one
>>> vouched-for person will be able to vouch for others on your team, in
>>> case you'd like multiple people subscribed)
>>> Dmitry V. Levin <ldv@altlinux.org>, Chief Architect, ALT Linux can vouch
>>> for Leonid Kanter.
>> I acknowledge this.  I have no doubts that Leonid can handle
>> embargoed information according to the list's policy.
> Thank you, Dmitry!
>
> Leonid, am I correct to assume that you vouch for the rest of CloudLinux
> team joining linux-distros - namely, Igor Seletskiy (now) and Konstantin
> Olshanov (once I have his public key)?  Please confirm.  Thanks!
>
> Alexander



--cW1k644udDgumLlOWJ3buRxv9mwhVaV1j--

--nnqf6X8akGVmulbArsEQcmRWDATSPieNU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZW5cYAAoJEEAClgea5ZVPLLsH/iTTb5PVrOY+dwJkq8voUn6E
RExfnxFRNyP73MM5ZXZiJbD7ea6DjAns1YFaGPYCXo5we7KzicIlHj1OavkgfXZ3
HA9jzEjvk7iaG5p0yYStpSArx++UqjOFpQR7D2sLjFwFzD/tyuZZjdzr9TWWmi6l
JNvkCXvyBsJti8k2E8I1PPR+sL6+KGWkw2Wua8QCvV/x4QPM0fSU2ZzIZzFSPnC/
T3fMGvSnzj2595UPlzmHKp2w8RQZxOJD4knLGQJ7i3qgBvAbyxhzixZZENTfp1Se
Lsh+WH5/ecY5cQQ1B9EcpxWvUcwcd2rwSfFoulewnw8hb64alGHBbGuIv0IfJog=
=O2+L
-----END PGP SIGNATURE-----

--nnqf6X8akGVmulbArsEQcmRWDATSPieNU--
