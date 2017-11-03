X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3764" "Friday" "3" "November" "2017" "13:03:57" "-0400" "Scott Court" "z5t1@z5t1.com" "<b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>" "86" "Re: [oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110317:03:57" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "        z5t1@z5t1.co Nov  3   86/3764  " thread-indent "\"Re: [oss-security] Re: Fw: Security risk of vim swap files\"\n") "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17846 invoked by uid 550); 3 Nov 2017 17:26:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9377 invoked from network); 3 Nov 2017 17:04:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=z5t1-com.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to;
        bh=3NYo/0qap9Y1aK+bevV27Q0kkHN7UP9yCc46BabJ8KM=;
        b=y8w4LtWzOWiUG7b/at7oyAKb0f5mk8VLqyCMkwT3tAVwQIWV3B4IYFOUj21RmaKboG
         PK3E0qRWULDt8X/OBqhOgqbdYCW6NjFewdElM6gktDItsInOzUNxFamOb+Bvb9TaMj9y
         9zECzo1M6tHtAAEZJQ/roFuBIN5+d5PQuOve8oA5J2MI6tRAJeah+fhlC3ovv2JkFhW/
         4EIx8waxK1xk/g+kEIwJa7eebF2WjBmmRue8EVebglY1Zlqrz/hzCFtk9k1lZphfGQH4
         gp4qNnRqkMhDq3kHpjFYv5+/4tKyn6Nb0JgEpLTb6IYhEg+Pukp80lhyggVa5cl0Axb+
         9Q9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=3NYo/0qap9Y1aK+bevV27Q0kkHN7UP9yCc46BabJ8KM=;
        b=PnaHjPWu8dsFHhG8muLlmorOgFTd8gOcEpawIU5xOw3smOccCtLr6p/VS26+4cSpt/
         4pn3lfu/QG8+tCvAlrw3aNOR7utlfYVRUhUsv0xgwXb8xnsMAXExfgmFQyjJ0qi4iKSt
         qx7QrvstoNQMUM1av53uhxyeN/TIdW+3WsVEQMLm3BAizn5gtyVy9fkEPR99vT/cW8h0
         k3mwKE1c9izFCxfmmf6nMoACRwno8ZEUV9nqOT2ZjhELJjdwNZhBPFwIIdQQ5NixOiG3
         TOPUwAJ1RZ9t0qN42JuWn69Csjm6axXs8F2SCNiFtMfbXSXthTbwdzlLGPvxoSmPIb4p
         HUTg==
X-Gm-Message-State: AJaThX4KL1UIe6yO11y1cpWfQd8qcFjg0iJUeGkb/L9yRRv6363lpKAI
	UuKwZmAWCLlA30hVrSk/01FqqD/x8ydkUw==
X-Google-Smtp-Source: ABhQp+Qo7tAmZSamdb2ayH2gxCH7MW5x8UkR3CRhQWfnu3TeHSc5GrU7kkbueh5GAqTfrSFW+mKu0w==
X-Received: by 10.55.93.135 with SMTP id r129mr10469508qkb.36.1509728656977;
        Fri, 03 Nov 2017 10:04:16 -0700 (PDT)
X-Google-Original-From: Scott Court <Z5T1@Z5T1.com>
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
Message-ID: <b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="4CLH7XRDv0vimoclthuK0t8amUj7pu0OJ"
Date: Fri, 3 Nov 2017 13:03:57 -0400
From: Scott Court <z5t1@z5t1.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--4CLH7XRDv0vimoclthuK0t8amUj7pu0OJ
Content-Type: multipart/mixed; boundary="m0bFIgNTkgqENRILJ3dNi8o8hQ7Rhg7e4";
 protected-headers="v1"
From: Scott Court <Z5T1@Z5T1.com>
To: oss-security@lists.openwall.com
Message-ID: <b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>
Subject: Re: [oss-security] Re: Fw: Security risk of vim swap files
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
In-Reply-To: <20171103163936.cevlb7ghcwkln6x2@jwilk.net>

