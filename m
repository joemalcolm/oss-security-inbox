X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["383" "Thursday" "30" "July" "2015" "13:16:38" "+0200" "Fourny Dimitri" "fourny.d@gmail.com" "<CAOdP2ADNoNVvdXfGDbAPyqscpjDe=OGQQM-AO9fsr0pBUF8eAw@mail.gmail.com>" "13" "[oss-security] CVE Request: PHP v7 - Code execution vulnerability" nil nil nil "7" "2015073011:16:38" "[oss-security] CVE Request: PHP v7 - Code execution vulnerability" (number mark "        fourny.d@gma Jul 30   13/383   " thread-indent "\"[oss-security] CVE Request: PHP v7 - Code execution vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11932 invoked by uid 550); 30 Jul 2015 12:35:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7696 invoked from network); 30 Jul 2015 11:16:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=G9bCxgAyg0QYAdTVDAuH27aAkmPD88RL5svjhe+pFXA=;
        b=hh0bzwAnsPMjcEf4i5kiSXNmnj2ns4chT8C+oGe80v3EaHqk2kQQGxLRNTwJx6PXde
         6U/1FctOxvLLckJQjKPNTm+8HJhV6tPISi0OHgF9dhcykoJtCA2PEAO9My7Tur5HOubS
         KZD+lpb6ornAw94stNO2X3wZdsGiQbYvRpIHg9XbI60xGtwQTTTv46y4pCK4LIdQHvto
         kmR5dMkj7Bh8zWFOoJ5EhDxNVl1iEwvXWXkQpaJ+q2k/ddfKapziqGddQ2Up0x8nrR/v
         ptZYUBsI4Qx5QYlLISYfWlIZ+fEAr+6GSSvUPtpKEM/lVzHhF5ArQt4EwzvEtD41wcHg
         DSmA==
MIME-Version: 1.0
X-Received: by 10.140.232.200 with SMTP id d191mr4651800qhc.87.1438254998044;
 Thu, 30 Jul 2015 04:16:38 -0700 (PDT)
Message-ID: <CAOdP2ADNoNVvdXfGDbAPyqscpjDe=OGQQM-AO9fsr0pBUF8eAw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 30 Jul 2015 13:16:38 +0200
From: Fourny Dimitri <fourny.d@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PHP v7 - Code execution vulnerability
To: oss-security@lists.openwall.com

Hello,

An arbitrary code execution is possible in the function str_ireplace()
with PHP 7.
The vulnerability is in the function php_string_tolower().

Patch: http://git.php.net/?p=php-src.git;a=commit;h=6aeee47b2cd47915ccfa3b41433a3f57aea24dd5

Report: https://bugs.php.net/bug.php?id=70140

Could you please assign a CVE for this vulnerability? Thank you.

Regards, Dimitri Fourny.
