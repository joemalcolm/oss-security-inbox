X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3064" "Tuesday" "14" "December" "2021" "15:14:06" "+0200" "Povilas Kanapickas" "povilas@radix.lt" nil "94" "[oss-security] Fwd: X.Org Security Advisory: December 14, 2021" nil nil nil "12" nil nil (number mark "U       povilas@radi Dec 14   94/3064  " thread-indent "\"[oss-security] Fwd: X.Org Security Advisory: December 14, 2021\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Fwd: X.Org Security Advisory: December 14, 2021" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25864 invoked by uid 550); 14 Dec 2021 13:43:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30034 invoked from network); 14 Dec 2021 13:14:24 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1639487650; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=oIkDHWNwopSmXNwcoObsqX91k8whT/RhumOonpHK9lM0oP/YnFxlLcLty+xjA8IApg2W8qbJ68CCkeDD3Ap4tyyYl1JNa6FidDZdM+5Tq28DjPzFoo4FPoruEDNkw0wZmyPvHC2I6ACtIEsUc/oqIBxwb/tWnz7ePwORtzqaxKg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1639487650; h=Content-Type:Content-Transfer-Encoding:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=q11PkNM0qq0wO12puOeT8lGkOQ19liPLyCBm3p1BMXk=; 
	b=maXQwe6tymkCu62iNF0BzMJu4hE6x8yyVj25UqvHcBQieBjA6ijv2h8CNF9gLYITbfbMTE0GA/06c0MeU2fmyoWHc/T0SD8ljkNclHx3FrPiwU1eafpdyWW7kW9WrlZZdqj5JX5E8rLowrkdIXllesLgI/IcZ5jjJmye/HiQFkM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=radix.lt;
	spf=pass  smtp.mailfrom=povilas@radix.lt;
	dmarc=pass header.from=<povilas@radix.lt>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1639487650;
	s=zoho; d=radix.lt; i=povilas@radix.lt;
	h=Subject:References:To:From:Message-ID:Date:MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	bh=q11PkNM0qq0wO12puOeT8lGkOQ19liPLyCBm3p1BMXk=;
	b=LrmY+6TVrUv30R8fgGioMtz/xu3vD8CdSxUOwAlv3XQX3xXWgujN/gLBUsWy5JLf
	XOxhRly0Ik2I/+VPgM9V26CkNkI2++pvnReG7oVoa2ENvrRwpd/XedymEae8+PZmMXV
	J+rmlDqwuCTBFdzOtFOdR8W1YDv1cZHkk3gXz1y0=
References: <f53b79cf-081d-b109-59bf-7fcf6412e822@radix.lt>
To: oss-security@lists.openwall.com
From: Povilas Kanapickas <povilas@radix.lt>
X-Forwarded-Message-Id: <f53b79cf-081d-b109-59bf-7fcf6412e822@radix.lt>
Message-ID: <06bd0517-a955-881f-553b-c49b7a7a4ed2@radix.lt>
Date: Tue, 14 Dec 2021 15:14:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <f53b79cf-081d-b109-59bf-7fcf6412e822@radix.lt>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ZohoMailClient: External
Subject: [oss-security] Fwd: X.Org Security Advisory: December 14, 2021


-------- Forwarded Message --------
Subject: X.Org Security Advisory: December 14, 2021
Date: Tue, 14 Dec 2021 15:11:35 +0200
From: Povilas Kanapickas <povilas@radix.lt>
To: xorg-announce@lists.x.org
CC: xorg-devel@lists.x.org <xorg-devel@lists.x.org>, xorg@lists.x.org

X.Org Security Advisory: December 14, 2021

Multiple input validation failures in X server extensions
=========================================================

All of the following issues can lead to local privileges elevation on
systems where the X server is running privileged and remote code
execution for ssh X forwarding sessions.

* CVE-2021-4008/ZDI-CAN-14192 SProcRenderCompositeGlyphs out-of-bounds
access

The handler for the CompositeGlyphs request of the Render extension does
not properly validate the request length leading to out of bounds memory
write.

* CVE-2021-4009/ZDI-CAN 14950 SProcXFixesCreatePointerBarrier
out-of-bounds access

The handler for the CreatePointerBarrier request of the XFixes extension
does not properly validate the request length leading to out of bounds
memory write.

* CVE-2021-4010/ZDI-CAN-14951 SProcScreenSaverSuspend out-of-bounds access

The handler for the Suspend request of the Screen Saver extension does
not properly validate the request length leading to out of bounds memory
write.

* CVE-2021-4011/ZDI-CAN-14952 SwapCreateRegister out-of-bounds access

The handlers for the RecordCreateContext and RecordRegisterClients
requests of the Record extension do not properly validate the request
length leading to out of bounds memory write.

Patches
-------

Patches for this issues have been commited to the xorg server git
repository (https://gitlab.freedesktop.org/xorg/xserver). xorg-server
21.1.2 will be released shortly and will include these patches.

commit ebce7e2d80e7c80e1dda60f2f0bc886f1106ba60

    render: Fix out of bounds access in SProcRenderCompositeGlyphs()

    ZDI-CAN-14192, CVE-2021-4008

    This vulnerability was discovered and the fix was suggested by:
    Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

commit b5196750099ae6ae582e1f46bd0a6dad29550e02

    xfixes: Fix out of bounds access in *ProcXFixesCreatePointerBarrier()

    ZDI-CAN-14950, CVE-2021-4009

    This vulnerability was discovered and the fix was suggested by:
    Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

commit 6c4c53010772e3cb4cb8acd54950c8eec9c00d21

    Xext: Fix out of bounds access in SProcScreenSaverSuspend()

    ZDI-CAN-14951, CVE-2021-4010

    This vulnerability was discovered and the fix was suggested by:
    Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

commit e56f61c79fc3cee26d83cda0f84ae56d5979f768

    record: Fix out of bounds access in SwapCreateRegister()

    ZDI-CAN-14952, CVE-2021-4011

    This vulnerability was discovered and the fix was suggested by:
    Jan-Niklas Sohn working with Trend Micro Zero Day Initiative

Thanks
======

This vulnerability was discovered by Jan-Niklas Sohn working with
Trend Micro Zero Day Initiative.

--
Povilas Kanapickas
