X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["982" "Friday" "30" "September" "2016" "21:15:35" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzsv2SWT=HDdeDRXC-CvfFo7g37m-CL0Sd9sONEBGhX2Mrw@mail.gmail.com>" "26" "[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" "^Date:" nil nil "9" "2016100100:15:35" "[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" (number mark "U       dawid@legalh Sep 30   26/982   " thread-indent "\"[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10016 invoked by uid 550); 1 Oct 2016 06:04:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3923 invoked from network); 1 Oct 2016 00:15:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=MBKm7xHhRrWIXE8gM37R7P6BPPYEWE5qxZUuxfn5WAI=;
        b=0BPg9cOH1YdeG9sHJLJ03jfu45Hh3x7AiygiKok5oVZA7TBRAvZBlM6vpAdOLk7/Dg
         iG2YYQw146ZwfjynZrcabWgyXlh/TD4HHPVzuEBrJ5+7CIbSXgcPMD1DXebC0gDv6z1s
         gXjuNq4h8oxwuZvVzOTbkNFNDdQ2lqCkWflMISRMnRn+wsaTf0Vb5SYv1TmyVlVxhYHp
         MzmnMzWJvJsSddLaOITOyicL18lAfC+I0FyhlVRwaIvlk/r8/OGTlx2uknM7hbkobcbk
         0azhNBBWkHDgq76l/QcTEioXW8P1h9ZKk468UuhEaBvZ9jeTewWXUKD672mwXmfgFRDr
         vuUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MBKm7xHhRrWIXE8gM37R7P6BPPYEWE5qxZUuxfn5WAI=;
        b=LanP0qciFxJ5ExxIr3LnjgWKwSizpoirg3ezyQCnxfm8eBo5eUYWnbiDtQT0aRK+3x
         QvBAeJvgEZljwRvt6JJSVIIk26AfhAg3sCag/Cc2ynKmEfDHpkSeFfhphihRokvu6PGc
         bchlsCX7U9l12eaeT2J+EciAzRvQDbvP2FzF6PqyONr6/zVbPFs4lgXdPp1jZnRs95BT
         Zt9CIfByTfUV3kob0Fzp2rF139FOEdybNF/6hr29PzwGOIEzJVWFu5Oo5cMAfkH+aHy/
         3vK/1pCkEya3SE9KnNAYH6KpEnUvaOlxBn+8BB3bwYhWWPjzGVnmt2MVAOEcduVDxw7e
         wUjQ==
X-Gm-Message-State: AA6/9Rn5WcvZ69H34Qw0niDDKSX/SH52WpzPrxWJU8PLS32qWsbwZfgY8hBUuD5XQJgKpRKeg9lpbpVQVYu3jQ==
X-Received: by 10.194.90.174 with SMTP id bx14mr8426682wjb.41.1475280935698;
 Fri, 30 Sep 2016 17:15:35 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CADSYzsv2SWT=HDdeDRXC-CvfFo7g37m-CL0Sd9sONEBGhX2Mrw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 30 Sep 2016 21:15:35 -0300
From: Dawid Golunski <dawid@legalhackers.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root
 Privilege Escalation
To: oss-security@lists.openwall.com

CVE: CVE-2016-1240
Vulnerability: Tomcat packaging on Debian-based distros - Local Root
Privilege Escalation
Affected packages: Tomcat 6/7/8 deb packages (up to 8.0.36-2)
Systems affected: Debian & Ubuntu & possibly others (using the
affected deb packages)

Discovered by:
Dawid Golunski (http://legalhackers.com)

Tomcat (6, 7, 8) packages provided by default repositories on Debian-based
distributions (including Debian, Ubuntu etc.) provide a vulnerable
tomcat init script that allows local attackers who have already gained access
to the tomcat account (for example, by exploiting an RCE vulnerability
in a java web application hosted on Tomcat, uploading a webshell etc.) to
escalate their privileges from tomcat user to root and fully compromise the
target system.

The full Advisory and a PoC exploit can be found at:

http://legalhackers.com/advisories/Tomcat-DebPkgs-Root-Privilege-Escalation-Exploit-CVE-2016-1240.html

-- 
Regards,
Dawid Golunski
http://legalhackers.com
