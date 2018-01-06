X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1786" "Saturday" "6" "January" "2018" "15:13:38" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1515248018.2869.2.camel@gmail.com>" "79" "[oss-security] Irssi 1.0.6: CVE-2018-5206, CVE-2018-5205, CVE-2018-5208, CVE-2018-5207" nil nil nil "1" "2018010614:13:38" "[oss-security] Irssi 1.0.6: CVE-2018-5206, CVE-2018-5205, CVE-2018-5208, CVE-2018-5207" (number mark "U       ailin.nemui@ Jan  6   79/1786  " thread-indent "\"[oss-security] Irssi 1.0.6: CVE-2018-5206, CVE-2018-5205, CVE-2018-5208, CVE-2018-5207\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27943 invoked by uid 550); 6 Jan 2018 14:18:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18294 invoked from network); 6 Jan 2018 14:13:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=9kiNO+XVYHeh5897D9dQ8MaBKSHMmIZUpI5qYxs0E+0=;
        b=GhkMNIH2SzM3692hLfO3IwqB5Zt1NeJbRXpTs7DmVYYqR2hTAowoJ+r72F+6mYXt0Q
         v+f/81CrBgg/RmLaN2aft+NrNq+8WkO0qVa/YwrO1M1KkP2vRK5Qi6mwUocIkaGKNzk4
         0lqQaJgWL6hWDUx9gEoACuE4yBdtvqqZ5qx9L/W43A1yyJlXeNUFxnwcX6SKV1+54rIJ
         oo+80kQO58HWVS0wEfq+OxelvaiYy0rxrnsMo6Nwo/b9o3jX+Hz+VAYTHnpfmC2w9nBu
         NXoXLh7mvYu7OiV+QV0bprY1LfhmJUkNT7TpfHZ0EH9in2J6Y4KjTmFfPUjSQNxzOawc
         r43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=9kiNO+XVYHeh5897D9dQ8MaBKSHMmIZUpI5qYxs0E+0=;
        b=ngH/miAz0YLlXmsdv7afWqXofiM7N6Ojy1M0RvafKeEzxkOXK/itIMYNNUEPoTZSSf
         JNSlk7IytYczAUZ3aEYpMFORMzjCwLFfyOMLoAxwBV8hvKTwptff/rCInJFQ/I44mr+8
         sts4RPu+BmHuqimhYPKhm5s+ciTBl6lIRmn+7hRJdfWIGeOrx+u2EtBrq7xZ77cSjn7Y
         kRBAXLvcvZTq9x38DcWJi7QlzsweyRhuAv7l0Mk3CLtCNocviAHr7omMlQYAKdUHD9hy
         +vywzdTKj0Uc/HH5B/20ZwuNDaixF3hkXLcEb0FW1tAe7DSJnYcol2ehYwzCpzXXBwkE
         cddw==
X-Gm-Message-State: AKGB3mLeLCzloX4D4iJS3LtxEs8h84ueiQA+zPo6RetDs5Q0Xx0qI0ww
	6VirsaNpcHsvj7lo7JSiIdijew==
X-Google-Smtp-Source: ACJfBos9APlyF28A8g02BWmUHeof0bbgIHgmOS1DhOhLFURePHMxEO2MxMUmENQMXO6rdDNa/mOIkw==
X-Received: by 10.80.159.137 with SMTP id c9mr8842163edf.136.1515248020259;
        Sat, 06 Jan 2018 06:13:40 -0800 (PST)
Message-ID: <1515248018.2869.2.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Sat, 06 Jan 2018 15:13:38 +0100
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.3 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Irssi 1.0.6: CVE-2018-5206, CVE-2018-5205, CVE-2018-5208,
 CVE-2018-5207

IRSSI-SA-2018-01 Irssi Security Advisory [1]
============================================
CVE-2018-5206, CVE-2018-5205, CVE-2018-5208, CVE-2018-5207

Description
-----------

Multiple vulnerabilities have been located in Irssi.

(a) When the channel topic is set without specifying a sender, Irssi
    may dereference NULL pointer. Found by Joseph Bisch. (CWE-476)

    CVE-2018-5206 was assigned to this issue.

(b) When using incomplete escape codes, Irssi may access data beyond
    the end of the string. (CWE-126) Found by Joseph Bisch.

    CVE-2018-5205 was assigned to this issue.

(c) A calculation error in the completion code could cause a heap
    buffer overflow when completing certain strings. (CWE-126) Found
    by Joseph Bisch.

    CVE-2018-5208 was assigned to this issue.

(d) When using an incomplete variable argument, Irssi may access data
    beyond the end of the string. (CWE-126) Found by Joseph Bisch.

    CVE-2018-5207 was assigned to this issue.


Impact
------

May affect the stability of Irssi.


Affected versions
-----------------

(a,b,c,d) All Irssi versions that we observed.


Fixed in
--------

Irssi 1.0.6


Recommended action
------------------

Upgrade to Irssi 1.0.6. Irssi 1.0.6 is a maintenance release in the
1.0 series, without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect.


Mitigating facts
----------------

(a) requires a broken ircd or control over the ircd

(b,d) requires user to install malicious or broken files or enter
      affected commands


Patch
-----
https://github.com/irssi/irssi/releases/download/1.0.6/irssi-1.0.5_1.0.
6.diff


References
----------

[1] https://irssi.org/security/irssi_sa_2018_01.txt
