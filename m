X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["472" "Sunday" "24" "January" "2016" "16:37:43" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160124153743.GA19655@eldamar.local>" "18" "[oss-security] CVE Request: tiff: potential out-of-bound write in NeXTDecode()" nil nil nil "1" "2016012415:37:43" "[oss-security] CVE Request: tiff: potential out-of-bound write in NeXTDecode()" (number mark "U       carnil@debia Jan 24   18/472   " thread-indent "\"[oss-security] CVE Request: tiff: potential out-of-bound write in NeXTDecode()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32474 invoked by uid 550); 24 Jan 2016 15:37:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32441 invoked from network); 24 Jan 2016 15:37:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LrwWe8TD3NQxcWpu2sdkgkXrWbqMqOFxtK9P/B9zaHY=;
        b=00a7CX4nDkuU/h3t46Pbfo1iupou1+1JaONS4zNmDEwcqqi8KUaKkEvjwwcDHLsWq4
         1rpTfBDWI9jhPxUFSzQ7iJMtz29onMTabXrs7QZScgvtXql42gtOQHx3CRiOoJWOgMbi
         pcz0SHxCsYhS/74NsCKFpfsV5NU2dOD0P2UMITFvLRncxOKqeneIjmPKg+V/XLEhLEI6
         LsStWlCoRQ39dQVtTNVKHoXmSEyW/drdX9TSTe12X0ec8mOF96A+MKcBfmduhDkTflRS
         lGdNr0WZWc7dD1VYDpOvYGIFweicAePfLozQqglJ1MBS7VrNOR8usj6JV2nif+k1veel
         XhsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=LrwWe8TD3NQxcWpu2sdkgkXrWbqMqOFxtK9P/B9zaHY=;
        b=h5K0TZUbOir6qxuNubeoJK9iiNvCtMrGWKzg78D8ofmbuHzv0DO5VrF3MFudpdC72l
         4HQ0mIC7mFtJeHNLbwwxGIbyeCgez6YvLr+Co01w3S3T3fGOQIL6d2a0TNB8+PxEUZrC
         42iwkh3m/fDWUN7bvV1bP/ZK9WdLpC8aCgeRxTNvb5UqDgGZevnzaNDw8+dBy2Byvw4R
         eDPcKoJ6Z75wWAycy6zwAs3LFz/kReH/8q8E3p+P4DM/KRf+339CxH2pMrfIDA3nWkRW
         4N1SbOWv/6lwivqhheZD7wJiynblvS76wI8xMHEZDLWGz1ZfLrC26Otro1REcpwoRTek
         IuZg==
X-Gm-Message-State: AG10YOTIJFhfkVI1ufkTwPAldxoPSXU+KQuA78/U+tX20/yU7mzLoreD5TjpxL8i0SQ7/A==
X-Received: by 10.194.216.35 with SMTP id on3mr12807210wjc.107.1453649865894;
        Sun, 24 Jan 2016 07:37:45 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 24 Jan 2016 16:37:43 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160124153743.GA19655@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: tiff: potential out-of-bound write in NeXTDecode()

Hi

Could you assign a CVE for the following issue in tiff:

http://bugzilla.maptools.org/show_bug.cgi?id=2508

> 2015-12-27  Even Rouault <even.rouault at spatialys.com>
> 
>         * libtiff/tif_next.c: fix potential out-of-bound write in NeXTDecode()
>         triggered by http://lcamtuf.coredump.cx/afl/vulns/libtiff5.tif
>         (bugzilla #2508)

Fixing commit:

https://github.com/vadz/libtiff/commit/b18012dae552f85dcc5c57d3bf4e997a15b1cc1c

Regards,
Salvatore
