X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1518" "Thursday" "27" "April" "2017" "01:48:32" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzst1LHBrdak=PmYQf1mzbhC2k5ynes_-xbXW+yiv5hnAXw@mail.gmail.com>" "48" "[oss-security] Re: SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" "^Date:" nil nil "4" "2017042704:48:32" "[oss-security] Re: SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" (number mark "        dawid@legalh Apr 27   48/1518  " thread-indent "\"[oss-security] Re: SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)\"\n") "<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>" ("<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24099 invoked by uid 550); 27 Apr 2017 04:48:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24077 invoked from network); 27 Apr 2017 04:48:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=h+bl7Vo7XdahSbHeIAZEQnpPU5Zi8gyHQDPyPQd+Sfs=;
        b=HuCBJADPmeRcqic35xJ+w98SnWFO/iKNpopnLby9jXoJWduGrMp8UO2eom7PWfHAJm
         bV1rETzfvcU4QYIyCCAuUVEJiu1SUkmtEXExaF4YM6jGhsTiq4psd1bZ1Jna3aNwE2jg
         RB7G6DvEMnp2LZfTHieK91uQdL9N5Sn78IoLaiPlKUnkLUBo8eSJ2Pq+pgfrE14IxWyT
         a9PMvzx/H7VBW49dRT46Jb3UlV9nkpsvOEvrxqm9L+Ks8KyliyK4GDpeB5XRLVCzNT7H
         ZEKp9xhpbA+dU9zV/iwEUaiOX4hjoFN4/ewxAIuIkqCj3CktjFDSrGik+5HQOtft1Q4e
         2SjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=h+bl7Vo7XdahSbHeIAZEQnpPU5Zi8gyHQDPyPQd+Sfs=;
        b=iahq2pqxjkLiJg0Jw5BKDAMkpce8WXC3nvtza7Dyjeq+Dbw9HNFLZH/2/7g4ic/DOp
         uqSuf2j7bqFqmj08t/3PhkyJa/ah8upb4Ujz+QwuwsKy45mPsVdaPQEjJ5bG+l6Nv26Z
         FvmE+YLEyiBTE003/x0eJGQpwG6LG8QNTAy4N1Kajct+3BkdFh38COwqVbX3/X7D1xQY
         Ux617oGCRTOWCJXnTuOUHf6O3siYnw5aFm9yPTeB1SrgHfq6O6vF8tRkoo8iGSg7B6KX
         CWX6SCnIbLAEjvCKiYTRbZIeFLLgi4/SHbZ5Rv3Q15RZUB/DQ+dhv+zrcHQNBDodb4ne
         /FvA==
X-Gm-Message-State: AN3rC/4XVQeGsDm1SDP/Lf2vqvpfoOOPZYuBDJLwWGB3Bfaehq1vEdKK
	16fx9roRsglvD93MCSyUUyXh1WEl2hA7
X-Received: by 10.31.223.69 with SMTP id w66mr1757256vkg.148.1493268512664;
 Wed, 26 Apr 2017 21:48:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
References: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
Message-ID: <CADSYzst1LHBrdak=PmYQf1mzbhC2k5ynes_-xbXW+yiv5hnAXw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 27 Apr 2017 01:48:32 -0300
From: Dawid Golunski <dawid@legalhackers.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)
To: oss-security@lists.openwall.com

In case anyone needs the patched release, it looks like the patch got
included at last in version:
squirrelmail-20170427_0200-SVN


Regards,
Dawid Golunski
https://legalhackers.com  |  https://ExploitBox.io
t: @dawid_golunski


On Mon, Apr 24, 2017 at 6:14 PM, Dawid Golunski <dawid@legalhackers.com> wrote:
> SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)
>
> Desc.:
> SquirrelMail is affected by a critical Remote Code Execution vulnerability
> which stems from insufficient escaping of user-supplied data when
> SquirrelMail has been configured with Sendmail as the main transport.
> An authenticated attacker may be able to exploit the vulnerability
> to execute arbitrary commands on the target and compromise the remote
> system.
>
> Discovered by:
> Dawid Golunski (https://legalhackers.com : https://ExploitBox.io)
> , as well as Filippo Cavallarin (see attached advisory for details)
>
> Official solution:
> Vendor seems to have released a new version of 1.4.23 on
> squirrelmail-20170424_0200-SVN.stable.tar.gz
> which still seems to be vulnerable hence a new subject/thread.
>
> The exploit from my advisory was also confirmed to work on Ubuntu
> package: '1.4.23~svn20120406-2ubuntu1.16.04.1'.
>
> Hence the updated version in the subject/advisory title.
>
> Full advisory URL:
>
> https://legalhackers.com/advisories/SquirrelMail-Exploit-Remote-Code-Exec-CVE-2017-7692-Vuln.html
>
>
>
> --
> Regards,
> Dawid Golunski
> https://legalhackers.com
> https://ExploitBox.io
> t: @dawid_golunski
