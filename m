X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["425" "Thursday" "12" "March" "2020" "15:55:06" "-0700" "Matthew Garrett" "mjg59@google.com" "<CACdnJutPzcRCBu53nE9NOYE3gq5w1mTsmWzwHNzEyHmmXJZrAg@mail.gmail.com>" "7" "[oss-security] Bluez <5.53 DoS/privilege escalation" "^Date:" nil nil "3" "2020031222:55:06" "[oss-security] Bluez <5.53 DoS/privilege escalation" (number mark "U       mjg59@google Mar 12    7/425   " thread-indent "\"[oss-security] Bluez <5.53 DoS/privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Bluez <5.53 DoS/privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24479 invoked by uid 550); 12 Mar 2020 22:55:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24449 invoked from network); 12 Mar 2020 22:55:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=AWl23En2CSTpgPMnl7xsCRHuZ0rNK6JKaXYXhCW8sqY=;
        b=btMrYEzozjkUiaIjs4i5RiY/QybOiqrsgpugChDVSU+r3EMLfi3w2Z1aBAKl1cgjOM
         dG0zs9iaDv4LfH6QWsSHM6dTdalMmv/gVnXFUjSnvGQm3WFBce8oZCB/4EoT5HEY06XC
         60fIQz3/Hjv/+tqmPoITt8fa/gZEtLDUyQeRBQwKUxwq6Df1gdOeFYoLkEZ4Z9DJNC/S
         7jjlk5aWulBhtP4slQ+0AEqemuAbD8aZrbdMJHqrqzFdTXl0SHhTpkF63oq3ra0qBp/P
         o1DPramGe0ovtp2rivTn2ZpIgZZdOqKyJlrfeHoqQ+P67nGcIg7Hg1oSsoyrNFZPJbzx
         Uagg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AWl23En2CSTpgPMnl7xsCRHuZ0rNK6JKaXYXhCW8sqY=;
        b=RsrhLG+qzCd2wQ3dYI3W43efz+Mrkukg6x2YIGvXck7/IT9H7/gzvf3dWJqBmed/Y3
         7jdyRfCgoMi4j060coVZh0lneDwFmNmJjqb98SzUyC86DWIUyOWQf1F2fMsJ+r91/Qrq
         8gswqNs2GJ1jDTvtHTn3ZghcEDcXfyBf84Euu+PhNmfL4+SYYxV2hYq+4p7k0Xmhsace
         26uLPTOrddHFV6dpvwqWLPn6wUM23DeHMpe0fh5L5sMHl/xFK+ENb9dRJtRAaQxbUXTD
         7Nay98An1oBR7ijLOXVMKZdF50ejNnKFI+W0KBCuCbDd/Pb2wtS9298RbD7lIEVPOeX3
         iOqA==
X-Gm-Message-State: ANhLgQ3YGywG+4/SaYszH4jXAe840vIXP5dA+bhTI39p6GMKTFCipc3V
	QV5N51kf5YkX8eBOWhJA8TBsIwtnLNwzc1ThxJkWYhxCnh0y3w==
X-Google-Smtp-Source: ADFU+vuTbyE2cJxhlslCWleIEZ2GD40NL/ujio/3dARtVsWEEpT9H7sl9//MYixr8mhDi6Ljempqi1Ccb7v77TDaqaE=
X-Received: by 2002:a5e:d601:: with SMTP id w1mr9659500iom.82.1584053717923;
 Thu, 12 Mar 2020 15:55:17 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CACdnJutPzcRCBu53nE9NOYE3gq5w1mTsmWzwHNzEyHmmXJZrAg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 12 Mar 2020 15:55:06 -0700
From: Matthew Garrett <mjg59@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Bluez <5.53 DoS/privilege escalation
To: oss-security@lists.openwall.com

https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00352.html
describes a vulnerability in versions below 5.53 of the Bluez
Bluetooth stack. Intel do not appear to have disclosed this issue to
distributions in advance, and have not yet made a release that
includes the fixes. https://patchwork.kernel.org/patch/11428317/ and
https://patchwork.kernel.org/patch/11428319/ should apply to older
versions.
