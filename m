X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["321" "Monday" "20" "March" "2017" "06:53:48" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170320055348.lsc6oxie7gu4leo5@lorien.valinor.li>" "12" "[oss-security] git: CVE-2014-9938: does not sanitize branch names in $PS1 allowing command execution" nil nil nil "3" "2017032005:53:48" "[oss-security] git: CVE-2014-9938: does not sanitize branch names in $PS1 allowing command execution" (number mark "U       carnil@debia Mar 20   12/321   " thread-indent "\"[oss-security] git: CVE-2014-9938: does not sanitize branch names in $PS1 allowing command execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8063 invoked by uid 550); 20 Mar 2017 05:54:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8039 invoked from network); 20 Mar 2017 05:54:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nWJowLD3m344lnngm+l4u2Wz0aDhiJfbzvhdq2mdBA8=;
        b=hKI7TzZ+8+iD9D5w0QqkJsMUL3MgcXYuzZTg34ATH54RBKuBNeUQRb1FzqcFuGrq4J
         ctNSpBdDAdCOvwYrbJ0OGUMF53Xk39U74VXntCfSwGfVTDeAG82CZNFBEF5+2Ax14RSg
         kmENlDR7kDfzGvX5gRE7HBihXKpjnWOe9jQtHj0Z+1t7UtcRKVEllDOt8jUJNgg/EEyJ
         P2EtGZ6pyl99qf8r/fEPFO9GR/76Zg9lSl9aK+vOqLNX78Swg8n1Xh1YWEfH8dCt+lfX
         a14bg9PAXIHa1FCXbC/B6mRvWszm5GNDc4+IBZU3sUW6ALzybj1/p/+gRvgSmPId1LwU
         CBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=nWJowLD3m344lnngm+l4u2Wz0aDhiJfbzvhdq2mdBA8=;
        b=OyGYrJSM2/yr0weHOek97AxKJnM7/Px2ISdzFhvXQGUjGAQyor8YDjytE1czhYgc4O
         xZZH6K4ir937u+bSUa73bGxf4f/ft2y86yHBJjwZGohPRyYy1wY+a5T81YSUSlYrMtbT
         MpltZl7CX8UlhEO3fOjc8/tCLbCCfzdLC9gJyvTNCLfMXcK5iawSOgpZbsQYKdRzPtLV
         Ly4bD3PsFG04qzoUa1gTmb2aii52Rv209JA3Mjk1C14v4hlvtaEF0wVfUixMF9z19xMl
         w57drIKni8ggHkFkxq1WmlW9jdcfvNxvl1ExLbBa71T1O+DZGjhmkWoh09+IALWzyYFR
         ow9A==
X-Gm-Message-State: AFeK/H0ideDp4BWeTErYkPgijQykhn1uWR8lX//ksK+3GurFcnI09MWBzxll81Fjl21ksw==
X-Received: by 10.200.42.166 with SMTP id b35mr24708225qta.195.1489989232479;
        Sun, 19 Mar 2017 22:53:52 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 20 Mar 2017 06:53:48 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170320055348.lsc6oxie7gu4leo5@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] git: CVE-2014-9938: does not sanitize branch names in $PS1 allowing
 command execution

Hi

MITRE has assigned CVE-2014-9938 for an older issue in the contrib
script in git, where git-prompt.sh did not sanitize branch name in
$PS1 exploitable for command execution by a malicious repository.

The upstream fix is

https://github.com/git/git/commit/8976500cbbb13270398d3b3e07a17b8cc7bff43f

Regards,
Salvatore
