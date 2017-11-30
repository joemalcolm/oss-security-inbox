X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2831" "Thursday" "30" "November" "2017" "11:35:16" "+0200" "Ariel Zelivansky" "ariel.zelivans@gmail.com" "<CAE-_4r3Lc-nZGBw+78jRxtSCXRTsXmeA107mpes81kTp4m8nhw@mail.gmail.com>" "79" "Re: [oss-security] CVE-2017-1000405: Linux kernel - \"Dirty COW\" variant on transparent huge pages" nil nil nil "11" "2017113009:35:16" "[oss-security] CVE-2017-1000405: Linux kernel - \"Dirty COW\" variant on transparent huge pages" (number mark "U       ariel.zeliva Nov 30   79/2831  " thread-indent "\"Re: [oss-security] CVE-2017-1000405: Linux kernel - \"Dirty COW\" variant on transparent huge pages\"\n") "<CANatu-ZvJwPtHyYKMzpPT7ovMOR=VNYo4kCHnTEtNGpuj3ELHA@mail.gmail.com>" ("<CANatu-ZvJwPtHyYKMzpPT7ovMOR=VNYo4kCHnTEtNGpuj3ELHA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16154 invoked by uid 550); 30 Nov 2017 09:35:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16136 invoked from network); 30 Nov 2017 09:35:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=lOpWqNtKPL0oPU8SGv8wEgK7qr+OWr5MPZrwe6pwg9k=;
        b=cZrr18HR5GMi1115J4hy+pb6C8cDgWWALSsLCF9Rxlitir/BZzGjRfJ4oCmkLEf9oT
         QVl1KyKi+1/iYP0FETpaTaN5b7qff8D3og1LU4EY2RcIzEYXi5osNgWeGwndY1OKgppw
         92lkEKhkuO0du6+GtVG5vEh/DV7xUfSCd36EXJj/3fvWMnlLlPGqU1PPMs7VoHoXvA89
         p6oFTwmMw/X51nGSC3LMNjsZpEnjdXtAdX55C3o43pgCxjOkQ6LeA12oqWwxPjNHIONu
         TSKer2XH7AwAwHbzL02K+dpkbsZOprpe57rNyGms0RPiysKvsoRN1m5dW2Pi1aRLSojN
         kogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=lOpWqNtKPL0oPU8SGv8wEgK7qr+OWr5MPZrwe6pwg9k=;
        b=udzaejQHfFnr1CYrBdFGfO/DbVGpAe6x/Z9M3NyxDwisyDeos/6cnE1OCth7NJ4sfK
         L4V7F+ohR8pOtN/1O5wxh+Ig8ccsk1vW7ec/gZINnNGwfkGZkUJgaq8Fq86l0OQdWjcv
         zMd3cS6wkeARwk3fxFxwLy8SdE66vys8lHss2ZykgakT9SIhPG5LWCgURxMkfNLdhy37
         GX+97ZxbfrBVSIEOquxYOCgnRCIZt1mqeWzfdtku3qQm41NKibfeUWv0iF7hReWWhEjF
         fws1+AYXef/wf364yvQgcuRWexzDxNrNZaueebcG2UPMNxpFg/jOkcWlQxmg8ufADxnf
         m62w==
X-Gm-Message-State: AKGB3mK2jThPuLS/9VjI0U0C7St3Q7Sitt/9j4VBUK05scz1U8fpDQ7s
	8Hbx6DHdRL9J0p7HBKmBbZfpmxJfeljrQcvjsbZo7UZz
X-Google-Smtp-Source: AGs4zMa/7FovjFtuZTOZ2FyzJ3iG3lyRgqUfmuBaGPtE/cy6OFdFQcenKA10DpdOHVRy919sxc771oifxSIU0Dbes34=
X-Received: by 10.55.147.69 with SMTP id v66mr1761227qkd.67.1512034516928;
 Thu, 30 Nov 2017 01:35:16 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CANatu-ZvJwPtHyYKMzpPT7ovMOR=VNYo4kCHnTEtNGpuj3ELHA@mail.gmail.com>
References: <CANatu-ZvJwPtHyYKMzpPT7ovMOR=VNYo4kCHnTEtNGpuj3ELHA@mail.gmail.com>
From: Ariel Zelivansky <ariel.zelivans@gmail.com>
Date: Thu, 30 Nov 2017 11:35:16 +0200
Message-ID: <CAE-_4r3Lc-nZGBw+78jRxtSCXRTsXmeA107mpes81kTp4m8nhw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2017-1000405: Linux kernel - "Dirty COW"
 variant on transparent huge pages

Great discovery and writeup. I looked into the latest kernel release
(v4.15-rc1) from 3 days ago and it doesn't seem to include the
committed patch. Am I missing anything?

On Thu, Nov 30, 2017 at 2:32 AM, Bindecy <contact@bindecy.com> wrote:
> Hello,
>
> This is a brief overview of the vulnerability, more details are available
> in the post referenced in the GitHub link.
>
>
> =3D=3D=3D=3D Summary =3D=3D=3D=3D
>
> In the "Dirty COW" vulnerability patch (CVE-2016-5195),
> can_follow_write_pmd() was changed to take into account the new FOLL_COW
> flag (8310d48b125d "mm/huge_memory.c: respect FOLL_FORCE/FOLL_COW for thp=
").
>
> We noticed a problematic use of pmd_mkdirty() in the touch_pmd() function.
>
> touch_pmd() can be reached by get_user_pages(). In such case, the pmd will
> become dirty. This scenario breaks the new can_follow_write_pmd()'s logic=
 -
> pmd can become dirty without going through a COW cycle - which makes
> writing on read-only transparent huge pages possible.
>
> This bug is not as severe as the original "Dirty cow" because an ext4 file
> (or any other regular file) cannot be mapped using THP. Nevertheless, it
> does allow us to overwrite read-only huge pages. For example, the zero hu=
ge
> page and sealed shmem files can be overwritten (since their mapping can be
> populated using THP). Note that after the first write page-fault to the
> zero page, it will be replaced with a new fresh (and zeroed) thp.
>
> Using this primitive, we successfully crashed several processes. A likely
> consequence of overwriting the huge zero page is having improper initial
> values inside large BSS sections. Common vulnerable pattern would be using
> the zero value as an indicator that a global variable hasn't been
> initialized yet.
>
> Potentially, privileged processes using the mentioned pattern are
> exploitable.
>
>
> =3D=3D=3D=3D=3D POC =3D=3D=3D=3D=3D
>
> The POC overwrites the zero-page of the system.
>
> POC source on GitHub: https://github.com/bindecy/HugeDirtyCowPOC
>
>
> =3D=3D=3D=3D=3D Affected Versions =3D=3D=3D=3D=3D
>
> The POC was tested on Ubuntu 17.04 with kernel 4.10 and Fedora 27 with
> kernel 4.13. Every kernel version with THP support and the Dirty COW patch
> should be vulnerable (2.6.38 - 4.14).
>
> RHEL claimed by the vendor as not affected.
>
> Fixed on Nov 27, 2017:
> https://github.com/torvalds/linux/commit/a8f97366452ed491d13cf1e44241bc0b=
5740b1f0
>
>
> =3D=3D=3D=3D=3D Timeline =3D=3D=3D=3D=3D
>
> 22.11.17 =E2=80=94 Initial report to security@kernel.org and
> linux-distros@vs.openwall.org
>
> 22.11.17 =E2=80=94 CVE-2017=E2=80=931000405 was assigned
>
> 27.11.17 =E2=80=94 Patch was committed to mainline kernel
>
> 29.11.17 =E2=80=94 Public announcement
>
>
> =3D=3D=3D=3D=3D Credit =3D=3D=3D=3D=3D
>
> Eylon Ben Yaakov and Daniel Shapiro from Bindecy
