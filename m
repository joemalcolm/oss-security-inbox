X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1701" "Monday" "7" "November" "2016" "15:29:37" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSHFna-46qCeffARuWeYqxtfhsaKLMwJ0zMu7Gz-i9hnw@mail.gmail.com>" "48" "[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" nil nil nil "11" "2016110718:29:37" "[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" (number mark "U       gustavo.grie Nov  7   48/1701  " thread-indent "\"[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read\"\n") "<d14b218f69c243e8882399bdea634e66@imshyb02.MITRE.ORG>" ("<CACn5sdQ7qc6fBEUJ+W5VD=FcGB0-OWg3Bq3OPVLa9XKZMCZG+Q@mail.gmail.com>" "<d14b218f69c243e8882399bdea634e66@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13820 invoked by uid 550); 7 Nov 2016 18:30:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13798 invoked from network); 7 Nov 2016 18:30:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=IR5QXIFbTCE7i02j62FMahw4ia+JcXwqIQtTG84xWmY=;
        b=EP96l1bSFv6lp/bCi+PECJdm6yloXIfc5EUIWVr4BgorT60FzzieKxMyMzSmyvaTMx
         pu7e4bpVsVMfssZvNa0k0fabYshwjNQXkOdLPJdTEBkV9e8dckLSxd3u0GSlmSwV8ywr
         FNi7YAQeT4StjwZw8bEHIyrkBE2fkjhsfYaOoVekAjzrLJtT2hMsnShdGTsUAQmdEb1I
         4xa8LaqD+b1V5Zap1cor//otClce9T2XUn8xOQh40ip0TnigI9EaKgTQCUYtbYRduNFl
         RjUGO8lGHHC275I7m1I+QsTakSl9nJGAUSW1YiWhHEVD+cO/pGwgrRWNw6yI6IESq20b
         qdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=IR5QXIFbTCE7i02j62FMahw4ia+JcXwqIQtTG84xWmY=;
        b=SR7boxipNYAT+FamMPtNP32Oh4VLKWOwtfU2e84pZHpwKBi+8zcR/u3DWmUsdDECTk
         UxoghW4PO6G+3aNvaKawqY0cprbvw6xgqJYF4Slx4wyYpfuOvOulY+4eOIkvSfmJpyj7
         SUcCM5O8PlRUPMlNbfgJtAxXcAPh0VmTsgK6QMfg/J0e4UOVZsnRrh7XIJUeD4UA/wna
         foUipVdzMnbSQJUt+XooafvSaaYWhy/69FrkoX/gEUv6SHk0iVOPp2H3moRK5Fk0p9BF
         vsBEf4b7trL3xH5PlVeVhoUZB+levS0l+e6KpTO/8yn0EKhKlM42R5eMzdhs7rOul+M2
         q5cw==
X-Gm-Message-State: ABUngvf3ftOEQb5x4y8qgi6kyJegxaFU5xahDlkhJ0aLCGCNwM36UXzbuRfjwidw7KLo3FBj6QF+Ieq2lOgPkA==
X-Received: by 10.107.145.3 with SMTP id t3mr8674704iod.42.1478543378062; Mon,
 07 Nov 2016 10:29:38 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <d14b218f69c243e8882399bdea634e66@imshyb02.MITRE.ORG>
References: <CACn5sdQ7qc6fBEUJ+W5VD=FcGB0-OWg3Bq3OPVLa9XKZMCZG+Q@mail.gmail.com>
 <d14b218f69c243e8882399bdea634e66@imshyb02.MITRE.ORG>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Mon, 7 Nov 2016 15:29:37 -0300
Message-ID: <CACn5sdSHFna-46qCeffARuWeYqxtfhsaKLMwJ0zMu7Gz-i9hnw@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1148d6d2d5aa8b0540ba3498
Subject: [oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read

--001a1148d6d2d5aa8b0540ba3498
Content-Type: text/plain; charset=UTF-8

Hopefully, CVE-2016-9109 should be fixed in this commit:

http://git.ghostscript.com/?p=mujs.git;h=a0ceaf5050faf419401fe1b83acfa950ec8a8a89

2016-10-30 16:49 GMT-03:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > Despite CVE-2016-7563 looks fixed in the mujs bug tracker, it was not
> > properly patched:
> >
> > http://bugs.ghostscript.com/show_bug.cgi?id=697136#c4
>
> >> AddressSanitizer: heap-buffer-overflow
> >> READ of size 1
>
> Use CVE-2016-9109 for the issue of an incomplete fix for
> CVE-2016-7563.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJYFkuiAAoJEHb/MwWLVhi2RYQP/RUxITs9d7YwygKvsonPO6KY
> G0w5aAZSoJQq5SuQHFpU5B6CBfMfGB4iSWTrdLhu71hSBHlFMoca8Q4Rlirnnefh
> mrK2dUlB4ZeY9iAu/WAsi7svdMhbsaNWD4FchYdm8PTBP10Q0pHCilPAmJI4/fev
> vZIeSeHl0KcYD104MtYD2ek6bOUm56Dxuf2nBTRfVJNBZa/q1FRS62cg+Nkwo4Hx
> sfvepzy26nE0PzCFn1GcPu3H0SuWe1nkgfSwgZjFSDAg+OwueJLAFnm/Y+xloUWv
> lD3WiHU1cESxY4SyH3UgUa2QgNTI0zauLxLzcwLOYMF2rh8UlACG2DqOckgI9Bkk
> GYetbtkGbnZOmwBTEFPdKfFISEo5dBBPRWTxFXnepCnwjU/Gl1gLt07s4/90UM/7
> +w+kXl0boDt7W7PUYxyn6lkYUbT6Irodxvk1QDe5LcI5eyU8+QN2yNW1t8sp7qAi
> 578PKtcezerFo0L9WHSvNcV3+CM9mO00LdI6ZxCEy8qmc5s5yrnbtIElaNdJfOek
> 1riKd3yPvz3T/2EGbpVXE/9gkpz4My37e+bhhkBhzScp6pcM6tOcycBvSzM1LKls
> HNh0uzMpzadWQA474KQsCoXAZ+M3N1ViBmUs0KUCGs9NAqxjYV/pKtONiKUqTHbJ
> 4cNzu7H/SxrQp0e6nt3h
> =vKjs
> -----END PGP SIGNATURE-----
>

--001a1148d6d2d5aa8b0540ba3498--
