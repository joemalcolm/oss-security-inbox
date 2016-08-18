X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2015" "Friday" "19" "August" "2016" "09:59:16" "+1000" "x ksi" "s3810@pjwstk.edu.pl" "<CAN10O-b=zyuz3qvV3C_i0z8c-KJgwxkqppY3FVKF9=+RAKFPEw@mail.gmail.com>" "50" "Re: [oss-security] Re: CVE request - slock, all versions NULL pointer dereference" nil nil nil "8" "2016081823:59:16" "[oss-security] Re: CVE request - slock, all versions NULL pointer dereference" (number mark "U       s3810@pjwstk Aug 19   50/2015  " thread-indent "\"Re: [oss-security] Re: CVE request - slock, all versions NULL pointer dereference\"\n") "<20160818211312.5589DABCA54@smtpvmsrv1.mitre.org>" ("<20160818184456.GA16393@sinister.codevat.com>" "<20160818211312.5589DABCA54@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5832 invoked by uid 550); 19 Aug 2016 07:05:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20014 invoked from network); 18 Aug 2016 23:59:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pjwstk.edu.pl; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=NtXPHoJMPUqYB02u9OREDzoNeau1UOcZa8JdeXSgu/E=;
        b=CshMcl+8kyPlYoOR9WT1k7mfJyRxnQ5RNQRKdkKnH+VONR8MZKakrfQMTo5x3o4vlo
         7QB61UVygPbYbxVLCR5qtSLHB/ZOj3VUyHhdT6qiqlgJfgmSW1DWj5v4FTv7IXkbXbt5
         FfO9w4G43wcN7fM4lUP8tSZyrgP4pHspGGbws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=NtXPHoJMPUqYB02u9OREDzoNeau1UOcZa8JdeXSgu/E=;
        b=V7pxOKNrA7Ck4bQhL38ee4tODpEZxGWVwNrVaStq4rM7jPC9H0Jdv+FmAXLdZ+Gfxe
         Jxta2NUZ+UHkBu94+x6MRiI7b5Ow9z3FXX1G4JU/TFQb9Gq8btzJwx1A2FzLqHBa/MRx
         R1/F56OHuFnsjLfnmztGuseoalM5hOleqJtWnwqISd3EMmQbIMgZqFcKFCtlaQXZwvBQ
         DXliSyCDVhv4lXD7ok25rXWu77TUfRU4+LREgui/En66zqElnQ84NkhPIBxfjyPB+25n
         WvQ2LhT8aefAzB8VqQMlAogwUsk3KYmcN9coCzyzNrCSNgjiyoh/Q2XYhT7mtK9V1paV
         q+Hg==
X-Gm-Message-State: AEkoouvSTAAu2rLhYkx6sAPrCGHuFvYFyTt9GABJkZmutypXQFzqRWP4DkUAgNJNWTrQPSfRuCnSwa5neuy7Vw==
X-Received: by 10.36.144.68 with SMTP id x65mr2644592itd.70.1471564756476;
 Thu, 18 Aug 2016 16:59:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160818211312.5589DABCA54@smtpvmsrv1.mitre.org>
References: <20160818184456.GA16393@sinister.codevat.com> <20160818211312.5589DABCA54@smtpvmsrv1.mitre.org>
From: x ksi <s3810@pjwstk.edu.pl>
Date: Fri, 19 Aug 2016 09:59:16 +1000
Message-ID: <CAN10O-b=zyuz3qvV3C_i0z8c-KJgwxkqppY3FVKF9=+RAKFPEw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: eric.pruitt@gmail.com, cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: CVE request - slock, all versions NULL pointer dereference

Hey,

Just for the record... http://s1m0n.dft-labs.eu/files/slock/ . Vendor
was notified about this issue on 2015-11-13.


Thanks,
F

2016-08-19 7:13 GMT+10:00  <cve-assign@mitre.org>:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> The screen locking application slock (http://tools.suckless.org/slock/)
>> calls crypt(3) and uses the return value for strcmp(3) without checking
>> to see if the return value of crypt(3) was a NULL pointer. If the hash
>> returned by (getspnam()->sp_pwdp) is invalid, crypt(3) will return NULL
>> and set errno to EINVAL. This will cause slock to segfault which then
>> leaves the machine unprotected. A couple of common scenarios where this
>> might happen are:
>>
>> - a machine using NSS for authentication; on the machine I discovered
>>   this bug, (getspnam()->sp_pwdp) returns "*".
>> - the user's account has been disabled for one reason or another; maybe
>>   account expiry or password expiry.
>
> Use CVE-2016-6866.
>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJXtiRVAAoJEHb/MwWLVhi2sacP+gMeIHHCDQ9cy+JpK1eCnSCS
> sazQCwgyDrGdrT9a842vGgkenEmHfeIwJHlpsMsmB4SBhRjUkWSMDKwh/VYyIFAI
> U3bIi2B3jqG70onrQJnHPYisz/shOdyv5m4GxTCFVn17i0R4iJ9h3yO7coFG2QMT
> GxMlm+QkxvUiTz4hEKI6pt7Cpca/5819cqs7fJr368zP1KB54b0dIRNFzFYMOyqk
> Q6M9SvJICMz5j5rrxYFijhfTrB8AiuU0XNgwZs/sJhRXy8xdf1n+m5C60eDLG+o4
> Qx2KzHhlDScl680OQNi77MCSHq8Ffb5bEWZDsxujqcN3p4JDGMTBKAJ2vWfDajog
> 7Ugaqz4ddnj2EY8+ZL6jPzxq1HqBbUmwCCCwvoeltF6etclaGB4Hps6p7ffB3zQy
> rXsAUC659T/xPURObeHB+krNEadz/lcx1/ucA7+DXmtBmd/oHDYsbwU91M/z+oCQ
> 6K/CIT2ZTKbUPDP8mdQfpgPsURRXc+oMl8AsUf9OBlnNPn1MGeGfbNOUZz8tJnuT
> coI//OylyihxjQaOK36vxTu4WtMtvH+bR6tH39TSTxyyKiOFG4xavWCJpshUwDa0
> tx9QK6RbbWLfIm+PaSkiFqpsZ+oy25DI2FmUPe47u8qStCAVm5TSnOi3/YuPfTMr
> osR1b1FAQ/zhY7kYhD1n
> =HbWC
> -----END PGP SIGNATURE-----
