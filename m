X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2233" "Monday" "1" "August" "2016" "23:27:23" "+0100" "Dario Bertini" "berdario@gmail.com" "<CAFdyfB2D-63JUZbO_tU8sx2_pbS1e30cBemu81PNKABufdogpg@mail.gmail.com>" "51" "[oss-security] CVE Request: CSRF in Grails console" nil nil nil "8" "2016080122:27:23" "[oss-security] CVE Request: CSRF in Grails console" (number mark "U       berdario@gma Aug  1   51/2233  " thread-indent "\"[oss-security] CVE Request: CSRF in Grails console\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9822 invoked by uid 550); 2 Aug 2016 01:14:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23631 invoked from network); 1 Aug 2016 22:27:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=LdQGAZJjSYFXUAngFfqbgvEMm+uhCXGjtQt9r3ys6zg=;
        b=z6vvSFzBjxF36GJzSbqwaVDNZo4rao3v7d0SJVZl6Tb8yDIonM1NGWYFEB266k+2tD
         LmdV+bxk/DdOK6+F6+/FCw2yRGrKFD0pVSnfYy6Q0yjktMAzqF9oEVfw2Ud9UYpg7nWF
         0Ih0Dcz5XwLpoQz+qL0RACFyZIAz5iiEAM1nxtTfXJworBLS2mdV+qscyr4AaRXAni2F
         7gS0Wgx9EZnL9uJUT1AOTvpDihTdyOlHRlN3lAUuc2nbwHkJGYlstwHhbBe6gCRmEWJh
         NxC33sIe/NOYFkp1WchpoHfR3FHHEUIFFTExe9OFZgL/oLnr+4R71rBlzj1s5M+RWXRm
         K0cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LdQGAZJjSYFXUAngFfqbgvEMm+uhCXGjtQt9r3ys6zg=;
        b=Z/lXvxkaID1RvBOejwJHZd/Y5ZbynLXLx5KqOgg4DYCK5vs783JIiDpBGCPNXWq488
         gmysNxigquofP0BwdNx7Ryku1Uo2nPO6GumZVKGC9VttmuLgqrta6XeNpUlx8F/+Zomv
         klM2YNAjYQeP/+aUwW9BwAGq5D8fwa59YgSFzxVDTefTYIH7UmVu4Lhwc4Az+dcg9Me2
         9u9tw3E9XpA9fCcVohBDPxJJdPSMAMohr1QZ+xHWiOsHP7sz1y5FeOdhgrYxDycJidix
         kNoQVwWE71j29SS1ocZV60Dq2+MR8M0kUGb66F7KkbUFdv0Etb5U6Cdz7AL2PT60LjZC
         iN6w==
X-Gm-Message-State: AEkoous7EM4wAjwYoy922Q92Jjq76cyqy6sQTHXAW/5AeHgD76zsFKNGlmPJcGmFVn8oz/SDYgcDEcDjykZvDQ==
X-Received: by 10.31.165.80 with SMTP id o77mr27685171vke.9.1470090444123;
 Mon, 01 Aug 2016 15:27:24 -0700 (PDT)
MIME-Version: 1.0
From: Dario Bertini <berdario@gmail.com>
Date: Mon, 1 Aug 2016 23:27:23 +0100
Message-ID: <CAFdyfB2D-63JUZbO_tU8sx2_pbS1e30cBemu81PNKABufdogpg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: CSRF in Grails console

The Grails console (aka Grails Debug Console, Grails Web Console) was
vulnerable to CSRF.

https://grails.org/plugin/console
https://github.com/sheehan/grails-console

(this is the plugin, not to be confused with the command line grails
console: http://docs.grails.org/3.1.1/ref/Command%20Line/console.html
)

The fix has been made available in versions 1.5.10, 2.0.7. Versions up
to 1.5.9 and 2.0.6 are affected.

This allows an attacker to (create pages that when visited by a victim
will) forge requests that will execute arbitrary groovy code on the
backend (the documentation explains how to enable it in production,
and granting access to administrators only, so this is not simply a
development tool).

Bug tracker: https://github.com/sheehan/grails-console/issues/54
fix commit: https://github.com/sheehan/grails-console/commit/155e0f5f0fe3b3bd7027d730fa00bf0655f28207

Could you allocate a CVE id for this?

Thank you

On a more general note to Grails programmers, Caveat Auditor:

Unfortunately the Grails framework itself ships with some horribly
insecure defaults. As of 3.1.9 the template code dropped by `grails
create-app` will have a UrlMappings.groovy that will allow access to
Grails controllers actions via any HTTP method. CSRF protection is
also not enabled by default, and there's no documentation on how to
enable it globally. Some deprecated builtin modules in widespread but
old Grails versions (i.e. formRemote) also make it impossible to add
csrf protection to the associated endpoints.

On the bright side, Grails 3.1 added explicit rest mappings:
http://docs.grails.org/latest/guide/theWebLayer.html#restfulMappings

which makes it clearer which methods are allowed for every action, and
harder to forget about it. Compare to allowedMethods
http://docs.grails.org/latest/ref/Controllers/allowedMethods.html
which can be distant tens/hundreds line of code from the actual
controller-action they are protecting, and moreover can be easily
forgotten in a new file, also because they aren't added by default
when creating a controller with `grails create-controller`

It's thus likely that you might find more csrf vulnerabilities in
other open source plugins, as well as in your closed source
applications.
