X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2058" "Sunday" "30" "October" "2016" "14:49:37" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQ7qc6fBEUJ+W5VD=FcGB0-OWg3Bq3OPVLa9XKZMCZG+Q@mail.gmail.com>" "61" "Re: [oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" nil nil nil "10" "2016103017:49:37" "[oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read" (number mark "U       gustavo.grie Oct 30   61/2058  " thread-indent "\"Re: [oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write and OOB Read\"\n") "<20160928201120.CB064ABC23D@smtpvmsrv1.mitre.org>" ("<6c6e2d2c-2fc9-9538-88e8-ac2f309211c3@gmail.com>" "<20160928201120.CB064ABC23D@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26076 invoked by uid 550); 30 Oct 2016 17:49:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26052 invoked from network); 30 Oct 2016 17:49:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=7Jxcic/XwM9JEr6okIJP84MJvEEhy3i5HBeY8flX70E=;
        b=bHWyERXHhe3LFBWpUUje1Q/HwocT5nDCKT8YAv/v2lje8qf7VLx77pcTIqPcyP2Znj
         SHPIqkhviyULDrD93jjtzbRDPkxeZgXKpI4PvIZmTjjqjcrHDrX2rItufX/jdNRNN9eB
         2293NyRvxRZEMdkbPucTm90Fz6bqNHeftxuiE2eyVwFPZmvGRQ7stf8EiY0myQf6WnFQ
         9Q4O7RDl2vDqoY58lmVkZ9im1p+f3cAQIkFAjD/jNHz9nBMnDDMpCOXe3Rj50ECr8HyZ
         XmM/ib3zzWMexLkbVHSz6X4csGRuyNVNC5f4bpjyQ7siE8ZDfPaPU5AB40qGsEP0TARz
         6r2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=7Jxcic/XwM9JEr6okIJP84MJvEEhy3i5HBeY8flX70E=;
        b=ffihyfdefrB7dHI9P+gANxa56T05s1kMV3rtBblj1JHOjhurNfJa6wZRSELAO1vQzT
         VnHZJm5elhIx1xDfAotoTq/DZlzpWbg4y/vmCHazrEVdvhOO3iSg4caDG4bUwb3bo5qt
         FEF+E535jYmu3wNnr7CSydHjerXcH/KF+1BaxI2almi7xHr5FljQpX8NT654/6T+ZEXN
         QC/CU1ud3axeCJVHCMY3EMTSzFMj6jYwfDa1NHxNGyx+oAZSLuFPYatFi03Lde6jymlJ
         50a0dmuZFJAUfi7cPXmlY9vtXyE/AxIDOHYpBAFtpbtnAPI+X+cQlnZAyTpTQnkCPi+T
         ycTg==
X-Gm-Message-State: ABUngvft1vvQ74PS8xD/oNsH/NdFLuUzzvZAYCK+ZEQyulaB4D2wDpUHOilRBU5B1xlYJFKUuPierJBDe2ghwQ==
X-Received: by 10.107.58.10 with SMTP id h10mr17698744ioa.78.1477849778598;
 Sun, 30 Oct 2016 10:49:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160928201120.CB064ABC23D@smtpvmsrv1.mitre.org>
References: <6c6e2d2c-2fc9-9538-88e8-ac2f309211c3@gmail.com> <20160928201120.CB064ABC23D@smtpvmsrv1.mitre.org>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Sun, 30 Oct 2016 14:49:37 -0300
Message-ID: <CACn5sdQ7qc6fBEUJ+W5VD=FcGB0-OWg3Bq3OPVLa9XKZMCZG+Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114ac51a15c081054018b7ee
Subject: Re: [oss-security] Re: CVE request - mujs Heap-Buffer-Overflow write
 and OOB Read

--001a114ac51a15c081054018b7ee
Content-Type: text/plain; charset=UTF-8

Despite CVE-2016-7563 looks fixed in the mujs bug tracker, it was not
properly patched:

http://bugs.ghostscript.com/show_bug.cgi?id=697136#c4

2016-09-28 17:11 GMT-03:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > mujs str Out-of-Bound read 1 byte in function chartorune.
> > http://bugs.ghostscript.com/show_bug.cgi?id=697136
>
> >> AddressSanitizer: heap-buffer-overflow
> >> READ of size 1
> >>
> >> We were unconditionally reading the next character if we encountered
> >> a '*' in a multi-line comment; possibly reading past the end of
> >> the input.
>
> Use CVE-2016-7563.
>
>
> > mujs "char *s" Heap overflow in Fp_toString at jsfunction.c:72
> > http://bugs.ghostscript.com/show_bug.cgi?id=697137
>
> >> AddressSanitizer: heap-buffer-overflow
> >> WRITE of size 1
> >>
> >> We were not allocating space for the terminating zero byte.
>
> Use CVE-2016-7564.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJX7COpAAoJEHb/MwWLVhi24ugP/19AmMjWnrZ9kH88CpBt/y0M
> s6rWfYpCF0k56G6RSlkuUm/XOlqBPAsWK9I3REM32shkCLaA0L96IeQnW1h/flT1
> 7m30tJmxi31i31XfvpnBJWl06EqKTMZvNdNQBO+JS79ehBGmhmsIWjs9EkbBpNIv
> 9jr3rzWE+K7IAZcWAGu5e56mCC+FpNE1djZ8Iaw+RuX2oVOvJoDTq1hskiRMijKw
> qXiudF6upJ8HUzBWN3mbDAUtuA0VmYClQZ39iy7V6nH7QuwbG4XLvzAjkCjmzwhS
> bkg7zFhNOMw6J1nuVD5s5VtrhRctgaPaDDaTnNsw7IYjyYNbO+obhw3x1ZnqrXcx
> +wN3ZfMzxk0Q4n4KypmF2OJ6QITYqH5K6ofO5D9OI39cUmjsBEj1smqxSZq01xrU
> YxDyGS4gNQ6hWKS23/wgPt9YAjX+2xBMnAyygBrAzNcfFmO42XUpHDWl2ArnXQ1l
> kVyZLKOxFbGeTcsMyDFAjsDwD9tffl/6jDkZgd34em6kS1+lE7bccy2+IUsynrxz
> 7zqhueAX7uOOVbjgJ4bVpGYgebj2J8AVHJoJJKtaWskCBKbxyxbT49twJ56lSDd9
> s5kVrUGdOz6+9RO7GJ/6dEwqJjmUYXh8O/3qI3h4gjmeTHAIaJ+uxhZ5J34Sj8xe
> B6ZoBxrnz+3QVOfjQ49u
> =iapx
> -----END PGP SIGNATURE-----
>

--001a114ac51a15c081054018b7ee--
