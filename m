X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1567" "Tuesday" "30" "October" "2018" "09:14:52" "-0400" "Mike Dalessio" "mike.dalessio@gmail.com" "<CAGJbjKb8Ccxyv-JYrvXxeiyq4BvFesM4PEdgwndDxYA7KTQPiA@mail.gmail.com>" "62" "[oss-security] [CVE-2018-16468] Loofah XSS Vulnerability" nil nil nil "10" "2018103013:14:52" "[oss-security] [CVE-2018-16468] Loofah XSS Vulnerability" (number mark "U       mike.dalessi Oct 30   62/1567  " thread-indent "\"[oss-security] [CVE-2018-16468] Loofah XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7414 invoked by uid 550); 30 Oct 2018 14:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5334 invoked from network); 30 Oct 2018 13:15:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Qa2EGteSsWHfdQiddTVPHPuI0KihO6GCkCwyv1X6LTE=;
        b=TDQAEiGKDkB3TUYb/4BuRIdkOEYbiMtj3mPeOrS95VC8y4WOnAYpapLnij6N8FTMPu
         qfnZupYfIJJOkaMzdutZgaQ19d+JI+YtpdKH8s/c+vJpYGEknsF9rhydQNVLw1GfOFlH
         ys5gvBqZuPSt40nHX+22Uwc2bptJjUDrx112cD+eltD/rYM8kPLKQsZjEq+43uGuGORD
         74wDjqKPY+2w3DSSE4GOSw1xdvmkCecOrqFz86wOvXUGspi0D/h20VHysZ8tGvYvaTV5
         1Spg1FqMcQYH39YDWahpRnIXUePL6IEl9+Lo3Nx6q+M7lX/Hcdqg9ZuUt/ABHC9i/Mfc
         w+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Qa2EGteSsWHfdQiddTVPHPuI0KihO6GCkCwyv1X6LTE=;
        b=AWjuV+RN8L1mgUuUEdOK+I/PuGvXlCndTG9TWQaK48W8hYE2IGBj7/1mcuqLG0VA/B
         PN6dKC/K50B4GwDlJY1vtLCbCuyQ+EKsqkmxrKYtl05YHQW2BvnwSDVzX4Bu+8EVIhsy
         7+7jf3MgnJ7fYlON8VMDgjmMwxMWEfSkBliRzfU15wA9hrnPtl2JaxzE5wwA416+YEL8
         f2F1EKZZrjUE7XIP4xuK6nD+LjBSjxWM9kmoe6niKMyCE7slN+dlI1NrzPryTpz6LJz6
         MAFkmb+z0fvS6cEfq77h8rQ4Qt/ICCJRKpbrRvdAQaaF3+wSFMftrzyloMpT0zRY+FKc
         z9PA==
X-Gm-Message-State: AGRZ1gLAUb4l54xDpZsbWrYlZEyrhMbQvdJ5r02vNgrAszwbP84xeADO
	yBfm2B/fGpgGCOfzWjFB+V/zMpSJRb/DsqHk8bo=
X-Google-Smtp-Source: AJdET5fGRBPqrGdvYj7DRErTunGJe08/f39csf0b1YP0n9gZjeNdaQgTuroAd37WHjsnbjvUW5PXatuziO9FZpQb4zc=
X-Received: by 2002:a63:1c1b:: with SMTP id c27-v6mr18141192pgc.351.1540905304345;
 Tue, 30 Oct 2018 06:15:04 -0700 (PDT)
MIME-Version: 1.0
From: Mike Dalessio <mike.dalessio@gmail.com>
Date: Tue, 30 Oct 2018 09:14:52 -0400
Message-ID: <CAGJbjKb8Ccxyv-JYrvXxeiyq4BvFesM4PEdgwndDxYA7KTQPiA@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubyonrails-security@googlegroups.com, 
	oss-security@lists.openwall.com, loofah-talk@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004c4f0e057971f938"
Subject: [oss-security] [CVE-2018-16468] Loofah XSS Vulnerability

--0000000000004c4f0e057971f938
Content-Type: text/plain; charset="UTF-8"

Hello all,

A *medium* severity vulnerability has been identified and patched in Loofah
v2.2.3, which is a dependency of `rails-html-sanitizer`. This issue has
been assigned CVE-2018-16468.

The public notice can be found here:

    https://github.com/flavorjones/loofah/issues/154

To save you a click, I've reproduced the contents of the announcement here.

-----

*# CVE-2018-16468 - Loofah XSS Vulnerability*

This issue has been created for public disclosure of an XSS vulnerability
that was responsibly reported (independently) by [Shubham Pathak](
https://hackerone.com/hackedbrain) and @yasinS (Yasin Soliman).

I'd like to thank [HackerOne](https://hackerone.com/loofah) for providing a
secure, responsible mechanism for reporting, and for providing their
fantastic service to the Loofah maintainers.


*## Severity*

Loofah maintainers have evaluated this as [Medium (CVSS3 6.4)](
https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:C/C:N/I:L/A:L
).


*## Description*

In the Loofah gem, through v2.2.2, unsanitized JavaScript may occur in
sanitized output when a crafted SVG element is republished.


*## Affected Versions*

Loofah < v2.2.3.


*## Mitigation*

Upgrade to Loofah v2.2.3.


*## References*

* [HackerOne report](https://hackerone.com/reports/429267)


*## History of this public disclosure*

2018-10-27: disclosure created, all information is embargoed
2018-10-30: embargo ends, full information made available

--0000000000004c4f0e057971f938--
