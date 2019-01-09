X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["990" "Thursday" "10" "January" "2019" "00:21:04" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<74cd4d55ba7b294a896febc153389d7c50d38fe0.camel@gmail.com>" "56" "[oss-security] Irssi 1.1.2: CVE-2019-5882" "^Date:" nil nil "1" "2019010923:21:04" "[oss-security] Irssi 1.1.2: CVE-2019-5882" (number mark "U       ailin.nemui@ Jan 10   56/990   " thread-indent "\"[oss-security] Irssi 1.1.2: CVE-2019-5882\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19834 invoked by uid 550); 10 Jan 2019 11:24:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21538 invoked from network); 9 Jan 2019 23:21:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=+lxzb8B7rsvtOBfHvviU8EfM9x+B6may7vBbfbjFhCY=;
        b=EcrRfVJjt6CxCG34AE8Ydyf8DIqHfLX5r7EjbqlwtEyNcObouKnzKrcL0DmGvvm0U3
         P+4HDsOIJP9zo+satr5bILwNgniw3IdWfnjf+2x+2vYzcQMuQOOJxnfnAxGTc5UgE285
         /9sM1QAmohDLupKhtmFanKPC30seJSOw4Qjv8BycTlDxgF1Ucid7I1CZsl71EsrANoj9
         PBwkb18yrdKgZjnc/W0QaKIj7sjM37JGqjRxyhML/2b8QMiFiDEByK7TwVoslDYBL56r
         FRHwyRZrzqiRIvK493mB1DR0FBb/6Vy9ljjGiWdvmnQvSo51lKJR1CHxrep9Nbeq7238
         Sigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=+lxzb8B7rsvtOBfHvviU8EfM9x+B6may7vBbfbjFhCY=;
        b=hX0K84j6fSnscPey5ZK813hJIBBoF2exNJq4HtI0hHSe8mVtgbFp3uCgd3njmNmCcT
         Df+V80UHTreQpIddWdGSL+gZALvsw8+yQps8Vtbi1eEHV1FxBEVLaTavWB3iF0eYCxso
         AZwOm/m6NS1qThjYenyxdHrZ9AbCkCeuStoMrFwgYPxsGjoF7luRXlD3AkTZtL6MXeOs
         D3fD7J73b1yLkoXG4ZmyQbjTMG7YwgHRFq4JH7ExGvebDlqcy7c2puYHVmqloGQlkS9X
         fxGtrMhDHJkVU5UuRvRWXa9g3LjYMBBL0T5OgaHYZcKr4bOxDez7Z0b2QYzkftc1cy6d
         4E9A==
X-Gm-Message-State: AJcUukdVjSqa/i/kpjz5/LArGAPe5AIjVZptbd0RW5yMqw9gKCrDeA1M
	hCGqQ900Pz2e4BtepRySiGFPQZ9F
X-Google-Smtp-Source: ALg8bN5U6uhcw9mnOhDkDwbCW7yppXXjmogjattE+r0Fr2d2G/BQLNb0cNFX+NCBVsw+V6TsvwgZQg==
X-Received: by 2002:a1c:1c8:: with SMTP id 191mr7827757wmb.150.1547076065627;
        Wed, 09 Jan 2019 15:21:05 -0800 (PST)
Message-ID: <74cd4d55ba7b294a896febc153389d7c50d38fe0.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Thu, 10 Jan 2019 00:21:04 +0100
From: Ailin Nemui <ailin.nemui@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Irssi 1.1.2: CVE-2019-5882
To: oss-security@lists.openwall.com

IRSSI-SA-2019-01 Irssi Security Advisory [1]
============================================
CVE-2019-5882

Description
-----------

(a) Use after free when hidden lines were expired from the scroll
    buffer. (CWE-417, CWE-825)

    CVE-2019-5882 [2] was assigned to this issue.


Impact
------

May affect the stability of Irssi.


Affected versions
-----------------

(a) Irssi 1.1.0 and later


Fixed in
--------

Irssi 1.1.2


Recommended action
------------------

Upgrade to Irssi 1.1.2. Irssi 1.1.2 is a maintenance release in the 1.1
series, without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require /reconnect.


Mitigating facts
----------------

(a) If lines are never hidden (no usage of /window hidelevel), this bug
    will not trigger.



References
----------

[1] https://irssi.org/security/irssi_sa_2019_01.txt
[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-5882


