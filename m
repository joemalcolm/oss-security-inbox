X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1305" "Thursday" "15" "September" "2016" "16:51:26" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8k=G2OFp+9v53Lno-UATnXdG563oN3-JkGhxDGoFSuNPw@mail.gmail.com>" "30" "[oss-security] Does a documentation bug elevate to CVE status?" "^Date:" nil nil "9" "2016091520:51:26" "[oss-security] Does a documentation bug elevate to CVE status?" (number mark "        noloader@gma Sep 15   30/1305  " thread-indent "\"[oss-security] Does a documentation bug elevate to CVE status?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5349 invoked by uid 550); 15 Sep 2016 21:12:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29753 invoked from network); 15 Sep 2016 20:51:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=3QJAq1881F7x8rp6Y8je8fB23068lNShqeGuR0pPYN0=;
        b=osc2VWQuXGb9kJiACxLalrc+HXfvbiH8U2Y4DmxrBX1iWYoC9IaNZR1UndCnlyxiJt
         13kAnHTfRES4t0C9dx49gcINBviZZ1B7sy0+Tyl5eaeMEKoV2h8b5VoHUWaUpXCg0gps
         Ad3QNNAurZ7CQCsoAIzzboFVce0svXsIkQZS5hR7KME+kDT4tb9o09oLRvvSF4lX4FMI
         0ppbF0fXPKI3w1ezh0hNytexUON1EohiDKGQ8NtHT8UOQWBsygejbrgIMsVe7dQYAp2G
         x//6hDC/sCQxG3RlqPfmdyS9zbbh0KSTP4A6OBl5trziLFN+VvTjEDs0TRA1X2wNJs4m
         P7PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=3QJAq1881F7x8rp6Y8je8fB23068lNShqeGuR0pPYN0=;
        b=FMeVL5Pb81pG8qBUCfZzjkSVtnWVpUEdZVPw8EbehQK7vqdsu6cVF8yg8l8yxEq5B5
         qz6Jdd9e3bhOnvKFVmmfymGwMOrYbrhhOmtadqO9SwlQj3TeOG1QNM98F7VUm6sUjkn5
         shN70vCQDa/hDyFP6A2iFQGMB7wZv1md0SCR2w+3AEXaY6EWodbGm7dy5pNzvbh2CUuc
         8mGAD92gXsBF7mKSwb/WYXMksXwqm5s5D9feogS649WasWfEgsZ8b8vGHX1LC9cUF8Kx
         icMtrRS4uJaFjY/rQleHS6rrp5CLcA6sifD3VLunamVz9wh7NLXyp/RIaC0UfK6TqXtU
         n8Fw==
X-Gm-Message-State: AE9vXwOINCVLkJ2A12ucDzTtdoachWLks2EmwPgjxKlqlySrSSWUBzFW998tn7LldyZM3ltgTicLekD4//hnsg==
X-Received: by 10.107.156.129 with SMTP id f123mr18726549ioe.112.1473972686435;
 Thu, 15 Sep 2016 13:51:26 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH8yC8k=G2OFp+9v53Lno-UATnXdG563oN3-JkGhxDGoFSuNPw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 15 Sep 2016 16:51:26 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Does a documentation bug elevate to CVE status?
To: oss-security@lists.openwall.com

Hi Everyone,

Please forgive my ignorance and hair splitting. We were talking with
the Debian Security Team and FW alerted us to a gap in our
documentation. The gap is simple: we handle sensitive information and
did not tell users that they must define -DNDEBUG when using alternate
build systems, like Autotools or CMake. The project's supported build
system, [GNU] Make, adds the define.

The higher level concern is assert is a debugging and diagnostic aide
that eventually raises a SIGABRT. We use them for debugging and
diagnostics for development. During production, the assert is expected
to be removed with NDEBUG and a C++ throw() follows.

If the assert is _not_ removed, then machinery could engage that
egresses the sensitive information to the file system (core files and
the like). On some platforms, like Ubuntu with Apport, Apple with
CrashReporter, and Windows with Windows Error Reporting, the sensitive
information is egressed to a third party (multiple; the platform
provider and the developer).

We know entities like Apple, Google, Microsoft and  app developers
receive the information; see for example, the comment at
https://github.com/weidai11/cryptopp/pull/172#issuecomment-218705068.

So my question is, does a documentation bug elevate to CVE status?

Thanks in advance,

Jeff
