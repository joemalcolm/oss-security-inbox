X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1195" "Monday" "13" "April" "2015" "13:11:23" "+0200" "=?utf-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20150413111123.GU1846@frisco.mine.nu>" "34" "[oss-security] CVE request for buffer overflow in ppp" nil nil nil "4" "2015041311:11:23" "[oss-security] CVE request for buffer overflow in ppp" (number mark "        seb@debian.o Apr 13   34/1195  " thread-indent "\"[oss-security] CVE request for buffer overflow in ppp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32436 invoked by uid 550); 13 Apr 2015 11:11:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32418 invoked from network); 13 Apr 2015 11:11:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MVPMAJJbh0GO/DopbUy0f17IjxWCSqztuDUr2z8ZetM=;
        b=cKHXiRg8SM/f/D3A4/UiFJHoNnsRbBgYcghyiy7ihLaveL6n23pGlAVloNrC8rR/as
         SctdrmhFkzxDQ5ZMpP/ZIIyKw3+pw+TBl9UWE1fIBbwHV2MgkSXbWAX+I9UA1HAJ9gaG
         hjsbOvld+eyJ1Ihr1S4/u690BvdS6tkRxdA+JVV6bxDj9/CnRGdhrYZXAtgdpX8UcllZ
         DlnmbuIAyGiWUKmQ/WXbgkLIDV/9c6A1NdAylm2Ce6/JDRh3aGXurDgdFtKPMNMtzftH
         CExvl/gkDDhw3mHWhgJjhlnqvuRCvMoAqmLZBOMzdcl2d85HuFzByEPdL4UKgve5V+3x
         b/xA==
X-Received: by 10.180.88.8 with SMTP id bc8mr20261052wib.19.1428923486062;
        Mon, 13 Apr 2015 04:11:26 -0700 (PDT)
Message-ID: <20150413111123.GU1846@frisco.mine.nu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org
Date: Mon, 13 Apr 2015 13:11:23 +0200
From: =?utf-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: =?UTF-8?Q?S=C3=A9bastien_Delafond?= <sdelafond@gmail.com>
Subject: [oss-security] CVE request for buffer overflow in ppp
To: oss-security@lists.openwall.com

Hi,

the Debian Security Team is requesting a CVE for a buffer overflow issue
in ppp, described in the Debian BTS:

  https://bugs.debian.org/782450

This has DoS implications, as detailed by the initial reporter:

  Moreover, when ppp is compiled with GCC's Object Size Checking
  Built-in Functions, the call to sprintf gets replaced by
  __sprintf_chk():
  https://gcc.gnu.org/onlinedocs/gcc/Object-Size-Checking.html

  If that is the case, pppd consistently crashes with a SIGABRT upon
  successful authentication if its own pid is greater than 65535.

  https://bugs.launchpad.net/ubuntu/+source/ppp/+bug/291743

  As you can see from the reports, pppd's pid is always greater than
  65535. Users complain that the bug shows up "after a few hours".

  A possible attack scenario against a VPN server running xl2tpd
  follows.

  xl2tpd starts a new pppd process for each connection attempt. A remote
  attacker could repeatedly connect to the remote server, even with
  invalid credentials, in order to increase the pid of pppd at every
  attempt. After pppd's pid reaches 65535, each and every subsequent
  connection attempt would fail, resulting in a denial of service.

Cheers,

--Seb
