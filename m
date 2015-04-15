X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Wednesday" "15" "April" "2015" "19:22:01" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150415172201.GA8061@eldamar.local>" "22" "Re: [oss-security] CVE request: 2 issues in inspircd" nil nil nil "4" "2015041517:22:01" "[oss-security] CVE request: 2 issues in inspircd" (number mark "        carnil@debia Apr 15   22/741   " thread-indent "\"Re: [oss-security] CVE request: 2 issues in inspircd\"\n") "<20150329122044.GX1846@frisco.mine.nu>" ("<20150329122044.GX1846@frisco.mine.nu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19526 invoked by uid 550); 15 Apr 2015 17:22:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19485 invoked from network); 15 Apr 2015 17:22:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=idBk6sVXbVY0CLidC7PZxwWvhZEvrFgeXQtcvjs+iGI=;
        b=yNUG/RR2eQf/u7//QHNQJwI7pwEdMbORaW4kBI2fYzbs7JEbaLZg+DRYN5wz1pIRNf
         kyfpDq5ZskriFSIX7M67l4Fba9KioPBNfPlhxwSfknN8S3t4BPi6klwzIb/Ojt+lfuOQ
         HiaJV7IcNSFhJnIWnPdKxMtkL1r6nXj+0H3wCfsiip4Cdvuxau8QfWpG3kHQOHcjSyX5
         JBDmtcm2ZA6oWjAtMKJaKU4lxNIdRdhqqPYswAJyJicEjB6x6LGIHYuYEVb/5NVdivOr
         0mzQIyqFT0irvHiun5jBSYP/1JQ5K8G+B/uCTnNWVLwQPMbP7rwYskSoPxrsqHq5icTZ
         pchQ==
X-Received: by 10.180.91.76 with SMTP id cc12mr45179494wib.67.1429118523067;
        Wed, 15 Apr 2015 10:22:03 -0700 (PDT)
Message-ID: <20150415172201.GA8061@eldamar.local>
References: <20150329122044.GX1846@frisco.mine.nu>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150329122044.GX1846@frisco.mine.nu>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Wed, 15 Apr 2015 19:22:01 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: 2 issues in inspircd
To: oss-security@lists.openwall.com

Hi,

On Sun, Mar 29, 2015 at 02:20:44PM +0200, Sébastien Delafond wrote:
> Hi,
> 
> the Debian Security Team is requesting 2 CVEs for inspircd.
> 
>   * the fix that was included in Debian for CVE-2012-1836 is incomplete,
>     and does not solve the original remote code execution problem. See:
> 
>       https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=780880#5
> 
>   * a DoS can be triggered by invalid DNS packets. See:
> 
>       https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=780880#5
>       https://github.com/inspircd/inspircd/commit/58c893e834ff20495d007709220881a3ff13f423

For reference, this has been fixed via DSA-3226-1 in Debian:
https://lists.debian.org/debian-security-announce/2015/msg00114.html

Regards,
Salvatore
