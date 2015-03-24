X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1133" "Monday" "23" "March" "2015" "21:33:04" "-0700" "Andy Brody" "andy@abrody.com" "<CAFzB4CM_vrER8GQ5kkpvEO_AiasTyJR3YTqBPzPHPwMP_QadEg@mail.gmail.com>" "27" "[oss-security] CVE-2015-1820: ruby rest-client session fixation vulnerability" nil nil nil "3" "2015032404:33:04" "[oss-security] CVE-2015-1820: ruby rest-client session fixation vulnerability" (number mark "        andy@abrody. Mar 23   27/1133  " thread-indent "\"[oss-security] CVE-2015-1820: ruby rest-client session fixation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13605 invoked by uid 550); 24 Mar 2015 04:42:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29815 invoked from network); 24 Mar 2015 04:33:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=abrody.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=2/QBT5CzbV69fYO8b+XmDyZW4LZgnfGyGodKObe3huE=;
        b=g9Lz5lgBF0KyTOUOQDXS4A7lBc4KxP1cBYzaLbsnyCA4IhV57YIcNhMppCYOsfiPoC
         GcOOSdWsrTEEdvGeYC33Zd0zaehP1BR0aBM15mGD8vYT3u0Nn2aExhfZnnEJLwOUHtJ4
         mgmUUE+B/GAeydQTAGk7Kc4h/lKiRREcN4Vfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=2/QBT5CzbV69fYO8b+XmDyZW4LZgnfGyGodKObe3huE=;
        b=Jl/8wDqO1lbgRLfvT2mgcyzW04A6VxIo4yoPKc+1s8wekPRnpKr6vjqDOTZEYn2qux
         0gdTLK7ktvMGVU+FYOqL9/l+w+jRnmysoW5205aIlKp/FKdugOh9Vw1IwJBS/Bw1r/dE
         aBbM5YKcE/zDJDc6Gactzzp7/aT5ElQiv5UfL1nWWKlh/Em0/y6pczV/I8qiDLxxP05s
         Day7fT9lNMZ2ThcxYH0LZT4n5Z67chqprl01ltBH0+3QpLfOoY4poNS50EZn5vusYDST
         VYoSkQ3UO6nScRblySppmawaEsqd9XXDaOw4ump119nJmGspRUfcN+6gK0udGjeGH/DZ
         QHtg==
X-Gm-Message-State: ALoCoQn93ZDTfaokQmnCG/DoVGKXuG1RYoo6c8yA3phwsfBqniFUJC2WgFg2OY2qZA27QSgEMwbp
X-Received: by 10.112.154.163 with SMTP id vp3mr1921711lbb.93.1427171604642;
 Mon, 23 Mar 2015 21:33:24 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAFzB4CM_vrER8GQ5kkpvEO_AiasTyJR3YTqBPzPHPwMP_QadEg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 23 Mar 2015 21:33:04 -0700
From: Andy Brody <andy@abrody.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1820: ruby rest-client session fixation vulnerability
To: oss-security@lists.openwall.com

Following the very similar vulnerability in python-requests
(CVE-2015-2296), the rest-client team discovered a vulnerability which
has now been fixed in rest-client 1.8.0.
https://rubygems.org/gems/rest-client/versions/1.8.0
https://github.com/rest-client/rest-client/issues/369

The problematic behavior was introduced in rest-client 1.6.1: any
Set-Cookie headers present in an HTTP 30x redirection response are
blindly sent to the redirection target, regardless of domain, path,
expiration, or secure cookie settings. All subsequent 1.6.x and 1.7.x
releases are affected.

Similarly to the issue with python-requests, the issue could be
exploited in the following ways:

- If you are the redirection source (i.e. you can make rest-client hit
your URL), you can make rest-client perform a request to any
third-party domain with cookies of your choosing. This may be useful
in performing a session fixation attack.
- If you are the redirection target (i.e. you can make a third-party
site redirect to your URL), you can steal any cookies set by the
third-party redirection.

This issue has been assigned CVE-2015-1820.

Cheers,
Andy
