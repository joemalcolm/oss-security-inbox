Received: (qmail 25956 invoked by uid 550); 9 Apr 2026 21:15:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22119 invoked from network); 9 Apr 2026 19:48:26 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764018; bh=wIZgayT867v3tKZjNwJ0ciLmQpgx/JL9Zr5FvW/lGA0=;
	h=Date:To:From:Subject:From;
	b=iVDILfcxhP+epARuqInaB212OuptDe9dLxQd5c4LcM4qq5slgFVlvIIce4umI91HR
	 SjaV+hvc+bCgYlfogPq7oOxzxiQT0ToZrjOpbajdyI4HSVczxhtuftyoXHTLx1pE5U
	 SWdkwi4ICpHfYpjcFN/7IZSCSKUuc2SLrJUMKIet/vbIoRNHZC7Qi7UhzTTg6Ar1wo
	 YLhEMsI8e9Aa060a3+vHrn6uDuUZh+Y67G8dOureNGMJ67IzADVpnpywu29JcTw49J
	 Ct57VWLDhSX+hS1JVLl4VBAG3DuAgp7UcLisUMlo8lXr/7pwCw8cc+hd87fFnUVR7N
	 fqMQPMjxyPvEQ==
Message-ID: <fe8a4819-65ee-49f8-b853-fbf5edc5dde7@apache.org>
Date: Thu, 9 Apr 2026 20:46:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-24880: Apache Tomcat: Request smuggling via invalid chunk
 extension

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.18
- Apache Tomcat 10.1.0-M1 through 10.1.52
- Apache Tomcat 9.0.0.M1 through 9.0.115
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109
- Apache Tomcat before 7.0.0 unknown
- Apache Tomcat 8.0.0-RC1 through 8.0.53 unknown

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request/Response 
Smuggling') vulnerability in Apache Tomcat via invalid chunk extension.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.18, from 
10.1.0-M1 through 10.1.52, from 9.0.0.M1 through 9.0.115, from 8.5.0 
through 8.5.100, from 7.0.0 through 7.0.109.
Other, unsupported versions may also be affected.

Users are recommended to upgrade to version 11.0.20, 10.1.52 or 9.0.116, 
which fix the issue.

Credit:

Xclow3n (finder)

References:

https://lists.apache.org/thread/2c682qnlg2tv4o5knlggqbl9yc2gb5sn
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-24880
