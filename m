X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1906" "Thursday" "27" "April" "2017" "10:04:06" "+0200" "Emilio Pozuelo Monfort" "pochu@debian.org" "<a51da883-9c17-1e80-d081-20f1bf01199b@debian.org>" "71" "[oss-security] CVE-2017-8288: gnome-shell may leave extensions enabled in the lock screen" nil nil nil "4" "2017042708:04:06" "[oss-security] CVE-2017-8288: gnome-shell may leave extensions enabled in the lock screen" (number mark "U       pochu@debian Apr 27   71/1906  " thread-indent "\"[oss-security] CVE-2017-8288: gnome-shell may leave extensions enabled in the lock screen\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31793 invoked by uid 550); 27 Apr 2017 11:07:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12003 invoked from network); 27 Apr 2017 08:04:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=Ka7t6Vzke0T+yHnztkgFY8nIHr88lE3UViw7gvQGswA=;
        b=ENm+Dcv1KEU1akhPn6sYBSEbCGm7H6Et5rfcN5cZygS80n+LnzI5MYnr9aM2VHjyGd
         ilMO7TQ70d20Uk5LuwE5YEzRZq5WESIkbbVMqT7BY+PL3egi0a9BmdQkHUidJSLW4Xx3
         d6gElXuqQV/txQECEVIcUpA6LlILfaniIcGH/KaQa+eAmqTrmFefjxve69WVVI+EI7Y/
         H5OL/2gbeTNoTS6O4glH8816IbplWKfQEVWeBcTOhQKdjwWR5YEqTkox7ikuQv9Bo8GQ
         Euu4AJ0dNLcSQMgzGzb9S7L4wLAMD4OmLQWfCgnGJxG+zmYn66kTNm0IiDWzbCsMKqfA
         6Rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:to:from:subject:message-id:date
         :user-agent:mime-version:content-transfer-encoding;
        bh=Ka7t6Vzke0T+yHnztkgFY8nIHr88lE3UViw7gvQGswA=;
        b=kT9CRuyx1Ig2hoi3wgL8JQZ3skesLkXkc7AnLSkPxehvRES5gFeV+BHvKqMAMiqzm7
         3Q3r5TRI2lMh7sRV49jMAUte/xM1aI69H+tNaJpkpV58uI5SNaiW1jvE0CJgsVoy4wLt
         2dtLMA4b3ZoDc5ZqFdS6dcOFJBrKjHp6r/i2LwXlUEyHwOqSpv85p300lteopgSdLMrN
         S0GVsfsdYdgg5hPWojHmyf7wC7IevOPu9dkLW2rAM415bAran0aI9hRxLhCD6uHVmQGe
         QNo06920ebyalZqao5jV2E4FSp9lRS0pyQy7+jZxaX+n5ApB3RdvsnyNxcUyZCcQ5vxh
         dLHQ==
X-Gm-Message-State: AN3rC/5vlnjpX0mKRJ+12xtw2uPN0R5PmkNGyjrtn5q1KOOwHy27kj4R
	jbWBL2wvKOK+lLH3
X-Received: by 10.28.10.67 with SMTP id 64mr1240804wmk.126.1493280248992;
        Thu, 27 Apr 2017 01:04:08 -0700 (PDT)
Sender: Emilio Pozuelo Monfort <pochu27@gmail.com>
To: oss-security@lists.openwall.com
From: Emilio Pozuelo Monfort <pochu@debian.org>
Message-ID: <a51da883-9c17-1e80-d081-20f1bf01199b@debian.org>
Date: Thu, 27 Apr 2017 10:04:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2017-8288: gnome-shell may leave extensions enabled in the lock
 screen

Hi,

The following CVE was assigned to gnome-shell. Note this may affect earlier
versions than 3.22, but I didn't check them.

[Suggested description]
gnome-shell 3.22 through 3.24.1 mishandles extensions that fail to reload,
which can lead to leaving extensions enabled in the lock screen.
With these extensions, a bystander could
launch applications (but not interact with them), see information from
the extensions (e.g., what applications you have opened or what music
you were playing), or even execute arbitrary commands. It all
depends on what extensions a user has enabled. The problem is caused by lack of
exception handling in
js/ui/extensionSystem.js.

------------------------------------------

[Vulnerability Type]
Incorrect Access Control

------------------------------------------

[VulnerabilityType Other]
Incorrect Access Control

------------------------------------------

[Vendor of Product]
GNOME

------------------------------------------

[Affected Product Code Base]
gnome-shell - 3.22 - 3.25

------------------------------------------

[Affected Component]
js/ui/extensionSystem.js

------------------------------------------

[Attack Type]
Physical

------------------------------------------

[Impact Code execution]
true

------------------------------------------

[Impact Information Disclosure]
true

------------------------------------------

[Attack Vectors]
A broken gnome-shell extension needs to be installed (broken as in may
work normally, but has a bug where it fails to reload properly)

An extension reload needs to be triggered (which can happen for multiple reasons)

------------------------------------------

[Reference]
https://bugzilla.gnome.org/show_bug.cgi?id=781728
https://github.com/EasyScreenCast/EasyScreenCast/issues/46
https://bugs.kali.org/view.php?id=2513
https://github.com/GNOME/gnome-shell/commit/ff425d1db7082e2755d2a405af53861552acf2a1
