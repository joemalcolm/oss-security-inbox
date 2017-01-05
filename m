X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2728" "Thursday" "5" "January" "2017" "15:45:20" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1483627520.30912.1.camel@gmail.com>" "109" "[oss-security] CVE Request: Irssi Multiple Vulnerabilities (2017/01)" nil nil nil "1" "2017010514:45:20" "[oss-security] CVE Request: Irssi Multiple Vulnerabilities (2017/01)" (number mark "U       ailin.nemui@ Jan  5  109/2728  " thread-indent "\"[oss-security] CVE Request: Irssi Multiple Vulnerabilities (2017/01)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20446 invoked by uid 550); 5 Jan 2017 14:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5533 invoked from network); 5 Jan 2017 14:45:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=Q9DPB1dEPBrO60SLcS/i7UlegWtbRj2dNDIDp8eKx1s=;
        b=RO9aAbKxJ8g1AiMObwG3eP6RqZWvtpKh8wt90A09J1y+HiFYUx9yLu/gMG/81xWfM+
         430gc9zB+DOYjxuDHv2KCI6PyTzwXydiTfuISVzEFK9zOId+xhYmveMOMHHMy0aS/uJI
         baddDVHJMRF24FkEyzNFIsFWKXMpCux1tlqHrvOb8oxfUyVDgA/XK6v3fRRjURla0HBJ
         V3eltUG+TJrZJLjl+dxFKpYigcsLN+ZaE0nHttGi5UhsBrmRCDLmbnBmQpF/6vP2vd1k
         HVMKYHAq3BTitzN3dUGo80QmEfd0UcPYLJZtRHxAPNs8d/ve5eNXocmgmlxwA+Gx/Duy
         9JrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=Q9DPB1dEPBrO60SLcS/i7UlegWtbRj2dNDIDp8eKx1s=;
        b=V1y1CIrghJ7l1SviRV1EpSQjMA9dIWkjavxkHunptXU1YhQHICY8zo8vMBU9Q/rI71
         AfmyqvsU2gTAxG8XsoLNhajTTENUmu7DmjLU+KUjHeZTl94FR7HlWuzZ4AWoz4fuSQID
         hN93Yytx9rSWMT2qayCbHSzg7qMnWdKRVKavYPiLT3vnAdl0qU7Vk+eyfOLyvY2/1PIr
         WFFZZGgZgH6DdsILpZ4TzxxinjMmOY8mTe2TXMdWJwJk+91R2+bXFPd1F1yNikSRkX6O
         /U0T4yG4AhsrDUSp25dvDvJss6AHQs3vyooPjvMHhaFjKkcsli9erurrNbFATwQRupds
         oKtA==
X-Gm-Message-State: AIkVDXIQzdEQ9pncjrm0NBinVMJgvxXYiYgbTLWmYKdKAxD/F+gcJ24RahwSoL+zPapzCA==
X-Received: by 10.28.221.11 with SMTP id u11mr65665137wmg.123.1483627522198;
        Thu, 05 Jan 2017 06:45:22 -0800 (PST)
Message-ID: <1483627520.30912.1.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Thu, 05 Jan 2017 15:45:20 +0100
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE Request: Irssi Multiple Vulnerabilities (2017/01)

Dear oss-security List,

Please provide some CVEs for the following issues.

Thanks,


Multiple vulnerabilities in Irssi [1]
=====================================


Description
-----------

Four vulnerabilities have been located in Irssi.

(a) A NULL pointer dereference in the nickcmp function found by Joseph
    Bisch. (CWE-690)

(b) Use after free when receiving invalid nick message (Issue #466, CWE-146)

(c) Out of bounds read in certain incomplete control codes found by
    Joseph Bisch. (CWE-126)

(d) Out of bounds read in certain incomplete character sequences found
    by Hanno Böck and independently by J. Bisch. (CWE-126)


Impact
------

These issues may result in denial of service (remote crash).


Affected versions
-----------------

(a) All Irssi versions that we observed
(b) All Irssi versions that we observed
(c) Irssi 0.8.17 and later
(d) Irssi 0.8.18 and later


Fixed in
--------

Irssi 0.8.21, Irssi 1.0.0


Recommended action
------------------

Upgrade to Irssi 0.8.21. Irssi 0.8.21 is a maintenance release
without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect.


A Note to Distributors
----------------------

First of all, thanks to every maintainer for their awesome job in
packaging Irssi and backporting security fixes.

When we had to release a security advisory last year with Irssi
0.8.20, we noticed there was a huge confusion amongst Ubuntu users
about whether their Irssi version was safe to use.

Since all our releases 0.8.19, 0.8.20 and 0.8.21 have been bug
fix only, we think distributions should just ship the release.

But if the security fixes only are backported on top of an old
version, we would like to urge distributions to consider indicating
this in a way that is visible inside Irssi. One way to do this would
be to manually overwrite the PACKAGE_VERSION and marking your package
as patched. This can be done for example like this:

  ./configure PACKAGE_VERSION=0.8.17-sa201701


You can then check the version from inside Irssi with /eval echo $J

As an added benefit over relying on dpkg, this will also correctly
report whether you had /upgrade done or not. We are looking for a ways
to make this easier to handle for both packagers and us, so if you
have a good idea on this matter please speak forth.


Mitigating facts
----------------

(a) requires control over the ircd

(b), (d) require control over the ircd or otherwise can be triggered /
    avoided by the user themselves


Patch
-----

https://github.com/irssi/irssi/commit/6c6c42e3d1b49d90aacc0b67f8540471cae02a1d


References
----------

[1] https://irssi.org/security/irssi_sa_2017_01.txt
