X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2277" "Thursday" "8" "September" "2016" "13:39:25" "+0800" "0xr0ot" "0xr0ot.sec@gmail.com" "<CAG0ev14edKkjOwT=xdu2HtfHgeFK9mBCysZPGYvY+tg0UHceiQ@mail.gmail.com>" "77" "[oss-security] Fwd: [scr231911] SVE-2016-6248: SystemUI Security issue" nil nil nil "9" "2016090805:39:25" "[oss-security] Fwd: [scr231911] SVE-2016-6248: SystemUI Security issue" (number mark "U       0xr0ot.sec@g Sep  8   77/2277  " thread-indent "\"[oss-security] Fwd: [scr231911] SVE-2016-6248: SystemUI Security issue\"\n") "<20160908053408.6971C34E006@smtpvbsrv1.mitre.org>" ("<20160908053408.6971C34E006@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24417 invoked by uid 550); 8 Sep 2016 12:46:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19516 invoked from network); 8 Sep 2016 05:39:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=VcIViDPVu3J9zvuGnTRkBppeXgN0ksurZ1ByCzsTbXI=;
        b=TeFUKAAOsZDS0vqhgg3eRdggxHQr+91c0tWaB72YwBb8QDWofQxyHLXhXH6v1qavii
         VDtukUKS4g8FY00sMBFtNVnae2F3mbXla525Ad3eHf6zifZdQJaUFX3vSDmxCea6px8n
         lJ0P23mjEJfzPMRawAGQLKv9NjJ5KEUyTzYeGZAClZnBm1mC4fIJa4JCUC/Luzli0BAE
         NDTcLOmQ2nAuXJWrCRXpLeJJXUsItMELhhweMDudcc0vI/CRQIikhOfeqmDHBHNRP6g1
         M6SREPwpYE4iYmsJ2x4j5wGwG6Af+SIZoFBt60Eun/WyHOLWe/sVyrhblSRGStD2T/WG
         AO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=VcIViDPVu3J9zvuGnTRkBppeXgN0ksurZ1ByCzsTbXI=;
        b=AhxRG6b2sYT0NP24H4kmJjvFwl7cTQ+jLpaPIkSAwZy7E4CDOqcgnkD48sPycVCGDc
         0HS87fKq642j7KWqN+UwCxVQrtdUXycrqz0JsO3JKV8+pUqqE+WaEqzpyI+8PMLa3yg1
         JzPCwKdRhUYbxbHgQbRXDyALlu6JDRVY5WRO1Z+NYWQTiZzUbDAavZQ5szDYJQtJWgOk
         EyMxHzFiRj49UjlIe6ktKb1JtnF9SaTVTdKHNK4BtSRjDp7kTVge9oHp6XLaZNg/3vMv
         PUdGshd90vzIoZV0xVYUlLSeRMDSnys1wu86YcaTgG8m7bAvlG+CfL+1zBXjGfRpLQiU
         KUMw==
X-Gm-Message-State: AE9vXwM5DuuqZsRWXsRq3NPnEj59l1eT5H7chQYfkwikt+cd14JoS1Vqq8YiVEK68LXSCgmFJqDUfn3+C7t6jQ==
X-Received: by 10.194.117.33 with SMTP id kb1mr34261469wjb.79.1473313166156;
 Wed, 07 Sep 2016 22:39:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160908053408.6971C34E006@smtpvbsrv1.mitre.org>
References: <20160908053408.6971C34E006@smtpvbsrv1.mitre.org>
From: 0xr0ot <0xr0ot.sec@gmail.com>
Date: Thu, 8 Sep 2016 13:39:25 +0800
Message-ID: <CAG0ev14edKkjOwT=xdu2HtfHgeFK9mBCysZPGYvY+tg0UHceiQ@mail.gmail.com>
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org
Content-Type: multipart/alternative; boundary=001a1130caa2e96822053bf87372
Subject: [oss-security] Fwd: [scr231911] SVE-2016-6248: SystemUI Security issue

--001a1130caa2e96822053bf87372
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: <cve-request@mitre.org>
Date: 2016-09-08 13:34 GMT+08:00
Subject: Re: [scr231911] SVE-2016-6248: SystemUI Security issue
To: 0xr0ot.sec@gmail.com
Cc: cve-request@mitre.org


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The vulnerability exists due to a null pointer dereference on fimg2d
> driver. The patch verifies if the object is null before dereferencing
> it.
>
> ------------------------------------------
>
> [VulnerabilityType Other]
> Null Pointer Dereference
>
> ------------------------------------------
>
> [Affected Product Code Base]
> Samsung Mobile - L(5.0/5.1), M(6.0) devices with Exynos7420 chipset
>
> ------------------------------------------
>
> [Affected Component]
> SystemUI Security issue,L(5.0/5.1), M(6.0) devices with Exynos7420
> chipset
>
> ------------------------------------------
>
> [Attack Type]
> Local
>
> ------------------------------------------
>
> [Impact Denial of Service]
> true
>
> ------------------------------------------
>
> [Reference]
> http://security.samsungmobile.com/smrupdate.html#SMR-SEP-2016
>
> SVE-2016-6248: SystemUI Security issue

Use CVE-2016-7160.

- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX0PgNAAoJEHb/MwWLVhi2paUP/0v/GUG5AWUFg6tUgN7g1i0O
uRypo3e1aM9OHq3BznGaqBKWUNcbOI8wqcddvQ/9OBNSGxWP393CzxA1qv49HdTd
q2Uz/5en+sapcNQLG397HCDqaYEo5XskPkMHhro/mhjKHrHPgXkLRjGZirjmOAdS
0BWAF75iLZKPG6MCIGFMdu5pGYSkGHPGVQ0gSDGaxRxQG77ZmdmfXRkHktGI0+LG
qL08nISmUddbvr/EhQyHo8mx+v1M2Bo0htOv/Xc2W4JUPKqopYJQpLjJ14eZwxbK
qPFPr+5nFJH/Vqv6DX19sxsczcykIch5RG7JiwZ4Zchm1RqPFEn14FWVeRW0RBv/
crl3+QYo3bEzBK8UNulLYhopJ3yHzoASbsbOuCSzIRshMdbV8sXadWfIZQajGNyp
4bCwcCZ3xdeGilrbXq2Q9ANvYFdmpO5Sp9FLSx6JpCOBfyO+fn812n/y8OskNLBl
3P0A570RcxcUUDMbeJj39jFj2M1aJTC4RzyjSKFnu8sjtUyhRwXMHUsstp76Y4VS
OdauchtnREtY3F7FxIXbP2ROZLKVdWvc/08QW2NoY/j/eLJChu1J3NNrHgTOgAI2
zRBV/kPt50oV06VJADf+Tw4jEdAAZFmgN5ZroWrGiYjNIc9eNt0tpuBPL+qhK7KC
GmNvf2YbCpAd6YInIhVp
=x9Z8
-----END PGP SIGNATURE-----

--001a1130caa2e96822053bf87372--
