X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["693" "Tuesday" "24" "January" "2017" "12:15:48" "-0500" "Max Veytsman" "max@appcanary.com" "<CAGW7fdtioEUEY19WukZQmKn0PDd-rsmHHS_N87nQswFdMnrBhg@mail.gmail.com>" "24" "[oss-security] CVE request: rubygem minitar: directory traversal vulnerability" nil nil nil "1" "2017012417:15:48" "[oss-security] CVE request: rubygem minitar: directory traversal vulnerability" (number mark "U       max@appcanar Jan 24   24/693   " thread-indent "\"[oss-security] CVE request: rubygem minitar: directory traversal vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9584 invoked by uid 550); 24 Jan 2017 17:20:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5508 invoked from network); 24 Jan 2017 17:16:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=appcanary.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=lI0duMLLGZOBg4KJnpG4vhtu8b9vJhJxa9dJl0ta2rI=;
        b=BkgHi8WJJP6V+I+fUjSg/FdxPgEKx2JGYSv7hMUFycUAVy2TLJbcq8rN4qNUs+pOko
         bUHELnBHArtVHZgKwbTnHODXeI2ti84wSsJFqg5WaZvqVOrJuN31ek5xI1cjzH21oD/z
         GvScE3xAsPXjoQ//SaD29urqTRf+21xLRQDUCMny8hqLcVdiZqm1HUYS4+wlmqpOiAIt
         4WFPVF2CabK+E/Om1WtqUBMzoJ8nesBV3IVieh5uLvdCxBwhbPyVecYhWtZXuY59JQ26
         r1xbzCvc5MzPAc/GnzBf2CplilkK/7XLbX4gmWeo/w7LpqlzsKHsMzm7LEAfJkMbqmU3
         N0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lI0duMLLGZOBg4KJnpG4vhtu8b9vJhJxa9dJl0ta2rI=;
        b=Bt/oLs2YDuz7jhClkwy6BfD8FPuQT9cIFbuaDqrxZCmfqZhYXeTnRFbYB+ByhOIl/x
         1bKJuzwjPip3FNA6HNQ0YsB3Q54O06kj/woqbDrNXL7/WoxU5Gv423rXJiRuIhTRFQip
         TO7Kuqx9DzB0wow4Z948l1w3q8FhnMYQLlo2GNjGPffqNNeRI0uY3pZBg6tkvXdOnk3w
         psgvuMlIljg8xycdZ+Gmq4un3xJYhsXmyPnfq7MSu9FfkdO/OE8GgrM42mzZWdKusOOy
         u9d2kquLINFh6q48bnHMxhb2VKvy4UrMVD/kWTMNEcTExvarmHQtUMLERLfQu5cAMYs2
         1bUQ==
X-Gm-Message-State: AIkVDXKGWKhNNa7go3Ud0arw4Te7sAIDrvAQS0WNj+pVzS0m2r/hTv7L7IGkHQ7f1WTM+cmCKOciEoex/ya5YQ==
X-Received: by 10.55.86.196 with SMTP id k187mr32362531qkb.203.1485278168483;
 Tue, 24 Jan 2017 09:16:08 -0800 (PST)
MIME-Version: 1.0
From: Max Veytsman <max@appcanary.com>
Date: Tue, 24 Jan 2017 12:15:48 -0500
Message-ID: <CAGW7fdtioEUEY19WukZQmKn0PDd-rsmHHS_N87nQswFdMnrBhg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114cb9aea033170546da45ff
Subject: [oss-security] CVE request: rubygem minitar: directory traversal vulnerability

--001a114cb9aea033170546da45ff
Content-Type: text/plain; charset=UTF-8

Rubygem minitar allows attackers to overwrite arbitrary files during
archive extraction via a .. (dot dot) in an extracted filename.

Issue:
https://github.com/halostatue/minitar/issues/16

Upstream patch:
https://github.com/halostatue/minitar/commit/e25205ecbb6277ae8a3df1e6a306d7ed4458b6e4

The same issue exists in rubygem archive-tar-minitar

I believe they're based on the same codebase, and minitar is the officially
supported fork, so I'm not sure if this warrants two CVEs or just one.

Thanks,
--
Max Veytsman
Co-founder appcanary.com
@mveytsman <https://twitter.com/mveytsman>

--001a114cb9aea033170546da45ff--
