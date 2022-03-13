X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Sunday" "13" "March" "2022" "20:59:49" "+0800" "Dongliang Mu" "mudongliangabcd@gmail.com" nil "20" "[oss-security] Memory leak in Linux HID-elo driver" nil nil nil "3" nil nil (number mark "U       mudonglianga Mar 13   20/727   " thread-indent "\"[oss-security] Memory leak in Linux HID-elo driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Memory leak in Linux HID-elo driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7462 invoked by uid 550); 13 Mar 2022 13:26:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31822 invoked from network); 13 Mar 2022 13:00:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=iAS+O7qMxPdiSyyXPqK4ue3gwemrkUlgvYks8LDK5xs=;
        b=lbcIQ9PTh2bR5z43wrUxSLH6NjXMVYeJRzmqhmxVG4kGB6Ks/v0jiwBzQ6fZQdum36
         IV3rT2BAhL0iyvV5Ynl3sQpOU5PJutCJ1yLAUXgs6CVFdfx6eda3KsL5hyb1i8sFO1uD
         EZojYO277Uk4Rpk1wxKX45KXOKu3QN4cBHg2j2p5Kju9vg6kaHZOJSP0PHh3Z3G4iivP
         XC8+J5FTFdqBHfhNgAdSvB0ANa3BpKbnhJ5Q9c8nGv/XAbRtXsvw9fSOsknFCgtwUJax
         cS/oCsmbl88WUVhWBwEfi6NdmCHD4VLr63fjcFfQuocrG5XjTMjTJ9e9YCpW8dfjByVb
         8iHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iAS+O7qMxPdiSyyXPqK4ue3gwemrkUlgvYks8LDK5xs=;
        b=P/swE0uGsSY2D86cee7ZVzvr6A6GLk4jH58OhKZdoG7T5d+zAqxcotUEczUt8sxIyu
         kgj3UKl6EyYkQFxUEf5YWFxRWbnn6ygB+z32gJ1hhpnYNvKf61Q2WRt9wkEPFNLq60J0
         fdl53yu43jyPqb4sW1NZBa0PcVClJIXmJC29Tu56muTtbb0amroFKGg+QcZ+SvxIdLtM
         fWy4Pd8ENEogzeDV/AonsAe9/bzFZEH7VeSHpoH/OIsHYJm1YHvQ/dMIaVCc2mtDovaK
         TaVGPhFOjJWoeGD6AwrDx2bavsPrJcyKAi0u38/eYedqD45T80rU5Qdha6td1gi3iUga
         l7dg==
X-Gm-Message-State: AOAM533vTqd1NsnuAMmDZFTM9dqDT25BmIl35pW4KuoqwzF+AGrqDEM8
	7nZus+uYIccsDCWJiqUnsUF/W16AfeED/LkzKT3v2+0qdwo=
X-Google-Smtp-Source: ABdhPJwnYQtbbnZcpDwNdnrC5FkS8hNqGPRc3c/R30R9zZFDRTeANONBtjlWP7Lo04GqfZefe/pu5a9Lei7F/p1oo7o=
X-Received: by 2002:a17:907:9482:b0:6da:a24e:e767 with SMTP id
 dm2-20020a170907948200b006daa24ee767mr14963171ejc.479.1647176415677; Sun, 13
 Mar 2022 06:00:15 -0700 (PDT)
MIME-Version: 1.0
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Sun, 13 Mar 2022 20:59:49 +0800
Message-ID: <CAD-N9QVuufAueZc5jeC0agddo3gE05YLjLOT4-q0n2wGJtMf=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Memory leak in Linux HID-elo driver

Hi oss-security,

There is one memory leak in Linux HID driver, introduced in v5.13.0.
When hid_parse in elo_probe fails, it forgets to call usb_put_dev to
decrease the refcount, leading to memory leak in the Linux kernel.

This is fixed by 817b8b9c5396 [1] and already backported to Linux
stable 5.15 and 5.16.

I am not sure how to request one CVE on the CVE request webpage. Any
help would be appreciated.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=817b8b9c5396d2b2d92311b46719aad5d3339dbe
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fbf42729d0e91332e8ce75a1ecce08b8a2dab9c1

--
My best regards to you.

     No System Is Safe!
     Dongliang Mu
