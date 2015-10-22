X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["868" "Thursday" "22" "October" "2015" "10:33:58" "+0530" "GAURAV GUPTA" "ya1gaurav@gmail.com" "<CAJUzAGZj=vbVsWJZptC7jEjpUN54qgSiCsL56vQOJ=EMq6574A@mail.gmail.com>" "32" "[oss-security]Crafted xml causes out of bound memory access - Libxml2" nil nil nil "10" "2015102205:03:58" "[oss-security]Crafted xml causes out of bound memory access - Libxml2" (number mark "U       ya1gaurav@gm Oct 22   32/868   " thread-indent "\"[oss-security]Crafted xml causes out of bound memory access - Libxml2\"\n") "<CAJUzAGa5GZiKcFd_YEUqs=k9jk1fgwkbZY6ESfxA6FneKiaAMg@mail.gmail.com>" ("<CAJUzAGa5GZiKcFd_YEUqs=k9jk1fgwkbZY6ESfxA6FneKiaAMg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24546 invoked by uid 550); 22 Oct 2015 05:09:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19907 invoked from network); 22 Oct 2015 05:04:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=L9hGGOVaZ0Fjy9nN0pE5xK2PjocE53s1Nfe1K0U5aNI=;
        b=cMnov6mMpHRNKJIq2wKAjAfe6GEltfJ8cnO6VUUZ6vrixLS8mFMPd9Wmid4T07VWgD
         0useOOgVJELQZT4HvZ19m07H2TcxkqGKpLLVDDCUYMD6Ppabq0+MWAHPhnH3yWMLtmOP
         xMXy6uuYXIAYykbYhmhK9ryRT5roa8G0aaA0ZMxnkw8qpsAFxMzLDorJ3SLlcz/gxHrK
         zuDjzG94sVyRDK0UeP8uq0DbSGKJwAPjZJABp4r4Er3LMoE7F7xsSJPE2Pd9Ip4BYtK1
         864rHZHGu2u8/65e2iWdujyQhqnrqFmIy3/s69tEygc2LOdVFcoqQjrl6yyjE2k4WtX9
         qLUw==
MIME-Version: 1.0
X-Received: by 10.112.155.232 with SMTP id vz8mr7453399lbb.20.1445490238509;
 Wed, 21 Oct 2015 22:03:58 -0700 (PDT)
In-Reply-To: <CAJUzAGa5GZiKcFd_YEUqs=k9jk1fgwkbZY6ESfxA6FneKiaAMg@mail.gmail.com>
References: <CAJUzAGa5GZiKcFd_YEUqs=k9jk1fgwkbZY6ESfxA6FneKiaAMg@mail.gmail.com>
Date: Thu, 22 Oct 2015 10:33:58 +0530
Message-ID: <CAJUzAGZj=vbVsWJZptC7jEjpUN54qgSiCsL56vQOJ=EMq6574A@mail.gmail.com>
From: GAURAV GUPTA <ya1gaurav@gmail.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Cc: veillard@redhat.com
Content-Type: multipart/alternative; boundary=089e0122938431584c0522aa6cf8
Subject: [oss-security]Crafted xml causes out of bound memory access - Libxml2

--089e0122938431584c0522aa6cf8
Content-Type: text/plain; charset=UTF-8

Please assign cve for below reported vulnerability.
---------- Forwarded message ----------
From: "GAURAV GUPTA" <ya1gaurav@gmail.com>
Date: Oct 22, 2015 10:12 AM
Subject: Crafted xml causes out of bound memory access - Libxml2
To: <cve-assign@mitre.org>
Cc: <veillard@redhat.com>

Hello,
Please assign CVE for below vulnerability:

Description : Out of bound read in libxml2 with crafted xml input. It is
detected using Fuzzer - American fuzzy loop.

Reported discussion : https://bugzilla.gnome.org/show_bug.cgi?id=744980

Upstream Fixes :
1.
https://git.gnome.org/browse/libxml2/commit/?id=a7dfab7411cbf545f359dd3157e5df1eb0e7ce31

2.
https://git.gnome.org/browse/libxml2/commit/?id=9b8512337d14c8ddf662fcb98b0135f225a1c489

Thanks.
-- 
Regards,
Gaurav Gupta

--089e0122938431584c0522aa6cf8--
