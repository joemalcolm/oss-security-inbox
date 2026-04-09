Received: (qmail 28176 invoked by uid 550); 9 Apr 2026 21:16:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25798 invoked from network); 9 Apr 2026 19:50:21 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764212; bh=GlZBiV9/u1k9OejqUsic57NU/7HG3dK69CWjdC3w6Pc=;
	h=Date:To:From:Subject:From;
	b=77lsl0b8yFnC8Yd+yQU04cNNcPlveoy9OtdoXK1quajGnlrr02lSjFIt+2l+WKjRF
	 1bQZPkXNiUGWMFe5x5vmDLyvaAYe2t2hdDl5AmgeAEXaWLHCkT2T20AwnoPcHWzWN8
	 nly+P7r87b3kj6uXuoW1zc/jY62983TWVLaaA5HqgRkwyfhW0RR9wQ+SdqfZMhx1Tj
	 GxAZN+7ZY1H3/amynf6aydeQ7XC9A3U1Lr2MzARdzlklGGFVKuYiUNr1i4ggAO+7wH
	 MVnZ+/nkAdY0dUvWlP8NKNvrnZU1UaZmFQPHLmfwJZNXeJepOQtbcLWIGEkLoFJ0LA
	 mPvSPIe3ZjPIQ==
Message-ID: <d1a2220d-54bc-4571-b1cb-932705d6eb98@apache.org>
Date: Thu, 9 Apr 2026 20:50:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-34483: Apache Tomcat: Incomplete escaping of JSON access
 logs

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.20
- Apache Tomcat 10.1.0-M1 through 10.1.53
- Apache Tomcat 9.0.40 through 9.0.116
- Apache Tomcat 8.5.84 through 8.5.100
- Apache Tomcat through 8.5.83 unaffected

Description:

Improper Encoding or Escaping of Output vulnerability in the 
JsonAccessLogValve component of Apache Tomcat.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.20, from 
10.1.0-M1 through 10.1.53, from 9.0.40 through 9.0.116.

Users are recommended to upgrade to version 11.0.21, 10.1.54 or 9.0.117 
, which fix the issue.

Credit:

Bartlomiej Dmitruk, striga.ai (finder)

References:

https://lists.apache.org/thread/j1w7304yonlr8vo1tkb5nfs7od1y228b
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34483
