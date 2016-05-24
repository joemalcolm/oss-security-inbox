X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["606" "Tuesday" "24" "May" "2016" "16:01:42" "+0800" "Yue Liu" "liuyue0310@gmail.com" "<CANK7Sy-z=M=S+SPfy1x4Mkz4rUb5aFUtquhJujQnm+60DQr4ng@mail.gmail.com>" "21" "[oss-security] CVE request: Multiple vunerabilities in libdwarf & dwarfdump" nil nil nil "5" "2016052408:01:42" "[oss-security] CVE request: Multiple vunerabilities in libdwarf & dwarfdump" (number mark "U       liuyue0310@g May 24   21/606   " thread-indent "\"[oss-security] CVE request: Multiple vunerabilities in libdwarf & dwarfdump\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11806 invoked by uid 550); 24 May 2016 08:05:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9584 invoked from network); 24 May 2016 08:01:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=r6KvgegW1+sqg9UYzgu2/+yH3u99qCrj6aLIZDOsqDY=;
        b=wlqPqDK+TXzTc+DkwW0ttdcm3WTJBTF2sppeDcFg10Z82ZEeggtbS54zgaOZ5VLSXF
         Rrf5s0vSoiaOAsTUVCoklFYJ7E04daMW/eLBrMI3fnHOkA+b/0oawA3ER+L5bdJYKRKt
         2ynjZqguqj0wgvXflf8ZTvK0/I9SMyUHa3su3lzjEmXest2rDRYrPrd2mk1k+d9inWRl
         UTGhHWcGaGtg9P1wnW1qgXmVjhUVZDGaxK1FHwcEvpbSYToRWNEFve+QCJQgIzpr9qg8
         3rjh+/bUCh+Cx4O5RiDM5HnQTYHCaKz4xJfVBvCfWYfe7pUGsGtBhqdDbhuQ3VND08DW
         Aq2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=r6KvgegW1+sqg9UYzgu2/+yH3u99qCrj6aLIZDOsqDY=;
        b=YrpMqsoPwz4Zpz99757GKWgRaqbDOxdpot/7kZyOqCMpq2tlAHNYMfP2VknLJUaj1t
         /ynLYI53saRyFWiRhDlobOi/ecyc5RLTYD3/S4Jx3SrxHCIOQFz7nSd9R9fKFZswMPbW
         ktKlNR6HJE/A+ZqdZoZEK4fQ4A8MMIKl/Dw54QgVaY2rJrD+6bevaxCW+750CEMrXnpm
         DVyGLz5U9VDxl2+TjzsIhr7q7b9LkEpyvb0dsXTVYv8oDgHC4HVxYFB0La1P/8J4C3kM
         KaukZ9605jcYRnYg0wdsadgVktYoWHO4Nt7iirOoyaysfo4p1irtVAV6HTf5q9bQBoqy
         gCEw==
X-Gm-Message-State: ALyK8tJwztsC36v0NJHtPzNXNK9mi/V9TmbrMeMwApfT6yw5Riuf9vlcMpUBOJS3Aatv04aGMQeJTONWX6W3Dw==
MIME-Version: 1.0
X-Received: by 10.37.15.10 with SMTP id 10mr1597033ybp.51.1464076902509; Tue,
 24 May 2016 01:01:42 -0700 (PDT)
Date: Tue, 24 May 2016 16:01:42 +0800
Message-ID: <CANK7Sy-z=M=S+SPfy1x4Mkz4rUb5aFUtquhJujQnm+60DQr4ng@mail.gmail.com>
From: Yue Liu <liuyue0310@gmail.com>
To: oss-security@lists.openwall.com
Cc: David Anderson <davea42@linuxmail.org>
Content-Type: multipart/alternative; boundary=001a1138f474b2b624053391f78b
Subject: [oss-security] CVE request: Multiple vunerabilities in libdwarf & dwarfdump

--001a1138f474b2b624053391f78b
Content-Type: text/plain; charset=UTF-8

Hi,

There are multiple vunerabilities in libdwarf&dwarfdump which were
discovered by Yue Liu(lieanu <liuyue0310@gmail.com>) and Qixue Xiao.

Vulnerabilities DW201605-001 to DW201605-019 in
https://www.prevanders.net/dwarfbug.html
And anther one https://bugzilla.redhat.com/show_bug.cgi?id=1330237
All vulnerabilities have been fixed in upstream.

POC: https://sourceforge.net/p/libdwarf/regressiontests/ci/master/tree/liu/

Could you please assign CVE ids for these issue? Thanks.

Regards,
Yue Liu

--001a1138f474b2b624053391f78b--
