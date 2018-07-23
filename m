X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["874" "Monday" "23" "July" "2018" "21:03:52" "+0100" "Jonathan Gallimore" "jgallimore@apache.org" "<CAGRgoZhO_hrOg3OF8=hs6j5KsRR68mmQDk0rChQ+jPvEN95x3g@mail.gmail.com>" "26" "[oss-security] CVE-2018-8031 Apache TomEE Webapp XSS" nil nil nil "7" "2018072320:03:52" "[oss-security] CVE-2018-8031 Apache TomEE Webapp XSS" (number mark "U       jgallimore@a Jul 23   26/874   " thread-indent "\"[oss-security] CVE-2018-8031 Apache TomEE Webapp XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28107 invoked by uid 550); 23 Jul 2018 20:11:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21844 invoked from network); 23 Jul 2018 20:04:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=yLgsKBWKSdwg/x8UrGMiNv4zcmIqLpBsrlJY00iisaA=;
        b=otFu3kNq8a9Dg9TwaE+KjhaNgC4SrjEF9gktmS6n/HF/9ZvU93oaJ4GUvGY22eaYOu
         ihd7bbWZmxdhVSsfnGgGlGIU1Pja5hoQ0kOv12DGv3tnJZoUyXSSDGNBufaNAVWQtnW1
         rMitvaax5qgd8pD3m0APA4M1zPdaMEdcxC2hxJbPd/iGPC7DYWamWCjE17QREGFUniJZ
         LeBT3W+wHNyqxiEXQZFpLE2NcriKNvd0/4V5u7LKQb0CfWLqj5n8wlXn36BMzUEp5ukb
         ZZrgxl2goPvc3QgRQWJskYocJGn3dHXvu+RXoDNucPL3PXz883vhJSp2lePXrv/LDib8
         kQug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=yLgsKBWKSdwg/x8UrGMiNv4zcmIqLpBsrlJY00iisaA=;
        b=k9njkqAE2Ctyp6FDMc3ONyb5F21IlEVmEyhFp0OundtVp5bZT+SSd3NnbMMzNUJfqr
         C9soIZonxoKl8rkPLZPEPK+5hnU9/mQwpv8lqtXJqY/XljW/iko5w/xG19DiaABcGN9u
         R5C7W1+vy4R2e3U50rzPy9vvCozM7fq/B2sdcGIAv10NOfWntpYyF0tHz2HqETiKFhAc
         Dz4OM2GBX5tGnPampMfocVUE73u6HxYytUWD8C2PW9PpUFuu2q1zjkmkVWyWRlksmw0N
         H3eqDT9yM5Mm5gbhP4ZmyLo6g4MdH16VGKub0w0YL87M5qLGMbp3ec02JaQ3QliKhnSL
         a6hA==
X-Gm-Message-State: AOUpUlECAe0vEvbDs+/HGZw+JnCzH9pgOmWOghLsAcNjdfBo6u3PigYA
	LjuAWjYZKHmhO32jibRZbgZ3lEhRjE/S99CMNxqa3YLx
X-Google-Smtp-Source: AAOMgpeeUovgj9OmMwfiL0CdkXZyNXY+cCDg5s1F2Fmtb7szxdocgrOoMs6gzoJJINKni377dq0vML2gd4Tz5aiA8NI=
X-Received: by 2002:a2e:9645:: with SMTP id z5-v6mr9355368ljh.127.1532376233467;
 Mon, 23 Jul 2018 13:03:53 -0700 (PDT)
MIME-Version: 1.0
Sender: jonathan.gallimore@gmail.com
From: Jonathan Gallimore <jgallimore@apache.org>
Date: Mon, 23 Jul 2018 21:03:52 +0100
X-Google-Sender-Auth: KpFk2cOCkIl_FtQPX0zTnkIgOQo
Message-ID: <CAGRgoZhO_hrOg3OF8=hs6j5KsRR68mmQDk0rChQ+jPvEN95x3g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000ee4830571b025fd"
Subject: [oss-security] CVE-2018-8031 Apache TomEE Webapp XSS

--0000000000000ee4830571b025fd
Content-Type: text/plain; charset="UTF-8"

CVE-2018-8031 Apache TomEE Webapp XSS

Severity: Low

Vendor: The Apache Software Foundation

Description:
The TomEE console (tomee-webapp) has a XSS vulnerability which could allow
javascript to be executed if the user is given a malicious URL. This web
application is typically used to add TomEE features to a Tomcat
installation. The TomEE bundles do not ship with this application included.

Mitigation:
This issue can be mitigated by removing the application after TomEE is
setup (if using the application to install TomEE), using one of the
provided pre-configured bundles, or by upgrading to TomEE 7.0.5.

This issue is resolve in this commit: b8bbf50c23ce97dd64f3a5d77f78f8
4e47579863

Credit: Many thanks to Man Yue Mo from Semmle for reporting this issue.

--0000000000000ee4830571b025fd--
