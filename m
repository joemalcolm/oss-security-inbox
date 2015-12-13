X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["483" "Sunday" "13" "December" "2015" "09:02:26" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151213080226.GA16071@eldamar.local>" "17" "[oss-security] CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character" "^Cc:" nil nil "12" "2015121308:02:26" "[oss-security] CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character" (number mark "        carnil@debia Dec 13   17/483   " thread-indent "\"[oss-security] CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3760 invoked by uid 550); 13 Dec 2015 08:02:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3739 invoked from network); 13 Dec 2015 08:02:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=JZiCMbM9mAiqjMofYXF4NKELpJuFLKNGvhRctRWDxSI=;
        b=I7xDO9BGwdRhDy0YVOl411LpSaTEbFtpyopTQNkRl4N+UGQ8RsjP492yfl7kv5+/dX
         7/8fzwLMkp6JvjqrYpvE78PZlxdzSNL0nTMZhkYAbCvWw8jHShozWiLUSm0D4NxJfNho
         lFUwqzNd+27b6FooIWNSdHUW8mny4t0nwIL3he1r4cWDfZhd485ScoEuJ8GGbgwa+v92
         3wc7+963YMdmc2Jb9ytwPhnx3n5nAtqcgtCc5mRp+sFsxAVRhjk79EQB7tmYD353cJfj
         aAwYoGaWCxDHbZMyQm30OctY524wHsr1ZWWIMyYVnanXcTNRZhYRzRBMaNPG+k6e6FwL
         D4tA==
X-Received: by 10.194.178.135 with SMTP id cy7mr30153766wjc.61.1449993748213;
        Sun, 13 Dec 2015 00:02:28 -0800 (PST)
Message-ID: <20151213080226.GA16071@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>,
	Adam Chester <adam.chester@pentest.co.uk>,
	Till Kamppeter <till.kamppeter@gmail.com>
Date: Sun, 13 Dec 2015 09:02:26 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Cups Filters/Foomatic Filters: Does not consider
 semicolon as an illegal shell escape character
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

CVE-2015-8327 was assigned to cups-filters/foomatic-rip since it does
not consider the back ticks as an illegal shell escape character
and allowing code execution.

There was another commit in cups-filters upstream (revision 7419) as
well adding (;) to the set of illegal shell escape characters:

http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/revision/7419

an was found by Adam Chester.

Could you assign a CVE for this issue as well?

Regards,
Salvatore
