X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["390" "Monday" "4" "January" "2016" "22:30:05" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160104213005.GA15178@eldamar.local>" "14" "[oss-security] CVE Request: cacti: SQL injection vulnerability in graphs_new.php" "^Cc:" nil nil "1" "2016010421:30:05" "[oss-security] CVE Request: cacti: SQL injection vulnerability in graphs_new.php" (number mark "U       carnil@debia Jan  4   14/390   " thread-indent "\"[oss-security] CVE Request: cacti: SQL injection vulnerability in graphs_new.php\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3410 invoked by uid 550); 4 Jan 2016 21:30:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3375 invoked from network); 4 Jan 2016 21:30:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Mf8Eda/WIL0L3tK7ndEhzGK5Ny/5XkAArym++qZjMsA=;
        b=GXavPNzn9jFtUWgCIyopNj1WampH9NBQTU2W+xpfTmgiZsgUx2RbROWI96vQmKJn+3
         dXL93O75qWyGngA76BdrYIVCVZgVINGcWQ+bWByPMczdbDxYtn7sOI4D89rIfmiO7R9M
         ayS1RS0zX4AOmuqasxBOzQWh3JXl4BWzA1XixyirWlFHzZSYEebd8oOmsXG7kkgc4p9H
         Fg5OwDkt5ogo1qt9sJbn4vrOTHq9a66CJLPqHNsZp9jngnbZe9fvB6H2iG++tBNxJQnm
         wzBfgcY9gQgsas8Q01HsTa68Jo5o55vL2mDkiAy1YAXHBdg7nRodnn5Ghm9nnWfHqEv5
         Brfg==
X-Received: by 10.194.78.175 with SMTP id c15mr56526590wjx.16.1451943007901;
        Mon, 04 Jan 2016 13:30:07 -0800 (PST)
Message-ID: <20160104213005.GA15178@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Paul Gevers <elbrus@debian.org>
Date: Mon, 4 Jan 2016 22:30:05 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: cacti: SQL injection vulnerability in graphs_new.php
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi,

Another SQL injection vulnerability via graphs_new.php in cacti was
found, reported to the bug http://bugs.cacti.net/view.php?id=2652 .

No upstream commit to fix the issue is available yet.

This seems different to CVE-2015-8377, which was assigned for
http://seclists.org/fulldisclosure/2015/Dec/att-57/cacti_sqli%281%29.txt

Can you assign a CVE for this issue?

Regards,
Salvatore
