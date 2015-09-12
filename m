X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1278" "Sunday" "13" "September" "2015" "02:14:29" "+0900" "mala" "mala@ma.la" "<CAD8wLziqkz9NrTOO+Pxo9YchDJa3BkNvcgMnkXm8fRt7jDF81Q@mail.gmail.com>" "39" "[oss-security] CVE request: Flash based XSS in FileAPI.flash.swf" nil nil nil "9" "2015091217:14:29" "[oss-security] CVE request: Flash based XSS in FileAPI.flash.swf" (number mark "        mala@ma.la   Sep 13   39/1278  " thread-indent "\"[oss-security] CVE request: Flash based XSS in FileAPI.flash.swf\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14107 invoked by uid 550); 12 Sep 2015 17:19:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11619 invoked from network); 12 Sep 2015 17:14:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=rCqAfeMoKGYsG0C7Gn8bQkHO0//Y6jqsVHtVBEh+gwU=;
        b=pzsMVl5pInt9iljlb2nXjr/JMoTwnGvqpI6zUrnmeLWK08uP+DDmyQhXszT3gbqFdQ
         qeN6n0XQ4EQMwjXpCxc9Z7sabU2FbOxZYrwDqpMbwN3PKnaJkA4IgLPo626vDle5TIcC
         wQQgfskpyNuI4EM6A5KqwFSyAZSL72nujWa+Vs7CwbPHh7VoRdgsbyvVbCGG1mic1u3p
         zUGmeMSf/0f2kiTNWEXfIBJm9/dL2BFPH97j8S0OJGtnbXAbSqm2NiIJJj9zGNi2gK3I
         6A26A+GO1EhFrRuMC6AVmBWJ0ZxUNUmni9BPY0Fi7W77TYWqZao4xYM8tt6Yx0rxNiLN
         mwIA==
MIME-Version: 1.0
X-Received: by 10.60.58.4 with SMTP id m4mr4184866oeq.74.1442078069412; Sat,
 12 Sep 2015 10:14:29 -0700 (PDT)
X-Google-Sender-Auth: _naF5ZaQkzvzlhdsWzTqp0zy2Lo
Message-ID: <CAD8wLziqkz9NrTOO+Pxo9YchDJa3BkNvcgMnkXm8fRt7jDF81Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sun, 13 Sep 2015 02:14:29 +0900
From: mala <mala@ma.la>
Reply-To: oss-security@lists.openwall.com
Sender: bulkneets@gmail.com
Subject: [oss-security] CVE request: Flash based XSS in FileAPI.flash.swf
To: oss-security@lists.openwall.com

Hello,

Please assign a CVE ID to this.

FileAPI https://github.com/mailru/FileAPI
- fixed in 2.0.15 https://github.com/mailru/FileAPI/releases/tag/2.0.15
- https://github.com/mailru/FileAPI/pull/342

summary:
Cross-site scripting (XSS) vulnerability in FileAPI.flash.swf related
to the "ExternalInterface.call" function.
Arbitrary javascript code execution is possible on the domain hosting swf file.

This is similar to http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-8992
https://github.com/mailru/FileAPI/pull/228

but another attack vector.
Probably, all older versions are affected by XSS.
At least mailru/FileAPI version 1.1.0 contains vulnerable code.

references:

major library that include FileAPI.flash.swf

jquery.fileapi https://github.com/RubaXa/jquery.fileapi
- fixed in 0.4.11 https://github.com/RubaXa/jquery.fileapi/releases/tag/0.4.11

ng-file-upload https://github.com/danialfarid/ng-file-upload
- fixed in 7.1.0
https://github.com/danialfarid/ng-file-upload/releases/tag/7.1.0
- https://github.com/danialfarid/ng-file-upload/issues/997

and CMS/Web framework that uses jquery.fileapi, ng-file-upload

https://github.com/search?l=json&q=jquery.fileapi&ref=searchresults&type=Code
https://github.com/search?l=json&q=ng-file-upload&type=Code

--
ma.la
