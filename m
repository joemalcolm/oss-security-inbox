X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1667" "Tuesday" "21" "July" "2015" "20:35:49" "+0530" "Abhishek J.M" "jmabhishek4@gmail.com" "<CABpk8vbGz+TU4VvX1Cg_yr-M9DRe3kNm+q1AG-1djUBEGgN84g@mail.gmail.com>" "55" "[oss-security] CVE Request: October CMS - Stored XSS in image caption tag" nil nil nil "7" "2015072115:05:49" "[oss-security] CVE Request: October CMS - Stored XSS in image caption tag" (number mark "U       jmabhishek4@ Jul 21   55/1667  " thread-indent "\"[oss-security] CVE Request: October CMS - Stored XSS in image caption tag\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32519 invoked by uid 550); 21 Jul 2015 15:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23661 invoked from network); 21 Jul 2015 15:06:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=WfFg5f7FYlU56lIEMxASwi+vCZzL9ailJubERXWypXo=;
        b=lbv+6zmgJaJmJVwROisQT87wseRYSpjgYCvME76fXA3pGy7hQyWLedQV6G8QG0PQ+f
         rDVJc9kGwCIeXp+N/MegZAMZXX/qLXAPGVc7Iv6+v7UzhDxEZVrzpMaCFr1xjvDWPnsd
         iIaGlW2rDmbN8HcCBPdOBFB/Ne4Y6Qq+aOF5NZJVRlkad5QKmbbHX6UH8w+J1XsZU/I6
         cis669d7/DVuzvYfghnJtPvZRuci9yGuAs7fD1spS6P7lsHgEAfhRufEdixu2E7mVldc
         E3aPcg/499b0Y11jea5VSWyyoNrZBozloWyFVtIZbf3BJPCIqxls/THz+n0vQL6vrf+e
         oNkQ==
MIME-Version: 1.0
X-Received: by 10.50.30.65 with SMTP id q1mr23569020igh.28.1437491149626; Tue,
 21 Jul 2015 08:05:49 -0700 (PDT)
Message-ID: <CABpk8vbGz+TU4VvX1Cg_yr-M9DRe3kNm+q1AG-1djUBEGgN84g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bb03c5a5765c5051b63fd7a
Date: Tue, 21 Jul 2015 20:35:49 +0530
From: "Abhishek J.M" <jmabhishek4@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: October CMS - Stored XSS in image caption tag
To: cve-assign@mitre.org, oss-security@lists.openwall.com

--047d7bb03c5a5765c5051b63fd7a
Content-Type: text/plain; charset=UTF-8

Hello ,

October CMS <https://github.com/octobercms> , an open-source , self-hosted
Content Management System built based on the Laravel PHP Framework has been
found to be vulnerable to Stored Cross-site Scripting attack.

*Scenario :*

When any *normal* user logs into the October CMS , he is given an option to
update his account , where there is an option to upload his profile
picture. On uploading , the user is given an option to give a caption to
the uploaded image. This tab has been found vulnerable to stored XSS.

*POC  :*

Type in :  '  *<svg onload=alert(document.cookie)>*' inside the caption tab
of the image and save it. Logout of the user account and login as an
administrator. Now, simply visit the user profile (of the normal user) and
the JavaScript will be executed.

*Reporting date*           :    21st July , 2015

*Exploit Author *           :    Abhishek J M

*Vendor  Homepage   *:     http://octobercms.com/

*Product  Link             : *    http://octobercms.com/download

*Version affected         :    *Possibly all the builds  i.e ,  < = Build
271  (Changelog
<https://github.com/octobercms/october/blob/master/CHANGELOG.md>)

*Tested on                    :  *  Linux:- Ubuntu, Debian, PHP - 5.5


This issue has been  reported  to the vendor of this product  :

https://github.com/octobercms/october/issues/1302

Is it possible to assign CVE identifier for this issue ?

Thank you

-- 

Abhishek J M
bi0s @ Amrita

Blog <http://revoextremer.wix.com/revo>   |    XDA
<http://forum.xda-developers.com/member.php?u=5723399>    |

--047d7bb03c5a5765c5051b63fd7a--
