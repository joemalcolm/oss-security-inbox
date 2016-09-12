X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1867" "Monday" "12" "September" "2016" "06:09:10" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>" "50" "[oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" nil nil nil "9" "2016091209:09:10" "[oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" (number mark "U       dawid@legalh Sep 12   50/1867  " thread-indent "\"[oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23962 invoked by uid 550); 12 Sep 2016 10:12:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23598 invoked from network); 12 Sep 2016 09:09:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=KlGG1/Mku+hGjHdCE/DImalqDxnen9qufpcARXD0Cic=;
        b=bogiBf3MR1BrQu6dlcfAd5Zl1WQ2Z0XGWkUzH6GYKaMHeRRilMMO0Lppt0Mv3roLyq
         iQBuN3w8uOuMun/izyBk1M2o2+PpPKWhu3G2dEoIH7V67aQ8S2T9OMSv9WV5Wt4S/xDD
         8+hgIQuRH8pqDnYxzIP7CDBEAvaHgmRS+fO+riND5yMGFRYqHunZT/M0W6dfPiOBRHGR
         a+lBnE/LXa93wApCBwzScIgL3yUy8vp5OIwNJ00f0x6zz7mCZMmWCNIXlKWavVi2DoCT
         GdEb9um8hiz0iMaUCZ1DPpt6nsofme5vadEHuulsbWb5O0refwIIBk37tHIl6QBdHDXN
         qoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KlGG1/Mku+hGjHdCE/DImalqDxnen9qufpcARXD0Cic=;
        b=MNeFPHmW5kH/doJLmiWWHYXV3d/evBP6RHQVtWvyEs7I1JfIqMnLD9AUON0+w9kZOD
         CsFiTGUWD0cHKOasYuUjJyHko2daoKjIbbilyzyOhrtoZ+pCzZJPV0lSGI3NZMjd9fJ2
         cgss3hDjG686e0EVJ23dp1irE8cR9BTjldONSl7FP/vreUu5loJLRpNZL7UV1S2QqN2l
         S5fwGRQtzdf1tScWmtOgbf2qo8dr5JEXgSnJDG664YY+VxUm8KhM5QQxqqop8vghxmJB
         WoY3fotzxspiBpI3l9BVrf3FWtqec16Ke7D8MZfZulJI3dtkeacScJ5ULu728OkK5KHU
         9qnQ==
X-Gm-Message-State: AE9vXwNuDVF/VSZQiSDA6D1/tVhQK63mpUemtinYimH6PFiCN++p9tBBozCVwlS5LDkRe1ETHBzrL4gH45jGEw==
X-Received: by 10.31.134.65 with SMTP id i62mr584029vkd.21.1473671350755; Mon,
 12 Sep 2016 02:09:10 -0700 (PDT)
MIME-Version: 1.0
From: Dawid Golunski <dawid@legalhackers.com>
Date: Mon, 12 Sep 2016 06:09:10 -0300
Message-ID: <CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege
 Escalation ( 0day )

Vulnerability: MySQL Remote Root Code Execution / Privilege Escalation 0day
CVE: CVE-2016-6662
Severity: Critical
Affected MySQL versions (including the latest):
<= 5.7.15
<= 5.6.33
<= 5.5.52

Discovered by:
Dawid Golunski
http://legalhackers.com

An independent research has revealed multiple severe MySQL vulnerabilities.
This advisory focuses on a critical vulnerability with a CVEID of CVE-2016-6662.
The vulnerability affects MySQL servers in all version branches
(5.7, 5.6, and 5.5) including the latest versions, and could be exploited by
both local and remote attackers.
Both the authenticated access to MySQL database (via network
connection or web interfaces such as phpMyAdmin) and SQL Injection
could be used as exploitation vectors.

Successful exploitation could allow attackers to execute arbitrary code with
root privileges which would then allow them to fully compromise the server on
which an affected version of MySQL is running.

This advisory provides a (limited) Proof-Of-Concept MySQL exploit
which demonstrates how Remote Root Code Execution could be achieved by
attackers.
Full PoC (which works on default installations without the need for
the attacker to find writable config files) will be provided later on
to give users a chance to react to this advisory as the issue has not
been patched by all the
affected vendors yet despite efforts.

The exploitation is interesting in the way that it involves an
oldschool LD_PRELOAD environment variable and that it targets a
service that doesn't
serve requests as root but could still be tricked to get root RCE when
restarted.
Might give you strange feelings when restarting mysql service the next time ;)

The advisory is available at:

http://legalhackers.com/advisories/MySQL-Exploit-Remote-Root-Code-Execution-Privesc-CVE-2016-6662.html


-- 
Regards,
Dawid Golunski
http://legalhackers.com
