X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3476" "Wednesday" "20" "July" "2016" "09:15:26" "-0700" "Will Sargent" "will.sargent@lightbend.com" "<14ffaef2-f635-7267-9976-7a9329468099@lightbend.com>" "85" "[oss-security] Re: CVE request for the Play Framework" nil nil nil "7" "2016072016:15:26" "[oss-security] Re: CVE request for the Play Framework" (number mark "U       will.sargent Jul 20   85/3476  " thread-indent "\"[oss-security] Re: CVE request for the Play Framework\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17934 invoked by uid 550); 20 Jul 2016 16:18:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16189 invoked from network); 20 Jul 2016 16:16:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightbend-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version;
        bh=58MBM7mcfdlSPSf3fGQsAHzTU/XNeuPPwz21h5uaACg=;
        b=nPsKeySn07yNzPRHVxrGnA7llzHAAQPsy2C3MvFS/TuMtjZ84GS/DXHWHk7FH3Ygjt
         5KVyd0N4RrJUjSBILTw2V8ifop56SXOpCD7wrr0E5+MX9CGNNzL1rI5fFxOY3oL4TypB
         pNd73/jLi35CFpX698mmNAOuZCcn8How93Q0udiXfIVK2k24wX1RMAccFdq/EotuF5MF
         1GTSQLoUyGKkD8q6flWE+kSS+91fWWEUMVYyriPfq3CjWbQ30fUKutv2nma/Qqommvst
         WZoJgFxGRfwyBF13prHgKo9PEKwoTil1acpwMYbNk9UzEjmunpYBEEDZQUS30bMm1Bbs
         s5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=58MBM7mcfdlSPSf3fGQsAHzTU/XNeuPPwz21h5uaACg=;
        b=Fg3eFtvKVIUbBSvmXYrLrmkN7s/xglX1ihUrQHZjMFY4dhSmiAkNP6f8D5k3rDVCRx
         9ONO16EBKBFN8k9GDpRY6m9fvj1EqFziLQ5Iz7uk0PqGyixqtIMjXmBzm9SxmFtMmWw3
         iPxJfJYFwVIc39nq8cIAKmVAWwiW+dEYx5p+cfSLXaEgsLQ659epFnwLIBiGvyfv8s67
         jQaohcqmE2PIamuOmVrG2jp2J+uG9LvHZY5RF2Vqjbki/jeRh+JrbxwkAa47AFMjo4W7
         rpI6+tJLSj25c3m6fzm1jjAkCXKCPFrX60l93C10wN3Bua5voz6s9/UxIleDoOqxJqxo
         JcSw==
X-Gm-Message-State: ALyK8tL7E01iyrKBd2ozTY7IRd6JBvW9F57iDKyDjcCcIewyvnfPao1OhRFZC2aH5OcgKajj
X-Received: by 10.66.183.80 with SMTP id ek16mr76321196pac.21.1469031371911;
        Wed, 20 Jul 2016 09:16:11 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Will Sargent <will.sargent@lightbend.com>
Message-ID: <14ffaef2-f635-7267-9976-7a9329468099@lightbend.com>
Date: Wed, 20 Jul 2016 09:15:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="AvBVekurr6P6jfQsg0imNs19rgITAL0hD"
Subject: [oss-security] Re: CVE request for the Play Framework

--AvBVekurr6P6jfQsg0imNs19rgITAL0hD
Content-Type: multipart/mixed; boundary="mUT1Ov5W7XgcC348efO7lanmN42O7Daea"
From: Will Sargent <will.sargent@lightbend.com>
To: oss-security@lists.openwall.com
Message-ID: <14ffaef2-f635-7267-9976-7a9329468099@lightbend.com>
Subject: Re: CVE request for the Play Framework

--mUT1Ov5W7XgcC348efO7lanmN42O7Daea
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

> > In version 2.5.0 of the Play Framework a CSRF bypass that depends upon
> > an implementation bug in chrome's beacon api was fixed.
>
> We think additional information would help in deciding whether this is
> commonly recognized as a Play Framework vulnerability (which would
> have a CVE ID) or Play Framework security hardening (which would not
> have a CVE ID). Our understanding thus far is:
>
>   - Play Framework is not an Atlassian product
>
>   - https://github.com/playframework/playframework/pull/5527#discussion-d=
iff-51786858
>     says "In order to make Play's CSRF filter more resilient to
>     browser plugin vulnerabilities and new extensions, the default
>     configuration for the CSRF filter has been made far more
>     conservative."
>
>   - Chromium issue 490015 has some debate about whether it is a
>     Chrome/Chromium vulnerability, e.g., "The issue is whether it's
>     the browser responsibility to act as a nanny to weak websites, or
>     we should leave weak websites as sacrifice for great justice."
>     versus "To be clear, this is a security bug ... There is a
>     security bug in Chrome, but no action is being done."
>
> Typically, it would be best not to have a CVE for Play Framework if
> the essence of the Play Framework problem is "the product did not
> proactively add workarounds for all browser-level vulnerabilities that
> might be discovered later."

Thanks for your review -- Play is proactive about security, but does
rely on the integrity of the browser to implement key security features
(CORS, Same Origin Policy, security headers, etc) for that functionality.

Regarding your other questions, Play Framework ("Play" for short) is an
open source project -- the source code is owned and licensed by
Lightbend.  You can read more about it here:

https://www.playframework.com/community-process#Implementation-decisions

For reference, there is a mailing list for reporting vulnerabilities at
security@playframework.org.

The mailing list for receiving Play Framework security announcements is
at https://groups.google.com/forum/#!forum/play-framework-security

And the HTML page for viewing Play security advisories reports is at
https://www.playframework.com/security/vulnerability

Thanks,
Will Sargent
Lightbend, Play Team



--mUT1Ov5W7XgcC348efO7lanmN42O7Daea--

--AvBVekurr6P6jfQsg0imNs19rgITAL0hD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXj6O8AAoJEMHovwYrxsS3jq8H+gJg/Qdgy7hCCckCCHPCKCBK
YQte6eJplS0KBwrCVW7OZ5Nh/ircV1MXeqWVGNO4B33+v3H8sIJFmT7U78Yu9KHT
fpazo/Udh8iN4E8csA2YfaP25Ks/zyJ+frZQHFlKaC9fkHVumh7RptNW1xxxOf3S
CGgzKMdBOtcvge85WX7vVwc2y0+1RtIVN+LJZqCKKeykuH0Pd4UzmD760mp5/sGE
pboR1amzX36hmY7nDNczYwDdiX1Zr7gc4W0L4rSpfpwA533CKgMmGdI2TXxawhG6
wPVRJo6fMUOXnyQlUxQUBXiEa4IHiSUPjH581ftXg62OJmzrF2T1Wd6PiCmP71E=
=6HM4
-----END PGP SIGNATURE-----

--AvBVekurr6P6jfQsg0imNs19rgITAL0hD--
