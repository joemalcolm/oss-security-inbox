X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["858" "Friday" "16" "April" "2021" "16:53:50" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "23" "Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation" nil nil nil "4" nil nil (number mark "U       carnil@debia Apr 16   23/858   " thread-indent "\"Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30682 invoked by uid 550); 16 Apr 2021 14:54:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30664 invoked from network); 16 Apr 2021 14:54:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=GP8AsJzhlEwuvW3ycZmv28llRI1zjAWHjS2xdF/TzFk=;
        b=eiZRdTCpnsufF4HvZ3UdqAAG4aucs8oNnHcZZlJbVTsqyuOwLolU2bE/am7aLtckVu
         yuN+VLZTxUicYDoxJqUgMQ7ePnAz7qTNG/oHek+PdSnU232ACvy8dYzzysGR87XJDH3X
         mAHB3u4kVQRTYf5alopdxuRp3Yvix3ZQ/qKNJUaJHpA4UTk9hT8QGuSd2A1yp+vy+UqT
         DnFNN6VgompKEJuXcTBrCiKrvhEifuxyAvHJBccq9EA+GWxeISIudVtnShkHukpPw+Os
         3PRzFOTk1M3ETXbwTtLnUZUhYWGRIao3KyTGaF4835W8PG5gruh7EDdyqO388Hc/sK4j
         zXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=GP8AsJzhlEwuvW3ycZmv28llRI1zjAWHjS2xdF/TzFk=;
        b=CDr2sQhdqGLE0b7GFMnGIa+6Om/SqXRtnDmpOMyJHVOQ5W+dmSiXDGh3RIRYs3eL24
         ZaAQ3SCi3pV+GZnK2vh1+ls8O/ZY3NZ1FI7ROjZV0sSQ8VA11L+sF/NHMsQ5E6VmucYh
         RdO6AvQ4OhB3DQsGWrjg30tJnMdDueTTloIYefhHf3QwjQwfvtiuEAOV9NkmwAjDiRcb
         Gv4axvoqkDJB2QJdgOe3L9tnBk2D6eF+73TibA68kxmFDVKvz9DcKHKiGLTnrIYSjkwl
         6hsD2sBSg2VMKhgldRlYSi7ZnwduI21Bj4FIMYCrze0b1EznOeEClOrsc931cjZYDBRb
         xdKA==
X-Gm-Message-State: AOAM531dFfAUQjWmwZ2ALWylzVxb3QREs4WIU2u08SYXY39d5Zx9hjWu
	BACDDGUDAC+k+ydDWbotzl07PB/2j570kw0u
X-Google-Smtp-Source: ABdhPJyLvbbRT86761L4/3/4aqMYPrcIzPCmh6pszw4btchP4xvNgPA09Qq/aBPMsVhOCYDewGOo5w==
X-Received: by 2002:a17:906:7016:: with SMTP id n22mr8604860ejj.23.1618584832902;
        Fri, 16 Apr 2021 07:53:52 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 16 Apr 2021 16:53:50 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YHmk/nNvde4ohgSP@eldamar.lan>
References: <20210415213114.GA5315@nxnw.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415213114.GA5315@nxnw.org>
Subject: Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs
 caps privilege escalation

Hi Steve,

On Thu, Apr 15, 2021 at 02:31:14PM -0700, Steve Beattie wrote:
> Hello,
> 
> An independent security researcher reported via the SSD Secure
> Disclosure program that the overlayfs stacking file system within the
> Linux kernel as used within Ubuntu did not properly validate the
> application of file capabilities against user namespaces.
> 
> This issue is likely Ubuntu specific, as Ubuntu carries a patch to
> enable unprivileged overlayfs mounts. The combination of that patch
> plus allowing unprivileged user namespaces by default in Ubuntu allows
> an unprivileged attacker to gain elevated privileges.
> 
> A commit that addresses the issue was applied in the upstream kernel:
> 
>   7c03e2cda4a5 ("vfs: move cap_convert_nscap() call into vfs_setxattr()") (v5.10)

For completeness, this though was in v5.11-rc1 right?

Regards,
Salvatore
