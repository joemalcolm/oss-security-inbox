X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["511" "Tuesday" "4" "July" "2017" "17:03:38" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170704150338.7oj7i5iah3hciy6g@eldamar.local>" "20" "[oss-security] jabberd2: CVE-2017-10807: Allows to authenticate using SASL ANONYMOUS even if disabled" "^Date:" nil nil "7" "2017070415:03:38" "[oss-security] jabberd2: CVE-2017-10807: Allows to authenticate using SASL ANONYMOUS even if disabled" (number mark "        carnil@debia Jul  4   20/511   " thread-indent "\"[oss-security] jabberd2: CVE-2017-10807: Allows to authenticate using SASL ANONYMOUS even if disabled\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11907 invoked by uid 550); 4 Jul 2017 15:04:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11678 invoked from network); 4 Jul 2017 15:03:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7qPRI4/n9h5u2HwKbHZpNZkWNo7PojYF9qNm+T5Sdoc=;
        b=YPiF3QKqdYQeeSPJUhFJJy1K+LFwWME5YXcFb6AwwVbeoudmKj47EetPVA4PIS+vJ0
         XAMu2NSlrBvlcrZuhRrSZpOybPPM+1HV9O5FBJEmMMEykd9WMby0SZxg8EvjW/kf1h2K
         OGDY60WFaeZEFfubaKaiPnlkUMcl7mMnj3ZwvaKazm3LjlUX6khU/T8vxjz11yFkcvzC
         oKsYH4RvmpZCwt6G35AkP2hoYx3UiRT8nxd3tfLG9m+OZNrry9kQiGlKdXQGeYg861nu
         ZA2/UsYzuHHdUrqk3S6bLXqh75ogVw7uXM6FzwNUZ4ESgDWNH+BfVGWJ1vAC5oaNZDgc
         t2Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=7qPRI4/n9h5u2HwKbHZpNZkWNo7PojYF9qNm+T5Sdoc=;
        b=ElcOwaRvrm+fxRVgjdNXGHrkROiG1q4L+pH3RQxjBmt1PlcrhdjLmSxlHwEPkUtDwH
         lUqHgkLZItfic1cgS2j4/DGF4Udpj2rp2aOi1oZmfdoRFKWywOjvyAPIkmn6QT3HpkXV
         6j10CiP6fJv3b3m8MNsebwPZQS4BMrB8tDvF5DOMtynqktr7YhF/3kVIsLoCeQnV1Yn2
         3plQ6jvpo1t5dyoDtDl0o321y6RdEo/B7QMgGx5Y1t85AuQaZp9qkQo6C00HWpMmVTJZ
         TuMNwbVZUzpHP97DtvvC5bFi3dBafS49TEXV6VLtNhjml0BE2gjCzEbMhPV8Dq4e7Fm1
         Ja+A==
X-Gm-Message-State: AKS2vOyW28+K6GZTmseXEaa7YuFfGvECE8uR74WHtbrk0YqC6kVntOqn
	0X99/Www4SrashFu
X-Received: by 10.223.130.162 with SMTP id 31mr33602475wrc.202.1499180619263;
        Tue, 04 Jul 2017 08:03:39 -0700 (PDT)
Message-ID: <20170704150338.7oj7i5iah3hciy6g@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Tue, 4 Jul 2017 17:03:38 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] jabberd2: CVE-2017-10807: Allows to authenticate using SASL
 ANONYMOUS even if disabled
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

The Jabberd, before 2.6.1 allowed anyone to authenticate SASL
ANONYMOUS, even when sasl.anonymous c2s.xml option is not enabled.
The bug allows nauthorized usage of jabberd server installations and
could possibly lead to a DoS.

References:

https://github.com/jabberd2/jabberd2/releases/tag/jabberd-2.6.1

Upstream fix:

https://github.com/jabberd2/jabberd2/commit/8416ae54ecefa670534f27a31db71d048b9c7f16

As mentioned in the subject, MITRE has assigned CVE-2017-10807 for
this issue.

Regards,
Salvatore
