X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["998" "Tuesday" "31" "January" "2017" "11:59:11" "-0500" "Max Veytsman" "max@appcanary.com" "<CAGW7fdsN9uyoMX7YtLn1=9k+LtYN12cQOnRpvz6DEMbatiR=Gw@mail.gmail.com>" "39" "[oss-security] CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r" nil nil nil "1" "2017013116:59:11" "[oss-security] CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r" (number mark "U       max@appcanar Jan 31   39/998   " thread-indent "\"[oss-security] CVE requests: code injection in rubygem espeak-ruby and code injection in rubygem festivaltts4r\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5133 invoked by uid 550); 31 Jan 2017 17:11:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32162 invoked from network); 31 Jan 2017 16:59:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=appcanary.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=xvr35ZOB8U6AJ0fadTo/zlcw90LZhoDckI00dfEyz24=;
        b=pdR8lW7lQzEukePr+ul3JQn2eMW0mvf65HlAZWwe62IbN233JV25jXG9XiRV+cLe2P
         SlUrrH/AFqiv0XO7pXvlpBJgQC+RKqDmdHFwOxHvVS/dt7VQqp2JkOjfs8K9LMTNfsd7
         028gytiIScNODxMGzqoRwpveoDcCO87xEP8acw586OZ+tZ6nYQxJ9SVc/ODTph0UEfBk
         YnPqSI7hxAIhfbwCCwVjY0JWuj8jusn/S2tIqHyArAVgKyaqMcJrFQ3hV11l7arNOy1/
         uuddAq52OPY1T+BW6YpQn+vpzPpoBXrlKBB96dKf00dr/4bA6naPz8CgHJ7O5tpUpcQ5
         3M4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xvr35ZOB8U6AJ0fadTo/zlcw90LZhoDckI00dfEyz24=;
        b=llN0dPJPECLq80kS2fng+TsPZvBABSQc7EDELeJoduSbLnla33amVdY1KABCVcnJn7
         MLhXAoeiJVnHW9q3Rsm2Hi/FuioEs2DkyfnAtecheSDPjwVF08DW2G+hmbp+/VVjW/5u
         FRYqWE3tVuJXNWfN8QaswqaW3rezCBoiIbUYWTeTzPslEUFsZA/lAoNWuKlZaSVgJfvM
         Dx14ggvxdM2FDG17AvIlVRIwpNgDb1OLIT49SJrUHUv0KAe253lImSSJBurWzDkhMA+L
         9emBuBMNbL0CeLUmCw3KDxYMADjo+0isXSl2OWGkI+g7w3q3JXHbKZ2F0rnGz7queq0b
         WRyA==
X-Gm-Message-State: AIkVDXJUsg/BbW0hHfSlENXwzkUbqheG3U/zgopRAnfdXfLAjhqSiq1pRrXj6s6zOVGGwadsHmeiIuli9u0n4g==
X-Received: by 10.55.153.130 with SMTP id b124mr27122364qke.82.1485881971901;
 Tue, 31 Jan 2017 08:59:31 -0800 (PST)
MIME-Version: 1.0
From: Max Veytsman <max@appcanary.com>
Date: Tue, 31 Jan 2017 11:59:11 -0500
Message-ID: <CAGW7fdsN9uyoMX7YtLn1=9k+LtYN12cQOnRpvz6DEMbatiR=Gw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c07b19c1d1f9d054766db95
Subject: [oss-security] CVE requests: code injection in rubygem espeak-ruby and code
 injection in rubygem festivaltts4r

--94eb2c07b19c1d1f9d054766db95
Content-Type: text/plain; charset=UTF-8

Two similar vulnerabilities in ruby text-to-speech libraries.

1) espeak-ruby

Rubygem espeak-ruby passes user modifiable strings directly to a shell
command.

An attacker can execute malicious commands by modifying the strings that
are passed as arguments to the speak, save, bytes and bytes_wav methods in
the lib/espeak/speech.rb.

https://github.com/dejan/espeak-ruby/issues/7

Patched in 1.0.3
https://github.com/spejman/festivaltts4r/issues/1

2) festivaltts4r

Rubygem festivaltts4r passes user modifiable strings directly to a shell
command.

An attacker can execute malicious commands by modifying the strings that
are passed as arguments to the to_speech and and to_mp3 methods in
lib/festivaltts4r/festival4r.rb.

https://github.com/spejman/festivaltts4r/issues/1

No patch
Credit: Brendan Coles

--
Max Veytsman
Co-founder appcanary.com
@mveytsman <https://twitter.com/mveytsman>

--94eb2c07b19c1d1f9d054766db95--
