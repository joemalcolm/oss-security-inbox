X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2396" "Saturday" "27" "June" "2015" "00:46:47" "+0530" "Anirudh Anand" "anirudhanand722@gmail.com" "<CAMntfF3xsdLJ9GHbJHDczaS_6jVDZLDM=yu0G-P4bPsgB3vU3g@mail.gmail.com>" "87" "[oss-security] Re: CVE Request: Anchor CMS - Multiple Stored and DOM Based XSS issues" nil nil nil "6" "2015062619:16:47" "[oss-security] Re: CVE Request: Anchor CMS - Multiple Stored and DOM Based XSS issues" (number mark "U       anirudhanand Jun 27   87/2396  " thread-indent "\"[oss-security] Re: CVE Request: Anchor CMS - Multiple Stored and DOM Based XSS issues\"\n") "<CAMntfF3YiZ3dDTTR0Szo4A0KF5z_a-yHjrMA1hA-VxRGiWKMRw@mail.gmail.com>" ("<CAMntfF3YiZ3dDTTR0Szo4A0KF5z_a-yHjrMA1hA-VxRGiWKMRw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14265 invoked by uid 550); 26 Jun 2015 19:18:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13821 invoked from network); 26 Jun 2015 19:17:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=lhwf8Y6B7ri0seDNp7lE3/oo1wti9KtCV9OCy6KAZj8=;
        b=PiTZxiw0/hHEgKbjRZuytf/A0OdZURDQULJCN1HBoxifw87k2tPmkK7yuvQfUU4BWp
         4cI+f2FSzTiOQ3fkHveBpxffuaKZgQaGush6uBKZkSnrsI4jGMqxlYlyjPD+kZ0Z3M5Y
         cRrxUrpSGPgsEwsLd0SCgaYlJ/YC+oCQO5I6ZuNVxNLcML8APYj2KYm42sd9LEK3wyD7
         8lE2FYnI6Nt/KdqamOwiCPoNveI2ZqxtFUghof0H/W1T8ci1KSPW0VV73CLGG/wEmRlD
         qFn4wsC8l0F7OKksWLOgjR0OWF5GzLsEtt+TJ/Xf08RUypAeQo1uEzRT9d05RlRhrUrA
         04Ow==
MIME-Version: 1.0
X-Received: by 10.140.106.101 with SMTP id d92mr4466215qgf.70.1435346208037;
 Fri, 26 Jun 2015 12:16:48 -0700 (PDT)
In-Reply-To: <CAMntfF3YiZ3dDTTR0Szo4A0KF5z_a-yHjrMA1hA-VxRGiWKMRw@mail.gmail.com>
References: <CAMntfF3YiZ3dDTTR0Szo4A0KF5z_a-yHjrMA1hA-VxRGiWKMRw@mail.gmail.com>
Message-ID: <CAMntfF3xsdLJ9GHbJHDczaS_6jVDZLDM=yu0G-P4bPsgB3vU3g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113b3744dc247e0519709452
Date: Sat, 27 Jun 2015 00:46:47 +0530
From: Anirudh Anand <anirudhanand722@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Anchor CMS - Multiple Stored and DOM Based XSS issues
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a113b3744dc247e0519709452
Content-Type: text/plain; charset=UTF-8

Adding Further details regarding the issue: (sorry for not including the
details in the first mail).

1)
*Stored/Persistent XSS: *
While creating a new page (any authenticated user can create a new page),
the page title is not properly sanitized before saving the input the
database and hence users inject their own payloads. A sample POC can be
trying to give the following payload while adding a new page:

Page title = *page"onmouseover="alert(1)";*

Same injection can be also done on username field while creating a new user
or when editing an already existing user. So any user can purposefully add
JavaScript along with his name. If the user profile page is visited by the
admin or any other users, it will trigger the JavaScript.

2) *DOM Based XSS:*

DOM Based XSS occurs under every single URL below* /admin/*. A sample POC
can be:

http://localhost/anchor-cms/admin/posts/%3Cscript%3Ealert%281%29%3C/script%3E
 <http://localhost/anchor-cms/admin/%3Cscript%3Ealert%281%29%3C/script%3E>
ttp://localhost/anchor-cms/admin/%3Cscript%3Ealert%281%29%3C/script%3E
<http://localhost/anchor-cms/admin/%3Cscript%3Ealert%281%29%3C/script%3E>


*Date of reporting:* 24th June, 2015

*Exploit Author:* Anirudh Anand

*Vendor Homepage*: https://anchorcms.com

*Software Link:* http://anchorcms.com/download

*Version: *< 0.9.2

*Tested on:* Linux:- Ubuntu, Debian


The issue has been reported to the vendor:
https://github.com/anchorcms/anchor-cms/issues/876

Is it possible to assign CVE identifiers for the same ?

Thank you,

On Thu, Jun 25, 2015 at 4:53 PM, Anirudh Anand <anirudhanand722@gmail.com>
wrote:

> Hello,
>
> I would like to receive CVE identifier for the following Issues in the
> latest version of Anchor CMS:
>
> *Reference: *
> https://github.com/anchorcms/anchor-cms/issues/876
>
> Anchor CMS is a very popular content Management System. There are multiple
> Stored and DOM based XSS issues in it as reported in the reference. These
> issues persists in all the latest Anchor CMS releases.
> --
>
> Anirudh Anand
> bi0s@AMRITA
> www.securethelock.com
>
> *"Those who Say it cannot be done, should not interrupt the people doing
> it"*
>



-- 

Anirudh Anand
bi0s@AMRITA
www.securethelock.com

*"Those who Say it cannot be done, should not interrupt the people doing
it"*

--001a113b3744dc247e0519709452--
