X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2268" "Monday" "26" "December" "2016" "00:21:07" "-0200" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "70" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122602:21:07" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       dawid@legalh Dec 26   70/2268  " thread-indent "\"[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13651 invoked by uid 550); 26 Dec 2016 02:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9706 invoked from network); 26 Dec 2016 02:21:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=+Zxz0jb6TcVHL1A3ISILn5hO+oEPxOi2TK4PAl6RFz4=;
        b=mmHhvybaL36jM/mnza/TwJKMHetr66j79YP/OCtggSn72aT26e8AmiZ2ZY29P9Q3d/
         SfvnxTHQwYtABMNikczcO2YlLEAfUkir7+za2ARrUFOP+BxByoQMa2n9ZzYlPaFo8n1w
         mv7lE2EyH1PWC7fn2IDt4QptNLCq6xJ30n3NLuAloeExcZps3Nvksz70NwdjBY2QZsPT
         rIlLZ87jq73543Ee+Ji6dDb4bv3nkpoIhtVyHLtujvjIuiL0o7e99N37JmXJho/6a0+2
         QWTBXDfAiQHXYdTytLaO26SvUL6XBEhvHsFolE/wVwiqY/B7pWDaoJHVYtwQwzkji7ri
         jmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+Zxz0jb6TcVHL1A3ISILn5hO+oEPxOi2TK4PAl6RFz4=;
        b=HeP4hfIlgcHiYDdXXy+fmyYNvkgFHUBb0wY9wkQOJewnrUzDp9jBHcbRduTvqzuks6
         CnYRJjVmeTuULAA5IRm2cwhsWRhtYnftSCcKCiVKtxzSk7OwvrT6hgfso7nlCNAdpyC6
         sjBSV55jRDMl9MLX5AkVdJsege/9z+mt1XT0mkd1Hk2L0ZFviGU4czZ2IF+RFKpsS9QO
         8nQdglTx7pM79Gm94nB5xOWufFchAjNPmwqFp6mKEeqTlsL+v4p3Q4JU1FW3tJ+I35Zl
         pApeMkHE7NJ1TTfouUhurWdBrv69IhydYI4FSe8U9gbuYO2g4PlzmPjD6OYjNx4DPafY
         rkwQ==
X-Gm-Message-State: AIkVDXL1DGZGL/krRhRfhtiyd6/8HUh7uOoFfdGSMk/GuZNCqShAKc5WI+WvxetHgyD+4CJieFZab2H7XSnKNQ==
X-Received: by 10.31.147.9 with SMTP id v9mr9313472vkd.90.1482718867704; Sun,
 25 Dec 2016 18:21:07 -0800 (PST)
MIME-Version: 1.0
From: Dawid Golunski <dawid@legalhackers.com>
Date: Mon, 26 Dec 2016 00:21:07 -0200
Message-ID: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]

PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]

Severity: CRITICAL

Discovered by:
Dawid Golunski (@dawid_golunski)
https://legalhackers.com


PHPMailer
"Probably the world's most popular code for sending email from PHP!
Used by many open-source projects: WordPress, Drupal, 1CRM, SugarCRM, Yii,
Joomla! and many more"

Desc:
An independent research uncovered a critical vulnerability in PHPMailer that
could potentially be used by (unauthenticated) remote attackers to achieve
remote arbitrary code execution in the context of the web server user and
remotely compromise the target web application.
To exploit the vulnerability an attacker could target common website
components such as contact/feedback forms, registration forms, password
email resets and others that send out emails with the help of a vulnerable
version of the PHPMailer class.


Patching:
Responsibly disclosed to PHPMailer team.
They've released a critical security release.
If you are using an affected release update to the 5.2.18 security
release as advised at:
https://github.com/PHPMailer/PHPMailer/blob/master/changelog.md

Notes:
I know this is a bad timing and a short notice (for everyone probably ;)
I've spent most of my Christmas break working on this issue with
affected vendors.
This has been quite a rush as one of the vendors leaked excessive
information on this vulnerability at one point which could aid
potential attackers.

I've released a limited advisory at the link below:

https://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CVE-2016-10033-Vuln.html

This is to give people a chance to immediately patch or at least be
aware of the issue before we get closer to a working day/end of
holiday for affected users to act on this issue.

I'm planning to release the full advisory and a PoC exploit shortly so
that everyone is on the same page.

Upcoming video PoC:

https://legalhackers.com/videos/PHPMailer-Exploit-Remote-Code-Exec-Vuln-CVE-2016-10033-PoC.html


For updates follow:

https://twitter.com/dawid_golunski

I'll also send another email to the list once it is published.

For now,
Patch it now before someone else patches it for you (through a reverse shell ;)

-- 
Regards,
Dawid Golunski
https://legalhackers.com
t: @dawid_golunski
