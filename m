X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["827" "Wednesday" "27" "November" "2019" "23:05:54" "-0800" "Jesse" "purplecabbage@gmail.com" nil "28" nil "^Date:" nil nil "11" nil nil (number mark "        purplecabbag Nov 27   28/827   " thread-indent "\"[oss-security] CVE-2019-0219: Apache Cordova InAppBrowser Privilege Escalation (Android)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0219: Apache Cordova InAppBrowser Privilege Escalation (Android)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21695 invoked by uid 550); 28 Nov 2019 12:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28436 invoked from network); 28 Nov 2019 07:06:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qIl/9AdJtDQBi/pWOhpOwXwSJF5eIGjM7TkTqUPWC3s=;
        b=MJcxVTwo7ygGvekI/GDV2yE1hhMuFNkdIM/KWvHttDI5bauD/5BSXsG/t0faPAOqMI
         ZCYQSZepgiUhxngDtT6orl6pYOvGHriIP/dk0dVwsuHY+1TTCWiWA+ZwDu+Nb0t2k62e
         sOo9oQLUZUhJEIFIP3r4Mal2kFIQIJrtWNi7dchYRw18WHsqNrB/knwB4EFZCL8AI3pG
         TgkZnlsEkn6faYN/BUwSE+E/sD+uCqyEdjEyXULgVQXQJRsZJDW/XRUxljdDst14BNLb
         l8aId0XuQPl0cPQRHUdnqtn6X4cbASfpdsmrZ13T4zhKDNsgZTPGOQBoLb85+JPEIzD1
         8PJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qIl/9AdJtDQBi/pWOhpOwXwSJF5eIGjM7TkTqUPWC3s=;
        b=BTGoRbmEjVmtiGfrMTwV69v3Oi04OURBz231hhDK36rAnUpnGsULpKQaFPedSpNoU0
         bUgcMUbtkiyjpqRMb15PVm/6E2Vinnb2kD4h7amVBz0QjtA8E6EaSjtpuUkFXrVJnb5A
         D2HnnAs735OrwgascuJBCft9KVQYS4NcffLcMbwrmk/SfzyvNEYS6ab8Wqq5uOTX3N6H
         sC2jFgLdaWxBVKdeDFPAOyxWlT33xcuaUOCA6eWjxVlK3nkKPtYQCTfK2M6B/aESY9gm
         FaJZ/nXrZzYG8rgQLfl0c3fgUpMPMbFJYgpBVrS79B4eimxarfYsH+h9oyAHqd9v3Oy6
         z6cA==
X-Gm-Message-State: APjAAAUX0LucV7MmHtedJCkuwAln1zcTJzCxVBLS1jy/Jf/5HWmw8etZ
	zSxuOxdCZsT6D9EBQHYEFouCah30nSt6xWO9Mn9/EmfMenc=
X-Google-Smtp-Source: APXvYqzvHfiXhLBJzjCG8QOlF0LOwoRbsToNIMj5c3tYGzS24m/DzuqEFZZpoXxxW/yKCcdkDm0fbglrpkTOvZhj8QI=
X-Received: by 2002:a17:906:8554:: with SMTP id h20mr5786231ejy.203.1574924790996;
 Wed, 27 Nov 2019 23:06:30 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAKP6k2s9g0ALG58ZRsx9AhTppeAL6yJfRDGd7QAvS9SXU3M5LA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b722a7059862c02a"
Date: Wed, 27 Nov 2019 23:05:54 -0800
From: Jesse <purplecabbage@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-0219: Apache Cordova InAppBrowser Privilege Escalation (Android)
To: oss-security@lists.openwall.com

--000000000000b722a7059862c02a
Content-Type: text/plain; charset="UTF-8"

CVE-2019-0219: Apache Cordova InAppBrowser Privilege Escalation (Android)
===

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected: Cordova Android applications using the InAppBrowser
plugin
( cordova-plugin-inappbrowser version 3.0.0 and below )

Description: A website running in the InAppBrowser webview on Android could
execute
arbitrary JavaScript in the main application's webview using a specially
crafted gap-iab: URI.

Upgrade path: Developers who are concerned about this issue should install
version 3.1.0 or higher of cordova-plugin-inappbrowser

Mitigation Steps: Upgrade plugin to 3.1.0 or higher and rebuild
application, update deployments.

Credit: Sergey Bobrov (Kaspersky Lab)

--000000000000b722a7059862c02a--
