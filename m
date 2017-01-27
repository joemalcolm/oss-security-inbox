X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2622" "Friday" "27" "January" "2017" "08:49:55" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSLT9J13++EfwGZ54-Kd-zaLEkG-8y+-XUHbSURkr2nuw@mail.gmail.com>" "71" "Re: [oss-security] CVE-2016-9584: heap use-after-free on libical" nil nil nil "1" "2017012711:49:55" "[oss-security] CVE-2016-9584: heap use-after-free on libical" (number mark "U       gustavo.grie Jan 27   71/2622  " thread-indent "\"Re: [oss-security] CVE-2016-9584: heap use-after-free on libical\"\n") "<20170127112142.pgx5mrvl5qsxnvpa@home.ouaza.com>" ("<CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>" "<CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>" "<20170120112604.cga6fjvktcveo46g@home.ouaza.com>" "<CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>" "<20170127112142.pgx5mrvl5qsxnvpa@home.ouaza.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13355 invoked by uid 550); 27 Jan 2017 11:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13334 invoked from network); 27 Jan 2017 11:50:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AgIFlwPGattd0QmPgGdizYw5Ok7YQ4mePbJmqHUevVc=;
        b=ktxjY0tzCFumdZuG+Jkn7wF3+bWfr7imaQmZ2xu9oKWrSMIG8nEhZHROVh4pObxiZR
         TJzKx/1K6VQAMx+HG6I991fGokNFXnz1IjQ6WYB2Xgq76DzbGsCmcNtm9Sh7zkLLdCkK
         OAti/otRnGABexnhlOvImbK2IZScRa7c08TWiel4o080G0/EoCdNsWKOrAoTkEjdt1Sr
         1JjLCSSK0Q9OI8YEaNM8nn97D1n9PsyjMrer2zVylhqPwrETXzrZ3fKYoV6EYab9bnnR
         vcK8lQuFSpdORGIa5DUOdVEzvkuSjc39NNvob8a2W4L+m/sg7XMdb5gUqBxODgD/AmI4
         sVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AgIFlwPGattd0QmPgGdizYw5Ok7YQ4mePbJmqHUevVc=;
        b=LdGTPMM+AHk0neQy3X3mjOGXB0H1urjhp0273MNeJJ+5hMOjkOpOUumxpY1TYM/kHX
         S7O2HrzeJ7gKQc2xyYYWlpdxzNmvpUL39xo64teBMDge1AxXG7hVa/VgQVkQnrzsvdIj
         OGwRzJ+eUfnthIOtF06ZT0jNanXOyogiy6U6++KwzKJZkwaDjjZu+jgyfePQD5IN0t8B
         jIiC+AIyPx67uWqDxghuIB1WwJeX5oh4moKgKFRVV97qc520NhwUq+zRUhEqNAZeGM5o
         y7S6nP/glpqWqqJW0YMI9jMryXgqfJ9p7j2Wryhqd3tdZGRKSkhTMcGP9/JLgcE3XoyG
         bnCA==
X-Gm-Message-State: AIkVDXKPf09Lrw7PHSeuY1nJRUNI3OuSwMyaAA8ZPbRRLKBNFgJPrG/HLtb/cCrLXImoqEfb3gkbsghpFxCkGw==
X-Received: by 10.36.89.140 with SMTP id p134mr2781894itb.86.1485517795578;
 Fri, 27 Jan 2017 03:49:55 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170127112142.pgx5mrvl5qsxnvpa@home.ouaza.com>
References: <CAFR3uCN6=QS2FN0yAWA_T61sVzYgrPd6FsqLd43mhPYGS=CUZA@mail.gmail.com>
 <CAFR3uCNRc4SvGrUbQLjZEqAdLWj90tewpUt9c4Qv_+RRo_k6SQ@mail.gmail.com>
 <20170120112604.cga6fjvktcveo46g@home.ouaza.com> <CACn5sdTLxn6uRQdZfpkrWzY4Tc+2_mLGdjG6-O_7hoUSoHNa7Q@mail.gmail.com>
 <20170127112142.pgx5mrvl5qsxnvpa@home.ouaza.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Fri, 27 Jan 2017 08:49:55 -0300
Message-ID: <CACn5sdSLT9J13++EfwGZ54-Kd-zaLEkG-8y+-XUHbSURkr2nuw@mail.gmail.com>
To: Raphael Hertzog <hertzog@debian.org>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2016-9584: heap use-after-free on libical

2017-01-27 8:21 GMT-03:00 Raphael Hertzog <hertzog@debian.org>:
> On Fri, 20 Jan 2017, Gustavo Grieco wrote:
>> > Any reason why you did not request a CVE for #251?
>>
>> Yes. It was already reported here:
>> https://bugzilla.mozilla.org/show_bug.cgi?id=3D1275400 (CVE-2016-5824)
>> but it was never officially reported upstream (and therefore, never fixe=
d).
>
> It was reported in https://github.com/libical/libical/issues/235 but then
> closed by the submitter.
>
> You could have stated in #251 that you believed this crash to be the same
> than the one above. It was not obvious to me, I did it for you.

Thanks!

>
>> >> It is worth to mention there is a very similar bug found (CVE-2016-58=
24) on
>> >> the libical version used by
>> >> Thunderbird but we think is *not* the same as this one. In fact, we've
>> >> tested it on Thunderbird and it does *not* crash.
>> >>
>> >> The reproducer is available upon request.
>> >
>> > #253 has a reproducer here:
>> > https://github.com/libical/libical/files/627392/heap-use-after-free.ic=
al.txt
>> >
>> > Is this the same file?
>>
>> It is not the same file in fact. We found a variation of the original
>> input that trigger this
>> read out-of-bounds to read more than 60 bytes. This looks more serious
>> than usual (maybe you can read as much as you want) .
>> We had some complains in the past for making public test cases ..
>
> Here, I'm lost. You said that this oss-security report (CVE-2016-9584) is
> the same as #253 but you have another file than the test case
> submitted in #253.
>
> Are you sure that this second file is the same underlying issue ?

We only submitted the test case in #253: it was smaller and harmless.
We sent the other file privately to the security teams of some Linux
distributions. Both aborts/crashes have a very similar backtraces so
we think they are the same issue. We are using ASAN to test so we are
quite sure that there is no previous unsafe memory use before the ones
reported here. Nevertheless, ASAN is not perfect and we are not the
developers of libical so cannot be 100% sure.

>
>> > If it's a different file, then I'd like to have access to the file but=
 I
>> > would prefer if it was just available publicly and not to me only.
>>
>> Feel free to make the file public if you want.
>
> You would have to send it to me first :-)

Ups, i sent it to a different Raphael (also from Debian). This time I
won't miss..

>
> Cheers,
> --
> Rapha=C3=ABl Hertzog =E2=97=88 Debian Developer
>
> Support Debian LTS: https://www.freexian.com/services/debian-lts.html
> Learn to master Debian: https://debian-handbook.info/get/
