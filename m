X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2561" "Friday" "7" "July" "2017" "14:26:53" "+0200" "Ailin Nemui" "ailin.nemui@gmail.com" "<1499430413.31897.1.camel@gmail.com>" "97" "[oss-security] Irssi 1.0.4: CVE-2017-10965, CVE-2017-10966." nil nil nil "7" "2017070712:26:53" "[oss-security] Irssi 1.0.4: CVE-2017-10965, CVE-2017-10966." (number mark "U       ailin.nemui@ Jul  7   97/2561  " thread-indent "\"[oss-security] Irssi 1.0.4: CVE-2017-10965, CVE-2017-10966.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13664 invoked by uid 550); 7 Jul 2017 12:30:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11357 invoked from network); 7 Jul 2017 12:27:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=90rI0XmtOpvfrHxwMozaDd+/VLVLdv07cvTsEzGA0sg=;
        b=ATP1CmQcuTqA1gOUX3I875fiLukechHnTwdUEz3HxIIwhEreVyOOk5nQeClzTFEO89
         uiTkzflkGpERSUCGaTmCJJ09oFnK75MzsXDhb0vQ737VCySQ0i3r0p07DKE+SkUXG8u1
         o+cB9IV5+7J3XLVMPbAo15TCiDmjk2iQtrg2OLlukN9Kozws2g6d5hZUSmTWTaUVjRRI
         vx9doT2qhVdgmmWBczmWpOD5bmTW+yQVX1AnjxJnhBEE9R09qZui1Fp5SNjkFQ31r+TJ
         IkosLogUh3ljFmMF8ce5qVFDQvD7lCCLu0hiD+p0UzD29ndm8Fn1UiO8MpHYL6BA5INX
         6mnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=90rI0XmtOpvfrHxwMozaDd+/VLVLdv07cvTsEzGA0sg=;
        b=MgQQNt78REcwwneO9PZuTidYuVAOLdh+azTTJjzefJu+m1fh/RiwmnTn+LkvMHXk9g
         VfVWBM0I8aH7hefao50OEj5Vn0CGcj/ve/+mYgvlZKF/CG515zL7lOaMawWU/7oClEBV
         I/7dR6fJlVK/z1/tGtAGgbWghVjsstTp3QuaLCGazcFAAadO5S87ToKB90+v4rQDAjT9
         61DbExli64EkvCh/nf5BHrpp6rOPfPIB4NjZ4ZQAZO7EdTFJ2dkNzmYigWnIoOpEdAh9
         5twOU/J4sH6tbecnhFc+OHkt8Pryb2kuCHqUc8yuUkDOGhFPtLc1iFHrtmyz7Vvyw3mA
         mLfA==
X-Gm-Message-State: AIVw113Ily8o2VfxJej3op1jvA6qF9tfh+3mT+0zZ0sLLwM49tz5qim9
	aHlNL1yf4WX8Ldme
X-Received: by 10.28.212.207 with SMTP id l198mr1984589wmg.23.1499430414939;
        Fri, 07 Jul 2017 05:26:54 -0700 (PDT)
Message-ID: <1499430413.31897.1.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Fri, 07 Jul 2017 14:26:53 +0200
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Irssi 1.0.4: CVE-2017-10965, CVE-2017-10966.

> Irssi 1.0.4 has been released. This release fixes two remote crash 
> issues in Irssi as well as a few bugs, correcting a mistake that was 
> introduced in 1.0.3 while parsing some time-related settings. There 
> are no new features. All Irssi users should upgrade to this version. 
> See the NEWS for details.
>
> Our bug reporter Brian ‘geeknik’ Carpenter writes:
>
> >    34 days after reading Fuzzing Irssi, my AFL instance was
> >    finally able to trigger a null pointer dereference in irssi 
> >    1.0.2. […] Hopefully this one isn’t fixed yet.
> >
> >    35 days after reading Fuzzing Irssi, my AFL instance triggered 
> >    a heap-use-after-free in irssi 1.0.2. Compiled on Debian 8 x64 
> >    following the instructions and patches of the referenced 
> >    article. (;
>
> For more information refer to the security advisory.
>
> Thanks, Brian!

IRSSI-SA-2017-07 Irssi Security Advisory [1]
============================================
CVE-2017-10965, CVE-2017-10966.

Description
-----------

Two vulnerabilities have been located in Irssi.

(a) When receiving messages with invalid time stamps, Irssi would try
    to dereference a NULL pointer. Found by Brian 'geeknik' Carpenter
    of Geeknik Labs. (CWE-690)

    CVE-2017-10965 [2] was assigned to this bug

(b) While updating the internal nick list, Irssi may incorrectly use
    the GHashTable interface and free the nick while updating it. This
    will then result in use-after-free conditions on each access of
    the hash table. Found by Brian 'geeknik' Carpenter of Geeknik
    Labs. (CWE-416 caused by CWE-227)

    CVE-2017-10966 [3] was assigned to this bug


Impact
------

(a) May result in denial of service (remote crash).

(b) Undefined behaviour.


Affected versions
-----------------

All Irssi versions that we observed.


Fixed in
--------

Irssi 1.0.4


Recommended action
------------------

Upgrade to Irssi 1.0.4. Irssi 1.0.4 is a maintenance release in the
1.0 series, without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect.


Mitigating facts
----------------

(a) requires control over the ircd

(b) should not happen with a conforming ircd


Patch
-----

https://github.com/irssi/irssi/commit/5e26325317c72a04c1610ad952974e206
384d291


References
----------

[1] https://irssi.org/security/irssi_sa_2017_07.txt
[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-10965
[3] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-10966
