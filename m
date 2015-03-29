X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["513" "Sunday" "29" "March" "2015" "14:20:44" "+0200" "=?utf-8?B?U8OpYmFzdGllbg==?= Delafond" "sdelafond@gmail.com" "<20150329122044.GX1846@frisco.mine.nu>" "17" "[oss-security] CVE request: 2 issues in inspircd" nil nil nil "3" "2015032912:20:44" "[oss-security] CVE request: 2 issues in inspircd" (number mark "        sdelafond@gm Mar 29   17/513   " thread-indent "\"[oss-security] CVE request: 2 issues in inspircd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30167 invoked by uid 550); 29 Mar 2015 12:28:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24356 invoked from network); 29 Mar 2015 12:20:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gCk20M8PGxfUAPwGaPOJUfaLEVEPUoCZFiqmjhWneXA=;
        b=j5L33G5nmHPq6idQ5RmNAjdIs9FFaS8pMDFTj2+2Ot7u1eJTrEcs0A6xWg61oWQtk+
         RetRt/7BFEyYu5oBRLlFcSlkFwI6PXNNbd8PDBzv7lPKA8SPdNd/hM9fkiJVezLBRiuJ
         LBcZ5JoBEVkhtcfTcsr+H/kB7qDSuXfbj67QIsontg88K5L8MFrAgOclEZjbGCDn0txQ
         hMsxBAH4kbCvM5fSRMQO4flUL0bbWxGC6auoRr2AKiTBXEcZAl8LtpNZmofCA6yw8OmK
         QNZKe4LOZ2vJpyTny593wRBXAem0+vhg9c6SyB65wB83Zhhg89aRBvmDucSe3en4Ql8w
         8iEA==
X-Received: by 10.194.60.203 with SMTP id j11mr54748496wjr.5.1427631647371;
        Sun, 29 Mar 2015 05:20:47 -0700 (PDT)
Message-ID: <20150329122044.GX1846@frisco.mine.nu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org
Date: Sun, 29 Mar 2015 14:20:44 +0200
From: =?utf-8?Q?S=C3=A9bastien?= Delafond <sdelafond@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: 2 issues in inspircd
To: oss-security@lists.openwall.com

Hi,

the Debian Security Team is requesting 2 CVEs for inspircd.

  * the fix that was included in Debian for CVE-2012-1836 is incomplete,
    and does not solve the original remote code execution problem. See:

      https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=780880#5

  * a DoS can be triggered by invalid DNS packets. See:

      https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=780880#5
      https://github.com/inspircd/inspircd/commit/58c893e834ff20495d007709220881a3ff13f423
      
Cheers,

--Seb
