X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1362" "Tuesday" "6" "June" "2017" "23:31:56" "+0200" "Ailin Nemui" "ailin.nemui@gmail.com" "<1496784716.2351.0.camel@gmail.com>" "67" "[oss-security] FYI: Irssi Security Advisory 2017/06" nil nil nil "6" "2017060621:31:56" "[oss-security] FYI: Irssi Security Advisory 2017/06" (number mark "U       ailin.nemui@ Jun  6   67/1362  " thread-indent "\"[oss-security] FYI: Irssi Security Advisory 2017/06\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17411 invoked by uid 550); 6 Jun 2017 21:57:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25722 invoked from network); 6 Jun 2017 21:32:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=feoVmKz1eTz0cldKa/BrgJfCa5b8pS4KIs3jb9WEwW0=;
        b=WifVvID/vBOUWd8mjFJ/rnJMn70Mzm0lEOcJoYb1tthGDx2f1525axwBiTqzvB+3KN
         gPMf4vxsYCBdjr34AGpXYsy2b3Y/YprtsS6/2iCebHNf1Z9ZbaOlfCvsGMbwwTqPjOxf
         9FpkbznrAYv+5txg94ObLKAAA5XWQb2ojdazDdS9kBxM1dzu+dPVwhekmf9sHXHHZMe4
         7/4iZXKLsAoTNUFYn3RZhVGeQ3ES4KoTbNiqLj1TJxSEWhtA6WFdbeD/F0WF/KiYr34n
         3QbDJ69PSnUlVfp9sCNK3Dn3T0Lx/3uEHZUi1ZPoePnOTE5tCx2rbf0naGZKlhBZEO8E
         eTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=feoVmKz1eTz0cldKa/BrgJfCa5b8pS4KIs3jb9WEwW0=;
        b=EEB5mFEcEfTnQRHUE7W/8iJ0RbgnNGgTrGlQjZqXgD5Q8a5zyjW0MtjwNCcqZbqDPv
         99MlbNsh8Cnj6B3zJKjpwFLuj4KkGVrl69jZpSsLs+eXNgMYH92Jyfr/1QCA7B29/mn/
         wC7r2togNAh1N0bfjIQww6s2aBBYIdg8dQhoqqG9u+nTlne/wP8p3RuS+8qQaHDAbgEe
         AOeF3KoV5tR5VFCCr99VZ+p7BhRYYUaACfiwkI30TpfLpJ4xb61FCRy7XppTCEibgaSg
         ydWA7L9JA28CkTih0ProiJdB6zmB6lhQrF1V2JSvEwY/p7wysVJr25cuXvrrw9CjXCBC
         CpPA==
X-Gm-Message-State: AODbwcB7b9SQYQ76ZgOIiTR91IENH5LHXhbqK3GfEfB8k6YbXa9RoUwP
	ffo6/fn7aVNFR0O6
X-Received: by 10.80.164.152 with SMTP id w24mr5681480edb.19.1496784719275;
        Tue, 06 Jun 2017 14:31:59 -0700 (PDT)
Message-ID: <1496784716.2351.0.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Tue, 06 Jun 2017 23:31:56 +0200
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] FYI: Irssi Security Advisory 2017/06

IRSSI-SA-2017-06 Irssi Security Advisory [1]
============================================

Description
-----------

Two vulnerabilities have been located in Irssi.

(a) When receiving a DCC message without source nick/host, Irssi would
    attempt to dereference a NULL pointer. Found by Joseph
    Bisch. (CWE-690)

(b) When receiving certain incorrectly quoted DCC files, Irssi would
    try to find the terminating quote one byte before the allocated
    memory. Found by Joseph Bisch. (CWE-129, CWE-127)


Impact
------

(a) May result in denial of service (remote crash).

(b) May result in denial of service (remote crash), but in practice
    this seems to be very unlikely unless address sanitizer is
    enabled.


Affected versions
-----------------

All Irssi versions that we observed.


Fixed in
--------

Irssi 1.0.3


Recommended action
------------------

Upgrade to Irssi 1.0.3. Irssi 1.0.3 is a maintenance release in the
1.0 series, without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect.


Mitigating facts
----------------

(a) requires control over the ircd


Patch
-----

https://github.com/irssi/irssi/commit/fb08fc7f1aa6b2e616413d003bf021612
301ad55


References
----------

[1] https://irssi.org/security/irssi_sa_2017_06.txt
