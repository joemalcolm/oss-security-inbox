X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["949" "Friday" "26" "June" "2015" "22:30:46" "+0530" "Anirudh Anand" "anirudhanand722@gmail.com" "<CAMntfF29sAAROb6dwGSkk0+t+DLAgrX6aShHhyJReK=nbup10w@mail.gmail.com>" "42" "[oss-security] CVE Request - BigTree CMS - Stored XSS while creating a new user" nil nil nil "6" "2015062617:00:46" "[oss-security] CVE Request - BigTree CMS - Stored XSS while creating a new user" (number mark "U       anirudhanand Jun 26   42/949   " thread-indent "\"[oss-security] CVE Request - BigTree CMS - Stored XSS while creating a new user\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25711 invoked by uid 550); 26 Jun 2015 17:09:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13714 invoked from network); 26 Jun 2015 17:00:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=VqxX2IKEHidITFdI28XjJCigECyiSAhHRcX/s+rW4ns=;
        b=neKQlCNiAWdYtZ5ptSbg85gGsB23teMSEjgNBNkrv+hby3QBg3Ssq78Q+4v8q66mTU
         LWMlhZBc127/huU+RZPWlpTiYlQ3AllLBGo9V/W5O0/xsEFgZWm861kKNWW4OS4hYehU
         0E/3DVJUBYiZkLtEfPb67MpqfBxwOu5J6aL0HzpQ0+XaBweaf6DCEuLxSuECinQmKotY
         OyKOZKBXN4z47Dy1m6qc/vY+1BTkQNZkHIt+E7i+AteLQd/3DaGIvj7eDzSJbh3O6v6w
         agUCrnLCuASDJppTdn+BJ8TaYNcJ0GBtYIiQpG4fHgxj8aIYYsy/1PwNu29A5lm7hL6I
         V3ag==
MIME-Version: 1.0
X-Received: by 10.55.31.226 with SMTP id n95mr6050037qkh.38.1435338046559;
 Fri, 26 Jun 2015 10:00:46 -0700 (PDT)
Message-ID: <CAMntfF29sAAROb6dwGSkk0+t+DLAgrX6aShHhyJReK=nbup10w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147947665e4a105196eae51
Date: Fri, 26 Jun 2015 22:30:46 +0530
From: Anirudh Anand <anirudhanand722@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - BigTree CMS - Stored XSS while creating a new user
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a1147947665e4a105196eae51
Content-Type: text/plain; charset=UTF-8

Hello all,

BigTree CMS is a popular Content Management System written in PHP. While
creating a new user, the "*Name*" and "*Company*" parameters are not
properly sanitized and it leads to stored XSS.

*Date:* 25th June, 2015

*Exploit Author:* Anirudh Anand

*Vendor Homepage*: https://www.bigtreecms.org/

*Software Link:* https://www.bigtreecms.org/download/

*Version: *< 4.2.2

*Tested on:* Linux:- Ubuntu, Debian


The issue has been successfully reported to vendor and they have released
an update for the same.

*References: *

*Bug Report:* https://github.com/bigtreecms/BigTree-CMS/issues/205

*Fix Released:*
https://github.com/bigtreecms/BigTree-CMS/commit/e13aa4795cdeb1ab1dc0f5fd0b66df2d1296591d

-- 

Anirudh Anand
bi0s@AMRITA
www.securethelock.com

*"Those who Say it cannot be done, should not interrupt the people doing
it"*

--001a1147947665e4a105196eae51--
