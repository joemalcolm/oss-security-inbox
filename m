Received: (qmail 27857 invoked by uid 550); 11 Mar 2026 13:24:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18248 invoked from network); 11 Mar 2026 13:22:57 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773235367; cv=none;
        d=google.com; s=arc-20240605;
        b=K4lR6MNntm+6mZds79wihKr4L+cIhYwHwo+p4S5gkfMMYG0ujBiprlIeg9L2DR16wU
         VymIYBOseLQr8nTkVIM/bcbR8yiRuXPnHMBEPRHDPsiDEWXBtRaGzSF53cD9yAMYgjWt
         lxEUPbWjkg91KfvzNCYjwgAq8wqEc9QNJp95V8ayYh6Zl+V/4OCP4M0Ei6b9PbOUQn4I
         /6gwfKvu/4LsnshoBcWaBTmCtBBR/qgrgsBYE2lv7HXQC5f8MR7n6bdSaM9KIVYtCcjT
         ECVggObFGYm0v4F8Nrq1/qGAUbMH0ImeHh5PyMvR+vb/rvmn4fPe029avn6TOOTg+2Ib
         ZyWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=d4z20hvL2h/68QrVS8CLVSQkWsNANgx64DvE9W0ACRo=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=f0yG0tDx0HPqJ9yONbmZNhqNwhInkOlW5NB8i3708zbw13YQXHFpDujS6dAy1q/hTL
         j9MGHDfDXw0hFSnab8DyOROZjdtHOraXMKXivhVIfj7O6t7RSb4xq0oLr51CQafTCaVG
         P5c3urDUPLosWFLqdlNGua2kfc7FbhL9XajgxSehlfp+5kYRDU0I12Rs5OOXdxurZt9H
         X2746JsFmCFoOViqY1cgn8cW3Ajwg6gLePkdmiJO+CJcN+JFZK4/BSAXC7xfj+sIu4Vl
         4TAUJdo13o48tLJoaDqwxVx3IKwuWSvC6lOIU8/vYIj/4PV1pkU3TJWNKRE+TOE73F85
         facQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773235367; x=1773840167; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=d4z20hvL2h/68QrVS8CLVSQkWsNANgx64DvE9W0ACRo=;
        b=GX3qvNuKiuxeCdL7GnL2C9wp87nzxqIAlQFyhxeQIcXo/IHGK4L71NP0dcuX2P7ZKj
         NKahx/2KAd05KcwiLPNIgT70OJrYWlmevkJu+3RbhRc3Ce9/gXxSAHrtmW++MQwAbYH6
         3OGUjbRC3OymWE8Nf4cplhhJVi/2bKobdY6+9wJgAsSYCvfLBE/YWznXwfUdbYtJeVrt
         lK3fzhPTHz8gngqICItS5s8kCdii8iCkPtoCjB2x+bVpOmDdeSqH/nNiX5z4GMJUBGIo
         W4roSEAWao2fHZTD6WKzIj+C3bBuQQBpuBXTEWzN8f2vgpLSBMH9aFwAJ2xBhZvWwg2D
         C5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235367; x=1773840167;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d4z20hvL2h/68QrVS8CLVSQkWsNANgx64DvE9W0ACRo=;
        b=HCsBZxIMceHljrHtnO4cxqFGIB2KeeHhKcACETqfFWGj2dxNq1e3ZteQfIObPem8AL
         r8cgFjyJHvQiowsG1AENQcrIhb1qP2RvKoYuP9Y/UOkCoSFc3I2ZNIbXe7HIA1vh13or
         YMxVMIUjGQ88E+krUcSfD2ZtpaZ20byLChsY9H6JJvo72CIcvWDRviwMKSaPpyQCxza9
         2QCkVFgFNUF0inwu1EKdPdD0wBxqWJ2EtAZ7wKCCe/SonF7pVYCkbs3dLM5hlDM2OeI8
         U1ZGh+UOv9EWcePQlRfXLmNtXxAklIQ9PuGvxn3VY3CTwuoUpHOZrk71GK+4PT9sGlGC
         fOhQ==
X-Gm-Message-State: AOJu0YyPKIQRo6oaJ1ix+mtA0QhG6x4W2sfAdORuOj3se0T8Yip52IHM
	q5XjNOHR+QhGhPIwzzn7L3m8NPpCLbsgwLvDymGrZfmdp/ioFI7xn49mlOkF/fSgBp6RDhB6Is9
	k1nCqV3c42Ok8EMuZ/8Lrs3fp6Q97UgKj998p
X-Gm-Gg: ATEYQzzdyi0c/tcL4oL+0og0iZdviLNOMyUSXD8bH+pX6oHhewx4oNt5IxceNufH2oF
	pDe6GSIb7Dt/mmMcqR6niK5Km92+Ravj/04HZyaqI9UQmpG+r9fo4XVP1z+rnLVmAzwE8rhkNky
	1f5xiKFtuK11IjFCqNIgtEIituawx0JsFGc4LKIRo2IXa1y69/+9U1SWNn4ME2AZWcYEN5YAkAV
	iSLcllxsapKg4Hc/RzeCSdW22PhaIzyvfg8GEmcjLc0WHBm7CBvv7o24rofm0NA+r5beFHpafst
	IN1Q2Q==
X-Received: by 2002:a05:6830:6afa:b0:7c7:63b6:89d3 with SMTP id
 46e09a7af769-7d76a77776emr1460425a34.19.1773235366417; Wed, 11 Mar 2026
 06:22:46 -0700 (PDT)
MIME-Version: 1.0
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Wed, 11 Mar 2026 09:22:35 -0400
X-Gm-Features: AaiRm51LP1kWtHZnbM61ThBTCkZurkco1FbuM8YSn-Jbv3Kf6cpFujXVZroaLww
Message-ID: <CAAHN_R3QxQvMSZWexs3F5OChBkEcpQ9M4b1m06tQcP=9Cju_Rg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] The GNU C Library security advisory update for 2026-03-11

Hello,

The following security advisory has been published:

GLIBC-SA-2026-0004:
===================

nscd client crash on x86_64 under high nscd load (CVE-2026-3904)

Calling NSS-backed functions that support caching via nscd may call the
nscd client side code and in the GNU C Library version 2.36 under high
load on x86_64 systems, the client may call memcmp on inputs that are
concurrently modified by other processes or threads and crash.

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
