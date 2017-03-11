X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1023" "Saturday" "11" "March" "2017" "22:25:55" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1489267555.30133.7.camel@gmail.com>" "59" "[oss-security] CVE Request: Irssi use after free in netjoin condition (2017/03)" nil nil nil "3" "2017031121:25:55" "[oss-security] CVE Request: Irssi use after free in netjoin condition (2017/03)" (number mark "U       ailin.nemui@ Mar 11   59/1023  " thread-indent "\"[oss-security] CVE Request: Irssi use after free in netjoin condition (2017/03)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15886 invoked by uid 550); 11 Mar 2017 21:32:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9749 invoked from network); 11 Mar 2017 21:26:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=5EvfNeBPqdo+tTdR2KE6JfB8B3PNZ9iP15UGq4DVPyw=;
        b=n1cr1HUX18x8weRf9gxeo4G4EfqgU/0eJpQtmtyPCCRc4jas+8lDY/tp8BeDEh0NB3
         EZth1Q1UE06pzH5bA1rg1PSSvg4Yk4VK5Vtl966A16s4EGBGc7sA9k1GP2XKR70PUV+B
         5KPR74B1nkSE5xNEx1/bmzmDj5SsRd4GlIdjutrezyK9jfwkst/bMj+5GNgj6zT/8s4S
         uTZGAwnEukGoFX2pffPtqdxgAP3MNxX9BU0WjjQ8iOtS50cD6F6aZJtjkj5U2cgttPVU
         5EB3iQKdNc9iWpNW212nFeH/fAPoza+rqo7xuuRViIZ0nGo/JiV9WvBB/hlDvSYghCx2
         bO6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:mime-version
         :content-transfer-encoding;
        bh=5EvfNeBPqdo+tTdR2KE6JfB8B3PNZ9iP15UGq4DVPyw=;
        b=DsBXp/4fic4Jta/LZ4AVtAttFAfnPvgC2UBq1G4U7xQV8lTfa0+baO4aJBiiQTOjzl
         mk9draJHar94OVouriY6BDNgaY4GDG+mAs+//0tUajhTde7mqxhWIBYXjsz/fYg2QMWk
         HCPgGO67OwutEHXaZvsHo5hV0hp4FfWxLQNYkBmLKgNRAOihAtTs5hyG4nW33sTMHPHC
         YfZUHmxMvbEs/XkktVwvWfRpO2tNXygzsh6lcowtzNfpyfaUntWo1WA7lbTg3jG0JKt1
         ADOFkZWQdzkA2uxTEcyrBBJNMAPLmUDgHATNb6X32MavvVSelYGWlIpQRJKcgTk9tZgw
         0wXg==
X-Gm-Message-State: AMke39mbGatewzr5pgwxKttnvVtRzsEENOfOZbNmCqP9SkGghtSwPr3fw0KHOnC2pViQLA==
X-Received: by 10.223.160.115 with SMTP id l48mr23540766wrl.24.1489267557793;
        Sat, 11 Mar 2017 13:25:57 -0800 (PST)
Message-ID: <1489267555.30133.7.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Sat, 11 Mar 2017 22:25:55 +0100
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.5 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Request: Irssi use after free in netjoin condition (2017/03)

Dear CVE Assignment Team,

please provide CVE for the following issue:

use after free condition during netjoin processing [1]
======================================================
CWE Classification: CWE-416



Description
-----------

Use after free while producing list of netjoins (CWE-416)

This issue was found and reported to us by APic.


Impact
------

This issue usually leads to segmentation faults. Targeted code
execution should be difficult.


Affected versions
-----------------

Irssi up to and including 1.0.1

We believe Irssi 0.8.21 and prior are not affected since a different
code path causes the netjoins to be flushed prior to reaching the use
after free condition.


Fixed in
--------

Irssi 1.0.2


Recommended action
------------------

Upgrade to Irssi 1.0.2. Irssi 1.0.2 is a maintenance release
without any new features.


Patch
-----

https://github.com/irssi/irssi/commit/77b2631c78461965bc9a7414aae206b5c
514e1b3


References
----------

[1] https://irssi.org/security/irssi_sa_2017_03.txt
