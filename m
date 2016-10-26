X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["393" "Wednesday" "26" "October" "2016" "02:05:11" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>" "14" "[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" nil nil nil "10" "2016102605:05:11" "[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" (number mark "U       dawid@legalh Oct 26   14/393   " thread-indent "\"[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1738 invoked by uid 550); 26 Oct 2016 05:12:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30195 invoked from network); 26 Oct 2016 05:05:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:cc;
        bh=k+6ggRWRS9Km9I29FSLnlPHvuK11RK/0WLjg857uNcM=;
        b=13xS3nWXgWocuHrMdX/YAO0dE2n3FZX/mHkuBt5/dcO3y+KQ61lxuhNuGiole0Y5yp
         mpEW1uTVajPHIXmNXSichLxifDC6OHTZPBqf165xob6ZmKqTc/Rp52WkJVwGaTc4mGcR
         Q3Lv4HOkitZDqElPwZCgLg7B4eoizmz0pMVfyfsdcR8HSbTqLN9TqBd5t1vHZuzqqxQT
         8rPKkLkDEqx8DCouOh/xfXzfpG8KmiSWbOrE9rYXf/tTqzv/TcxkbQKAWH2zOM5RwSzh
         939g1D2R45xSvNCkol/1WxNI+dPmwinOGPLRwSaJLL5X/jgD5FdlwjCcG4cvpWURni3f
         bfbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:cc;
        bh=k+6ggRWRS9Km9I29FSLnlPHvuK11RK/0WLjg857uNcM=;
        b=KH/5DgqxJFaVrtP/yoPB6ibrBsdKg8z5MRp/9O2UCaoZ+W6xG3Ni0B+eJybp9JUgIX
         K9RyjBnmnHheypRf2KBqDPpf5I6MOxrqDfSUxSnLq49HmkB6q/RPEbYzJ4GXCBZVgP5P
         B8bNA+NRKbJvQn54w6hjXVV+znBPecSZUVN4lR4NP0dgGHWU671urnWchiYc2GiXde0M
         swtZGjy73CxC8n1Bf95wHLMqVeiFDcK8vnFX8UNhNHtOY+zWuDGJlx4O2mw5ISET8adM
         YVulLEZwmpN1gS15mNX8puMMuLmv/i5Os0t0Q12TaX2IKSWx+T5v+U7HwTBgr4VX5/j3
         q9zQ==
X-Gm-Message-State: ABUngveiqsm0+H/NZDMcdXqh/f/vvkeUjcIu+Le3BXDB0AiMzkGX+m16krWex8NzA290qktNbXSVJ4MIOvtI/w==
X-Received: by 10.28.35.75 with SMTP id j72mt6291677wmj.8.1477458312242; Tue,
 25 Oct 2016 22:05:12 -0700 (PDT)
MIME-Version: 1.0
From: Dawid Golunski <dawid@legalhackers.com>
Date: Wed, 26 Oct 2016 02:05:11 -0300
Message-ID: <CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>
Cc: fulldisclosure@seclists.org, bugtraq@securityfocus.com, 
	bugs@securitytracker.com, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root
 Privilege Escalation

I added a simple PoC video for the CVE-2016-1240 vulnerability.

In the PoC I used Ubuntu 16.04 with the latest tomcat7 package
(version: 7.0.68-ubuntu-0.1) installed from the default ubuntu repos
which appears vulnerable still.

The video poc can be found at:

http://legalhackers.com/videos/Apache-Tomcat-DebPkg-Root-PrivEsc-Exploit.html

-- 
Regards,
Dawid Golunski
http://legalhackers.com
