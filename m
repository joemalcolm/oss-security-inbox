X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1097" "Wednesday" "1" "September" "2021" "09:22:14" "-0400" "Jason Andryuk" "jandryuk@gmail.com" nil "35" "[oss-security] Re: Xen Security Advisory 378 v3 (CVE-2021-28694,CVE-2021-28695,CVE-2021-28696) - IOMMU page mapping issues on x86" nil nil nil "9" nil nil (number mark "U       jandryuk@gma Sep  1   35/1097  " thread-indent "\"[oss-security] Re: Xen Security Advisory 378 v3 (CVE-2021-28694,CVE-2021-28695,CVE-2021-28696) - IOMMU page mapping issues on x86\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Xen Security Advisory 378 v3 (CVE-2021-28694,CVE-2021-28695,CVE-2021-28696) - IOMMU page mapping issues on x86" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21671 invoked by uid 550); 1 Sep 2021 13:34:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16021 invoked from network); 1 Sep 2021 13:22:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jaFQ1dJz/0jVDnUJDux1CudavpmIQDH+qRgNmOHy2kw=;
        b=V08N3wY0tEFQVk3cnI/b65MC6y/NleF6UKnkKSF4FljmBjrUCVrMazguZLA7LdjAmT
         +ukjleA/aXsaghg8GdsMYuAgm5c+MPEAreIaSQmdzDGpoYxtukbwGOq6AUzSQwEpTY7+
         AeRpjO4diPCC57slSCKz6Up8XUfN5G55R75Z0ghi/XJHYQzGmDGp0k5rosewss7I0J/f
         I3lzZ16I+iwkRH8e8zHzRSxcJ5rmOUhqIQSEZfM6y6/Rh5VlbXhlnuTgeV0C1Ud4mU1N
         SF3wfplIkh8EJ7NydDk2HhzRMfGvJ4zuckdXpFbwpiK3mBrr//Kfse12BEWAhzVvi6fQ
         5kXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jaFQ1dJz/0jVDnUJDux1CudavpmIQDH+qRgNmOHy2kw=;
        b=PZv+p0JTbK8oCNvJTAaUtnhZ42h4T/JQzOlYEAAZhh47FBegbCOoo7QHRfyuyRukJB
         pSWodV0q++xlHkwATQEZexILjrPLkn3T/tHn/TZFPb0GZ11vqrU/CmGt5znGAb/9Q6Q/
         i/dLa1Est9SZomiY4Pgs7DS7hhBEzqhUp4//l2x0b/CxQKA3T2iGFjuLMk8D7o7enLFV
         mQ3oGsf9faMpG/1QvRvfPSutCOY2QTmcmIW5Yquhq+UAfutj1lKD9qtHFyyejL63XAFX
         abdrsUhMLc6JhpqrTnhayxVhxOlu+5ujIitckijBdjLOM78VQlE54tD4wB+8y6gnmnvY
         LiQA==
X-Gm-Message-State: AOAM5317IgoF1QqKFWpohMvR7y5mIfPWZXJzGqmhuGK/AppPkWXZ9SwI
	rJ90qpyjxx/mlrsdZjYkxyifv0L6vuEx8Ruy+RLaPZMw
X-Google-Smtp-Source: ABdhPJzjhjRenLVlNS1HJ0Z1WF422vUK6cSHDYkcons243OdgRRX3wOE4F63Tq0W2CKrBteyFQ6T9OAR2SBTJbX1W8Y=
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr26376733lfd.529.1630502546778;
 Wed, 01 Sep 2021 06:22:26 -0700 (PDT)
MIME-Version: 1.0
References: <E1mLMZy-0006TJ-Rw@xenbits.xenproject.org>
In-Reply-To: <E1mLMZy-0006TJ-Rw@xenbits.xenproject.org>
From: Jason Andryuk <jandryuk@gmail.com>
Date: Wed, 1 Sep 2021 09:22:14 -0400
Message-ID: <CAKf6xpsAz7oPX+PdZokm+BAqreqL8rnrAd9UYvdz=F0M-bcMUQ@mail.gmail.com>
To: "Xen.org security team" <security@xen.org>
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org, 
	xen-users@lists.xen.org, oss-security@lists.openwall.com, 
	"Xen.org security team" <security-team-members@xen.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Xen Security Advisory 378 v3 (CVE-2021-28694,CVE-2021-28695,CVE-2021-28696)
 - IOMMU page mapping issues on x86

On Wed, Sep 1, 2021 at 5:34 AM Xen.org security team <security@xen.org> wrote:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>  Xen Security Advisory CVE-2021-28694,CVE-2021-28695,CVE-2021-28696 / XSA-378
>                                    version 3
>
>                    IOMMU page mapping issues on x86
>
> UPDATES IN VERSION 3
> ====================
>
> Warn about dom0=pvh breakage in Resolution section.
>
> ISSUE DESCRIPTION
> =================
>
> Both AMD and Intel allow ACPI tables to specify regions of memory
> which should be left untranslated, which typically means these
> addresses should pass the translation phase unaltered.  While these
> are typically device specific ACPI properties, they can also be
> specified to apply to a range of devices, or even all devices.
>
> On all systems with such regions Xen failed to prevent guests from
> undoing/replacing such mappings (CVE-2021-28694).

Hi,

Is there a way to identify if a system's ACPI tables have untranslated
regions?  Does it show up in xen or linux dmesg or can it be
identified in sysfs?

Thanks,
Jason
