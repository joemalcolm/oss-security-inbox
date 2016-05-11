X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1053" "Wednesday" "11" "May" "2016" "16:28:57" "-0300" "Oliveira Lima" "oliveiralimajr@gmail.com" "<CAGDGa53U+Nq3nZv-u7azf--UuHdex0PmXB6tmaRct81scV5y7Q@mail.gmail.com>" "42" "[oss-security] Request CVE ID for Simple Photo Gallery 1.8.0 - Stored XSS" nil nil nil "5" "2016051119:28:57" "[oss-security] Request CVE ID for Simple Photo Gallery 1.8.0 - Stored XSS" (number mark "U       oliveiralima May 11   42/1053  " thread-indent "\"[oss-security] Request CVE ID for Simple Photo Gallery 1.8.0 - Stored XSS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21820 invoked by uid 550); 11 May 2016 19:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5177 invoked from network); 11 May 2016 19:29:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=k1xDO1AwciS6pyBXc3tJfE7kbcs28BJN2uSdlFJxwa4=;
        b=IPCYWxHewjOVOCpoiR4ZdqM83tuC+AH415Z7ukkbNH1QrtqmdIA6YYdEgGnQja7m1R
         rYdFJITdNHg9Wss5pEQ7jvzUa0iYDpxgRrPZclyb4GfKMKIMSQYUoY/7OklOi5Ca6KFb
         pCy9v+alFd82/Vvz/LC0/eJ6gaGZ882kLn9SQokKBKeYgliYA6cvibF7emV+eX1qhKTt
         872fHq2dUB5Doi0gMIzaT91UE1fAhhf6ZDA8Qt50UhVVSSldxMgL2BGGHbFNcSEkn8U6
         5TU3dkbE/pcdFJiqlyxh6YwRHKjWfu9lJQ/shdNu/6I8IS9w1XujBR0jGPs6Cv92jDga
         0qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=k1xDO1AwciS6pyBXc3tJfE7kbcs28BJN2uSdlFJxwa4=;
        b=l1KzryNwFl7v1iepOCZ5GJgVP74SoBWjxppWKyfYjH1d0/wdsl8/yOKpYEvM2axtAr
         NrlwjEGYErixmndtqrbpzsd6VFv4wZboEuqG4r/+6c5n1U0/vdqRnnUmnGD3v3o7HstL
         Wn0LqNRvDej2eWD1bqVsOwOlSQNtFVYnxJpCebHyK5JPIxUZ8+uwLyF/LsYRdgB0n9ev
         qxEHmKsOSmoLiHbse9dWriPYpKlHOyGw3p+keMmIp4ykQl/ksCB0hVFwwki5N2a13nI7
         z4E2UakxD4EHU6lOmzoi+bx1MoCn6P+qd1LiKdfp+OOGe0LqfFRu381hKUGzHvstEGrC
         sSBw==
X-Gm-Message-State: AOPr4FWq6dwLlPNzr7qxQopN79XOYVKV/76QKfwnOqK8fDsVd+okbxiivGlt0MjLSyjl8eJ69huIXFKb82nKUQ==
MIME-Version: 1.0
X-Received: by 10.176.4.69 with SMTP id 63mr2336380uav.32.1462994937310; Wed,
 11 May 2016 12:28:57 -0700 (PDT)
Date: Wed, 11 May 2016 16:28:57 -0300
Message-ID: <CAGDGa53U+Nq3nZv-u7azf--UuHdex0PmXB6tmaRct81scV5y7Q@mail.gmail.com>
From: Oliveira Lima <oliveiralimajr@gmail.com>
To: cve-assign@mitre.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c000e6c8c17a90532960df6
Subject: [oss-security] Request CVE ID for Simple Photo Gallery 1.8.0 - Stored XSS

--94eb2c000e6c8c17a90532960df6
Content-Type: text/plain; charset=UTF-8

request CVE ID for Simple Photo Gallery <= 1.8.0 - Stored Cross-Site
Scripting (XSS)

Description
***********************

The plugin allows the execution of malicious codes on name input of the
gallery and album.

Proof of Concept URL
***************************

http://www.rootlabs.com.br/xss-simple-photo-gallery/

Report Timeline
************************
26-April-2016- Reported
27-April-2016- Vendor Response
27 -April-2016- Vendor Fixed
28-April-2016- Public disclosed

Vendo Reference
*****************
https://br.wordpress.org/plugins/simple-photo-gallery/changelog/

References
*****************

<https://br.wordpress.org/plugins/simple-photo-gallery/changelog/>
http://www.rootlabs.com.br/xss-simple-photo-gallery/
https://www.owasp.org/index.php/Cross-site_Scripting_(XSS)

-- 
Oliveira Lima Jr
rootlabs.com.br
Linkedin <http://br.linkedin.com/pub/oliveira-lima-junior/2b/48/285/>
@oliveiralimajr <https://twitter.com/oliveiralimajr>

--94eb2c000e6c8c17a90532960df6--
