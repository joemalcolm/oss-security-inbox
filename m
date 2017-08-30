X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1071" "Wednesday" "30" "August" "2017" "10:30:19" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0wfWS6kZLQO12WXu0Zd0MM-_ThiDKqttHvnZQmmxCtgA@mail.gmail.com>" "33" "[oss-security] RubyGems flaws" nil nil nil "8" "2017083016:30:19" "[oss-security] RubyGems flaws" (number mark "U       kseifried@re Aug 30   33/1071  " thread-indent "\"[oss-security] RubyGems flaws\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16023 invoked by uid 550); 30 Aug 2017 16:30:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16002 invoked from network); 30 Aug 2017 16:30:32 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2UDIlMf/Ge4EVyjY4YZysmskfYoW/N5KsGlnEu2o14c=;
        b=l3AbhIr2U/BGZ/mnwmYxPyTiuR0D8rt8pq9JbhXdt3IlIGOeZSLy1JtkvEaorTUBSS
         0v1Qor+COKBVnE1OTvlhCozTvAL8TGyJDHmxYt6LvDT6Pa0CKn9WVp/briSPJT9tyUJG
         USJ76yW2VIPJkxnjGr/llWUb/ugtg0V2wU4q3nkT6pHsTJrOAvO8aTiPLUzbteYizStJ
         OcVLxO85ZlYvplz37kNWee+xcSqhnoPU0qLxMj2N7cs7r/IgTMjP4k0S85NKDGPnDp94
         yzrJ8kqktdbsPL8XKNLhkzGId3X1CMkAjPX00RYb+AJcDi0urbfJs8MQ/8nbG2qMWztR
         XuGw==
X-Gm-Message-State: AHYfb5jsjDJq06L1ZDn1LRKxHYV6VTnIsAdNmO5IlggDd+EBZmRVKFv4
	p6cp5+OIV31yL23y5ED1EZUG09HtjqyuJ+4//Q==
X-Received: by 10.202.4.6 with SMTP id 6mr1953758oie.114.1504110620136; Wed,
 30 Aug 2017 09:30:20 -0700 (PDT)
MIME-Version: 1.0
From: Kurt Seifried <kseifried@redhat.com>
Date: Wed, 30 Aug 2017 10:30:19 -0600
Message-ID: <CANO=Ty0wfWS6kZLQO12WXu0Zd0MM-_ThiDKqttHvnZQmmxCtgA@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="001a11c034323795d50557fb0bab"
Subject: [oss-security] RubyGems flaws

--001a11c034323795d50557fb0bab
Content-Type: text/plain; charset="UTF-8"

Does anyone know if these got CVEs?

https://www.ruby-lang.org/en/news/2017/08/29/multiple-vulnerabilities-in-rubygems/
http://blog.rubygems.org/2017/08/27/2.6.13-released.html

Security fixes:

*Fix a DNS request hijacking vulnerability. Discovered by Jonathan
Claudius, fix by Samuel Giddins.
*Fix an ANSI escape sequence vulnerability. Discovered by Yusuke Endoh, fix
by Evan Phoenix.
*Fix a DOS vulernerability in the query command. Discovered by Yusuke
Endoh, fix by Samuel Giddins.
*Fix a vulnerability in the gem installer that allowed a malicious gem to
overwrite arbitrary files. Discovered by Yusuke Endoh, fix by Samuel
Giddins.

Affected Versions

*Ruby 2.2 series: 2.2.7 and earlier
*Ruby 2.3 series: 2.3.4 and earlier
*Ruby 2.4 series: 2.4.1 and earlier
*prior to trunk revision 59672


Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11c034323795d50557fb0bab--
