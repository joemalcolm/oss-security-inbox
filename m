X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1818" "Friday" "11" "December" "2015" "07:45:49" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNXyZaNwHaLa+XhB6Dvac1cy5EeVa+ce1aDRW4a5WGSJ6Q@mail.gmail.com>" "42" "[oss-security] CVE request: mail ruby gem <2.6.0 vulnerable to SMTP injection via recipient email addresses" nil nil nil "12" "2015121115:45:49" "[oss-security] CVE request: mail ruby gem <2.6.0 vulnerable to SMTP injection via recipient email addresses" (number mark "U       reed@reedlod Dec 11   42/1818  " thread-indent "\"[oss-security] CVE request: mail ruby gem <2.6.0 vulnerable to SMTP injection via recipient email addresses\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1403 invoked by uid 550); 11 Dec 2015 15:46:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1384 invoked from network); 11 Dec 2015 15:46:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=sCBw1eOGG86VELq7i0HpjmgplXHxgIm6cZJtyCYtQ78=;
        b=TqTL813auB9TkDa9aUHCdM03tM5uCKPQgzJwTcVW5jvGDHFhYz3SNQ/ppG/XlLPCRu
         7A92lHbVv0yoC8AXNjRiREf6m34G6e4k+QKmRZV5xCiBA8jXGYU30TlMXX4i08cN79XT
         2M4I25VP1zvjA08f4sQzovZZ0sdsLL4v3UCX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=sCBw1eOGG86VELq7i0HpjmgplXHxgIm6cZJtyCYtQ78=;
        b=IKZOhBVXE5dA0fN5upW0VxJdRSy1gPPWuxZoKlgn7/BC2HdK/viHXvrLqC7McOSjuX
         YqPDUIAlejeDWTSwoSM0HL7j3HjxYNzBMhOHf0Wa0pxwuWUylzxoRkpZBs4/W78rgf7k
         ublm6xj84Q/RM9FDqI2tBnAFIEh7t5JzZSE7OcPTi+mpLn9pG3WQix9WVtRStAWB4qBW
         bsBjt6mTQ7wrnM46/zHxYVWfaSzShojESEpKKTC+BiWq4OQFWxP0epkwd9QP6BlzoHP9
         oxD2u0qhRZ2WKZh9UaUJ3W9KemgtsI/sXSonBK0ouHjMpk01PiB/uHfRiPyYSZ9eZesD
         ACpw==
X-Gm-Message-State: ALoCoQmKtclIq0HzJIE9rEGp20Hz88OhjAyMNJdCMQQcZqAX0eAV4d9y6k7GEhpjjkseYXQH0IN2gSDyNfHe5G6S6xbphnbHAcFQWPYmkYaMO4qo8bMBhpE=
X-Received: by 10.129.132.203 with SMTP id u194mr9336518ywf.22.1449848769194;
 Fri, 11 Dec 2015 07:46:09 -0800 (PST)
MIME-Version: 1.0
From: Reed Loden <reed@reedloden.com>
Date: Fri, 11 Dec 2015 07:45:49 -0800
Message-ID: <CALPTtNXyZaNwHaLa+XhB6Dvac1cy5EeVa+ce1aDRW4a5WGSJ6Q@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a114f0b46dddd210526a13829
Subject: [oss-security] CVE request: mail ruby gem <2.6.0 vulnerable to SMTP injection via
 recipient email addresses

--001a114f0b46dddd210526a13829
Content-Type: text/plain; charset=UTF-8

Takeshi Terada (Mitsui Bussan Secure Directions, Inc.) released a
whitepaper entitled "SMTP Injection via recipient email addresses" (
http://www.mbsd.jp/Whitepaper/smtpi.pdf). This whitepaper has a section
discussing how one such vulnerability affected the 'mail' ruby gem (see
section 3.1).

Whitepaper has all the specific details, but basically the 'mail' ruby gem
module is prone to the recipient attack as it does not validate nor
sanitize given recipient addresses. Thus, the attacks described in chapter
2 of the whitepaper can be applied to the gem without any modification. The
'mail' ruby gem itself does not impose a length limit on email addresses,
so an attacker can send a long spam message via a recipient address unless
there is a limit on the application's side. This vulnerability affects only
the applications that lack input validation.

'mail' is a "A Really Ruby Mail Library" for Ruby.

Ruby gem: mail (https://rubygems.org/gems/mail)
Affects: 2.5.4 and earlier
Fixed in: 2.6.0
Fixed by
https://github.com/mikel/mail/commit/72befdc4dab3e6e288ce226a7da2aa474cf5be83

Can a CVE be assigned? Since the issue was fixed in 2013, not sure if that
means it needs a 2013 era CVE or if a 2015 one will work since it wasn't
found to be a vulnerability until this year.

Note, the paper author has informed me "BTW, while investigating the source
code of Mail, I came to think the fault might be more on Net::SMTP's side.
It is difficult to say who is responsible for it, Net::SMTP, Mail or
application developers (library users) though."

Either way, vuln needs to be tracked, and a change in 'mail' did mitigate
it for now (and affects all their delivery methods, not just 'smtp').

Thanks,
~reed

--001a114f0b46dddd210526a13829--
