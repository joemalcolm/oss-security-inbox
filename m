X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["815" "Thursday" "12" "April" "2018" "14:16:48" "+0200" "Raphael Sanchez Prudencio" "rasanche@redhat.com" "<CAMOY_4kbeNpOpWp_VvM+WuCeu8hP-nJmsD+SwVABB8EgoSEuwA@mail.gmail.com>" "40" "[oss-security] CVE-2018-1084 corosync: Integer overflow in exec/totemcrypto.c:authenticate_nss_2_3() function" nil nil nil "4" "2018041212:16:48" "[oss-security] CVE-2018-1084 corosync: Integer overflow in exec/totemcrypto.c:authenticate_nss_2_3() function" (number mark "U       rasanche@red Apr 12   40/815   " thread-indent "\"[oss-security] CVE-2018-1084 corosync: Integer overflow in exec/totemcrypto.c:authenticate_nss_2_3() function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29716 invoked by uid 550); 12 Apr 2018 12:35:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19473 invoked from network); 12 Apr 2018 12:17:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=msik1b8VIcTgHwwh7To4WwZLktWMtWs7gqac1zQv6ew=;
        b=B2xhk907XZKG2YiGDy7ro5VkAN2db51/w+/axU+o217R+jsO879PnXYVT/3BtnDWk5
         yF48HBJvtWwskjj8V6ywG96hDoXfNKN9nNEfNYAWcHg6UXvexqFQe3V6hnDPUxXtvJ0S
         uoQal/HmedpMxzjMTYgVI9UA5lpfFXjFbw4mccLWKaFbppOiuY32afXN3oVBlxG+by7f
         qrvvQyW8l2T6QuqtJvsj4WK2NQrkN8PUzQv0NPL9Ld7bMbGD3VlSTaEPFQBx4ysfWrC7
         NlKPh8y31YLgO5diJRvIzHWzxL6TVCBgzs+gtKS18Egzi42K1l5hqYM5Hw4GWFY6o7jc
         RwAg==
X-Gm-Message-State: ALQs6tAAP5jSY8NrGGUUNOh4KNi9yzhYLobI6Q1+jC38CoOHwlv+vuoJ
	lBjSR4aubWuWj9deAUNXaLXm61tVqM+rbQRQAZuYf/wg
X-Google-Smtp-Source: AIpwx4+t5bErtgNT+XYU6F2K8UR1VSY1eMnQa4yXANwGe2B34sEv2nPIkosZ1Bxeks61sxsRdPzKdhz0y6hMXYgRUCY=
X-Received: by 2002:a9d:29ea:: with SMTP id g39-v6mr459557otd.241.1523535428950;
 Thu, 12 Apr 2018 05:17:08 -0700 (PDT)
MIME-Version: 1.0
From: Raphael Sanchez Prudencio <rasanche@redhat.com>
Date: Thu, 12 Apr 2018 14:16:48 +0200
Message-ID: <CAMOY_4kbeNpOpWp_VvM+WuCeu8hP-nJmsD+SwVABB8EgoSEuwA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000bb0600569a5bc24"
Subject: [oss-security] CVE-2018-1084 corosync: Integer overflow in exec/totemcrypto.c:authenticate_nss_2_3()
 function

--0000000000000bb0600569a5bc24
Content-Type: text/plain; charset="UTF-8"

Description
===========

An integer overflow leading to an out-of-bound read was found in
authenticate_nss_2_3() in Corosync. An attacker could craft a malicious
packet that would lead to a denial of service.


Affected versions
=================

All versions of Corosync from 2.0.0 to 2.4.3 are vulnerable.


Patched versions
================

Corosync 2.4.4 includes the patch that fixes this vulnerability.


Credits
=======

This issue was discovered by Citrix Security Response Team.


Reference
==========

https://github.com/corosync/corosync/commit/fc1d5418533c1faf21616b282c2559bed7d361c4
https://bugzilla.redhat.com/show_bug.cgi?id=1552830

-- 
Raphael Sanchez Prudencio
Red Hat Product Security

--0000000000000bb0600569a5bc24--
