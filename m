X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1372" "Friday" "31" "July" "2015" "23:45:38" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVxah-sXXi=JZdDrDJw8y8NvjdAu=d0g92qhgc-vb97RQ@mail.gmail.com>" "39" "[oss-security] CVE request: Multiple XSS and CSRF vulnerabilities in sidekiq ruby gem" nil nil nil "7" "2015080106:45:38" "[oss-security] CVE request: Multiple XSS and CSRF vulnerabilities in sidekiq ruby gem" (number mark "        reed@reedlod Jul 31   39/1372  " thread-indent "\"[oss-security] CVE request: Multiple XSS and CSRF vulnerabilities in sidekiq ruby gem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26202 invoked by uid 550); 1 Aug 2015 06:46:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26181 invoked from network); 1 Aug 2015 06:46:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=AK+9Z3VD5hIEPrAuJl6qPxTNlhTYnrJnBeCa3oNLU/c=;
        b=PjkxuQvwnU27vISjdzFaLMmGdnGoPoFVky9uuQaaNuGtiLNOS6YjRsRcNkvQBw4uGQ
         DZTCiKmpeCKCwxbf+U+KCpdCjrvt7ZxpeZfRe78vQz6TKn1H76sKxbOhZUsKvXQytSYR
         FmwoV5AYo0P09uQLssob2fYJbUcSowo5CAvco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=AK+9Z3VD5hIEPrAuJl6qPxTNlhTYnrJnBeCa3oNLU/c=;
        b=eqokg5RS4oqeZFw0lJJ7p8YQrY/LOUANvjw7xIfHHe4FUKX31lF3X27BdY2ySr1A56
         3F/P6NSZnob97tja4LfkIyka0PQUlhZKz+EmsBFyeSFmS1qTfYfuuWhPdyI0aHDDbg6V
         s7u+uqwF1TS1CNJxLYgGToasPRrZZZ8mksntJ+oOC5WCLGmZXHYC3+Wp+NgKrS+dvUJ1
         fXr44z0wU2l8KJ6ejeKdAbSVGRy2os4SYrT1Wl0TeZ5POIChKFEtotKnFu+h3jPbcg2W
         XlDn+h3EMUOj5ea97sDwgouJmqIS56UHBvAUYiqCafXAQtZXcEKlck0WLnz+512cQeyd
         G0AA==
X-Gm-Message-State: ALoCoQmKjMmKUWN4T9HBQrhLOgEqQoVZEdQ8peGB/0vI/LKIgZfugJlsNlw3FPEmKiFuaQmiWBwg
X-Received: by 10.50.126.42 with SMTP id mv10mr11467163igb.66.1438411557895;
 Fri, 31 Jul 2015 23:45:57 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNVxah-sXXi=JZdDrDJw8y8NvjdAu=d0g92qhgc-vb97RQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b2e1219f31d6b051c3a493b
Date: Fri, 31 Jul 2015 23:45:38 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Multiple XSS and CSRF vulnerabilities in sidekiq ruby gem
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--047d7b2e1219f31d6b051c3a493b
Content-Type: text/plain; charset=UTF-8

Sidekiq is "Simple, efficient background processing for Ruby" (a gem)
* http://sidekiq.org
* https://github.com/mperham/sidekiq/
* https://rubygems.org/gems/sidekiq

Was going through Sidekiq's changelog and its commits, and I came across
several security issues that lack CVEs.

XSS via queue name in Sidekiq::Web
* Reported via https://github.com/mperham/sidekiq/issues/2330
* Fixed by
https://github.com/mperham/sidekiq/commit/2178d66b6686fbf4430223c34c184a64c9906828
* Fix released in sidekiq 3.4.0

XSS via job arguments display class in Sidekiq::Web
* Reported via https://github.com/mperham/sidekiq/pull/2309
* Fixed by
https://github.com/mperham/sidekiq/commit/54766f336620ca0ce3b0b87a7a56382496e64b61
* Fix released in sidekiq 3.4.0

Sidekiq::Web lacks CSRF protection
* Reported via https://github.com/mperham/sidekiq/pull/2422
* Fixed by
https://github.com/mperham/sidekiq/commit/cf3c43b2410c4573e05ac119494e41115f4140ad
* Fix released in sidekiq 3.4.2
* Follow-up fix in
https://github.com/mperham/sidekiq/commit/75a3524c919857aac16e0541b0cb107f48d00694
to enable sessions in Sinatra, plus mention of a possible monkey patch
needed to make Rails work correctly (neither change is in a release yet).

Can CVEs be assigned for these issues?

Thanks,
~reed

--047d7b2e1219f31d6b051c3a493b--
