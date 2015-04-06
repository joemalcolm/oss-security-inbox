X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1990" "Monday" "6" "April" "2015" "19:57:16" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150406175716.GA26491@eldamar.local>" "47" "[oss-security] CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and 0.2.4.27) fixing security issues" nil nil nil "4" "2015040617:57:16" "[oss-security] CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and 0.2.4.27) fixing security issues" (number mark "        carnil@debia Apr  6   47/1990  " thread-indent "\"[oss-security] CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and 0.2.4.27) fixing security issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17681 invoked by uid 550); 6 Apr 2015 17:57:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17657 invoked from network); 6 Apr 2015 17:57:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lIzhzAtQcl3mtFcwjs47jAh11cXL00jNk/cl33RMk4w=;
        b=nrsZjxCk0lPZ+Alpl9tyI/Zze0QGGUeBQTRrbDydsbHPPulDfXd6ERFnPZRqC/f800
         qY+0pdUUulYSAke5s07yf8Pe+sddTxg0k7yNSOd4ASWWBiPDenbhlR+vwfaQ8Un5XAdk
         UGsnKHj925owJHT1EoZlai4b+bWv4ZANcZ9qd29qFznhx6LnWzJq6hf1b2Qrp5gxUlof
         GgDGbHcgCgOr8bARx63onvvoSoyTjDlRs+m1R01oNS3aud5iMVWuFO4pMCE360z5mhnL
         nJc5T3oKBwXJEO4F9EnMpxtR/YrFA753KC98RBinxMlU0k1LbFGPlPv1wPd0uXV/Djai
         yo/w==
X-Received: by 10.180.73.111 with SMTP id k15mr31647970wiv.34.1428343038153;
        Mon, 06 Apr 2015 10:57:18 -0700 (PDT)
Message-ID: <20150406175716.GA26491@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>, team@security.debian.org,
	weasel@debian.org
Date: Mon, 6 Apr 2015 19:57:16 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: tor: new upstream releases (0.2.6.7, 0.2.5.12 and
 0.2.4.27) fixing security issues
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

New versions of tor were released (0.2.6.7, 0.2.5.12 and 0.2.4.27)
fixing denial of service vulnerabilities, the changelog for 0.2.6.7
lists the ones below. Could you assign CVE identifiers for those? (I
guess the first and second might deserve one? Not sure about the third
and last item):

> Changes in version 0.2.6.7 - 2015-04-06
>   Tor 0.2.6.7 fixes two security issues that could be used by an
>   attacker to crash hidden services, or crash clients visiting hidden
>   services. Hidden services should upgrade as soon as possible; clients
>   should upgrade whenever packages become available.
> 
>   This release also contains two simple improvements to make hidden
>   services a bit less vulnerable to denial-of-service attacks.
> 
>   o Major bugfixes (security, hidden service):
>     - Fix an issue that would allow a malicious client to trigger an
>       assertion failure and halt a hidden service. Fixes bug 15600;
>       bugfix on 0.2.1.6-alpha. Reported by "disgleirio".

https://trac.torproject.org/projects/tor/ticket/15600

>     - Fix a bug that could cause a client to crash with an assertion
>       failure when parsing a malformed hidden service descriptor. Fixes
>       bug 15601; bugfix on 0.2.1.5-alpha. Found by "DonnchaC".

https://trac.torproject.org/projects/tor/ticket/15601
> 
>   o Minor features (DoS-resistance, hidden service):
>     - Introduction points no longer allow multiple INTRODUCE1 cells to
>       arrive on the same circuit. This should make it more expensive for
>       attackers to overwhelm hidden services with introductions.
>       Resolves ticket 15515.

https://trac.torproject.org/projects/tor/ticket/15515

>     - Decrease the amount of reattempts that a hidden service performs
>       when its rendezvous circuits fail. This reduces the computational
>       cost for running a hidden service under heavy load. Resolves
>       ticket 11447.

https://trac.torproject.org/projects/tor/ticket/11447

Regards,
Salvatore