--m0bFIgNTkgqENRILJ3dNi8o8hQ7Rhg7e4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

I pointed this out yesterday on the Vim mailing list. It is currently
being discussed there
(https://groups.google.com/forum/#!topic/vim_dev/sRT9BtjLWMk). Some
people are calling for more restrictive permissions on .swp files;
however, I believe that using a separate directory for .swp files is the
best solution for a multitude of reasons I've discussed here and there.
I have refined the vimrc changes that I originally posted (with the help
of Christian) and have found appending the following to your vimrc be a
decent way to mitigate against all known forms of this attack until a
proper patch is released:

" Move the swap file location to protect against CVE-2017-1000382
" More information at http://security.cucumberlinux.com/security/details.ph=
p?id=3D120
" A big thanks goes to Christian Brabandt (cb@256bit.org)
" for helping with this fix.
if ! isdirectory("~/.vim/swap/")
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 silent !install -d -m 700 ~/.vim=
/swap/ 2>&1 > /dev/null
endif
set directory=3D~/.vim/swap//

The only drawback to this approach is that it eliminates the warning
when multiple users attempt to edit the same file at the same time;
however, this seems preferable to the alternative of being vulnerable.

On 11/03/2017 12:39 PM, Jakub Wilk wrote:
> * Christian Brabandt <cb@256bit.org>, 2017-11-02, 22:29:
>> Vim copies the permission from the file being edited. Although the
>> swap file is readable by others this does not leak any information
>> here, since the file being edited is already readable by others.
>
> In general, what vim does (copying mode bits) in not enough to ensure
> that the swapfile is readable only by the users who had access to the
> original file. It would have to copy also group ownership and ACLs.
>
> Also, keep in mind how this thread started. Somebody edited
> wp-config.php, which was readable by the web server, of course; then
> vim created .wp-config.php.swp with the same-ish permissions, which
> made the file readable to the whole (external) world. Oops.
>



--m0bFIgNTkgqENRILJ3dNi8o8hQ7Rhg7e4--

--4CLH7XRDv0vimoclthuK0t8amUj7pu0OJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZ/KGBAAoJEI1dl2DAZNZc6MYP/2HwT58eS+/e8Sy0gL4v1TJU
pVF8yIssiA5WMMlKF/Gru+DhvhtCVt8TRRR4ufZoG3BJHuap6cL0ng47tfqH8CO0
D0dRSOD1RNbeqOLxu7GVHYnBS18fxtDgnASqlQ8YDg/fchPrMeNqkEb6y6pmX3/z
VvltAdEU4JkPwtvVKZ5AwQ/kBaDpphJWlwQcCBfu5cICEaQfUTE7QLJ/4S3kYhK2
AT9pyNkCB9IQh+f/pWc2NaZxCFqMMMPNi6DqyKgoX0Jm8vWSQYhLQnqMGz8FLqRD
U3q/NPKS5mOTVgYOW7Xvn9K8SqT9wTE+EGk41C+nAtr4nC747NDylwbPEQ8pYaji
zRdR5qx30iz3oUYjjqR1mr0ac4oa5h8N+bzZyA2hDBuPWgE+ovGB0nHuicEaNd4N
9HNI0A6Vcl9hcKf0y2nOAOBIB8UK3Tr1PHqUBiIdjeSkySLAyEKvhCIU7/MpiJoq
0MO1q1X3XJqLuGj86VwuyPwxZ1f8+BpqKe3rSdmV0zoSYfFU3g8vwSn1LJ4q4r/k
8Ov1E/9MniPVuGCfG1lCxAjB7FHZ9+xBTWs51pyTmcjsacAqQC0hJNdlLuH9xV6G
zPAsLwTOkG59sy7ESQ9DRaFsb94pWTmOh3eHV8mpU/RrORaEE2JWEh3rRIMoIsNG
LfgXHW/TGdm9MZ5x7chM
=MmAK
-----END PGP SIGNATURE-----

--4CLH7XRDv0vimoclthuK0t8amUj7pu0OJ--
