X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1578" "Friday" "3" "July" "2015" "13:27:27" "+0530" "Anirudh Anand" "anirudhanand722@gmail.com" "<CAMntfF04Vq=1v=jn=1DNjPTNHfPp5YASwnm6OdVKYxs5VsaCiA@mail.gmail.com>" "57" "[oss-security] CVE Request: GetSimple CMS: Multiple Stored XSS" nil nil nil "7" "2015070307:57:27" "[oss-security] CVE Request: GetSimple CMS: Multiple Stored XSS" (number mark "U       anirudhanand Jul  3   57/1578  " thread-indent "\"[oss-security] CVE Request: GetSimple CMS: Multiple Stored XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9811 invoked by uid 550); 3 Jul 2015 23:51:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28240 invoked from network); 3 Jul 2015 07:57:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=FYJn7jAZ1iTLd0DANgbkxPgkIF2FP7u01HwzELaKJcc=;
        b=HW47J1tqEhHMHr0po9QE3NTqv+m+tjbmKHcS939rH9yYyQoKFqyK/ADbFGIlBYhrh4
         gMYPl08ZBaE1d1hxVyGknftAnv0oaksloMREHaCio3+/TutUADIOr8JyWhXzYSfglWyO
         kipdR6yCB9AtYgKP1kSsqchuLvt4PV/e8auCmDOnbMxB3vlQy5GqgDalXh9rRrHwDLsa
         cJ9IB0CjzKEUktnJhPK1+GD+y0xl92eGhaBI4317IvCrWxZqp0QyMhFvLPBiaLDVUEz9
         SVUDiwOvD1gg0KQq9JK3/VVu6VYG0l2aKTG1J5mCKnAriIy4SIdZtTm77hBpdBD0hF7B
         gxgA==
MIME-Version: 1.0
X-Received: by 10.140.201.80 with SMTP id w77mr51518133qha.33.1435910247134;
 Fri, 03 Jul 2015 00:57:27 -0700 (PDT)
Message-ID: <CAMntfF04Vq=1v=jn=1DNjPTNHfPp5YASwnm6OdVKYxs5VsaCiA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11431ca835baf10519f3e891
Date: Fri, 3 Jul 2015 13:27:27 +0530
From: Anirudh Anand <anirudhanand722@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: GetSimple CMS: Multiple Stored XSS
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a11431ca835baf10519f3e891
Content-Type: text/plain; charset=UTF-8

Hello,

GetSimple <http://get-simple.info/> is a stand-a-alone, fully independent
and lite Content Management System.

Recently I found that Getsimple CMS is vulnerable to Stored Cross site
scripting attack.

*POC:*

While creating a new page, give the page title as
*new"onmouseover="alert(1)";* and in the content, give *<svg
onload="alert(10)">*. Now save it and then go to *pages.php* and then hover
the mouse over the cross mark (which is used to delete the post). You can
see that XSS is triggered.

Now, go to *backups.php* and hover the mouse over it and again you can see
the XSS triggered. Now open the backup and you can see that *<svg>* is
triggered there. But since there is regex checking in the main pages, the
*<svg>* won't get triggered in the main page.

Any normal user has the ability to add new pages and each time when a post
is saved, it gets automatically saved into *backups.php*

*Date of reporting:* 3rd July, 2015

*Exploit Author:* Anirudh Anand

*Vendor Homepage*: http://get-simple.info/

*Software Link:* http://get-simple.info/download/

*Version affected: *Possibly all version <= 3.3.5

*Tested on:* Linux:- Ubuntu, Debian, PHP - 5.5


The issue has been reported to the vendor:
https://github.com/GetSimpleCMS/GetSimpleCMS/issues/1067

Is it possible to assign CVE identifier for the same ?

Thank you,

-- 

Anirudh Anand
bi0s@AMRITA
www.securethelock.com

*"Those who Say it cannot be done, should not interrupt the people doing
it"*

--001a11431ca835baf10519f3e891--
