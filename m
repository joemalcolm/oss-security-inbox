Received: (qmail 13996 invoked by uid 550); 12 Jul 2022 13:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7312 invoked from network); 12 Jul 2022 12:58:31 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1657630698; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=A7AC8eqTDLawZ+Z82QVYjO7eGhwh1SLf1riyZFF1IMje0tBuKfMcpeWV9lHVcpqjOKkpKf1wgqH9jadLA4wcRo3TdmfqUHJ8TEXSf2V4+iNNty0HOn/xOAfPlaA9W/+0NGkzQW0IKYUrzad4FfFGZrDhCCQz0smwKawNl5h4g6I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1657630698; h=Content-Type:Content-Transfer-Encoding:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=rq0NIxNM/MNGO37IYTtXWVm/ac21eXhI+YKt3CDmHmw=; 
	b=FmYCmM5cZyYVy+/a1dyHecASpWP8JkElPvfKVzxbmmuq40lLhyYbNoIsk4yMw144+ttfoHZwN7Pp7JWg2wtkzfAoZi4h6VxXxc3bUWaFV+VMupkI4ujkZvIjqodRGCujsW94bMMEguPJrr8lXWNoFcg39Rfqj1Ev8wCokPXsePY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=radix.lt;
	spf=pass  smtp.mailfrom=povilas@radix.lt;
	dmarc=pass header.from=<povilas@radix.lt>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1657630698;
	s=zoho; d=radix.lt; i=povilas@radix.lt;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:References:To:To:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=rq0NIxNM/MNGO37IYTtXWVm/ac21eXhI+YKt3CDmHmw=;
	b=RAcSDCQeo/gkMqPkbPBjCp0+CnprQB/lycXloXjfr78Ovdzz1l3EPk0kbjzGjI7A
	ZIBWz+sySV8FY1rVAyNDIBHyCDTjSdc4Z5iebK9KWI9CuQpjEwj23ijCdC59PiqDAvc
	gbfkZDpOnnppqvd2pLC4m0YJza4Nglq2omepVNH0=
Message-ID: <c8c9ce86-d45d-51e5-cf4a-b33ad24c88f2@radix.lt>
Date: Tue, 12 Jul 2022 15:58:15 +0300
MIME-Version: 1.0
Content-Language: en-US
References: <fbb1ece7-fe2b-ff62-b316-43d99271e83f@radix.lt>
To: oss-security@lists.openwall.com
From: Povilas Kanapickas <povilas@radix.lt>
In-Reply-To: <fbb1ece7-fe2b-ff62-b316-43d99271e83f@radix.lt>
X-Forwarded-Message-Id: <fbb1ece7-fe2b-ff62-b316-43d99271e83f@radix.lt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ZohoMailClient: External
Subject: [oss-security] Fwd: X.Org Security Advisory: July 12, 2022

-------- Forwarded Message --------
Subject: X.Org Security Advisory: July 12, 2022
Date: Tue, 12 Jul 2022 15:55:05 +0300
From: Povilas Kanapickas <povilas@radix.lt>
To: xorg-announce@lists.x.org
CC: xorg-devel@lists.x.org <xorg-devel@lists.x.org>, xorg@lists.x.org

X.Org Security Advisory: July 12, 2022

Multiple input validation failures in X server extensions
=========================================================

All theses issues can lead to local privileges elevation on systems
where the X server is running privileged and remote code execution for
ssh X forwarding sessions.

* CVE-2022-2319/ZDI-CAN-16062: X.Org Server ProcXkbSetGeometry Out-Of-Bounds
Access

The handler for the ProcXkbSetGeometry request of the Xkb extension does
not properly validate the request length leading to out of bounds memory
write.

* CVE-2022-2320/ZDI-CAN-16070: X.Org Server ProcXkbSetDeviceInfo 
Out-Of-Bounds
Access

The handler for the ProcXkbSetDeviceInfo request of the Xkb extension
does not properly validate the request length leading to out of bounds
memory write.

Patches
-------

Patches for this issues have been committed to the xorg server git
repository. xorg-server 21.1.4 will be released shortly and will
include these patches.

commit 6907b6ea2b4ce949cb07271f5b678d5966d9df42

     xkb: add request length validation for XkbSetGeometry
         No validation of the various fields on that report were done, so a
     malicious client could send a short request that claims it had N
     sections, or rows, or keys, and the server would process the request
     for N sections, running out of bounds of the actual request data.
         Fix this by adding size checks to ensure our data is valid.
         Fixes ZDI-CAN 16062, CVE-2022-2319.
         This vulnerability was discovered by:
     Jan-Niklas Sohn working with Trend Micro Zero Day Initiative


commit dd8caf39e9e15d8f302e54045dd08d8ebf1025dc

     xkb: swap XkbSetDeviceInfo and XkbSetDeviceInfoCheck
         XKB often uses a FooCheck and Foo function pair, the former is
     supposed to check all values in the request and error out on
     BadLength, BadValue, etc. The latter is then called once we're
     confident the values are good (they may still fail on an individual
     device, but that's a different topic).
         In the case of XkbSetDeviceInfo, those functions were incorrectly
     named, with XkbSetDeviceInfo ending up as the checker function and
     XkbSetDeviceInfoCheck as the setter function. As a result, the setter
     function was called before the checker function, accessing request
     data and modifying device state before we ensured that the data is
     valid.
         In particular, the setter function relied on values being already
     byte-swapped. This in turn could lead to potential OOB memory access.
         Fix this by correctly naming the functions and moving the 
length checks
     over to the checker function. These were added in 87c64fc5b0 to the
     wrong function, probably due to the incorrect naming.
         Fixes ZDI-CAN 16070, CVE-2022-2320.
         This vulnerability was discovered by:
     Jan-Niklas Sohn working with Trend Micro Zero Day Initiative
         Introduced in c06e27b2f6fd9f7b9f827623a48876a225264132

Backporting of the security fixes also needs this commit:
f1070c01d616c5f21f939d5ebc533738779451ac.

Thanks
======

The vulnerabilities have been discovered by Jan-Niklas Sohn working with
Trend Micro Zero Day Initiative and fixed by Peter Hutterer.

--
Povilas Kanapickas
