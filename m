Received: (qmail 22244 invoked by uid 550); 13 May 2026 22:38:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19615 invoked from network); 13 May 2026 22:26:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778711163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hu0GvRtBiKogN2IsfQwZtuV8X1mVLI8OUp0+GENWxqY=;
	b=pSa55GTO6VAd2mj67JZGTPYJQrHTnpm4B7vH8XyP+zjpar2wMblGmR/5ZsDRZCam2VsYMN
	G8gsqmXxG8vdaVhGqZ43W1xcyxZdf/uCreLdFjm6OTZPSBjAxvnSGXe7iHmjNYFywQSXiR
	9dqujy6ED8Ljac7ie8Kr7cjSN34ovCVIAFJO04nXXohqNLsO93rRO0MKALZdYDOobVhw1u
	o7M1ZzYyDjxOhFwJoCFo7PZyfddBcGb4bzwWo5C0oKzXsVQA8wzOFKlzHTNAfMmccDeNuc
	DBbGUQLbnoOxa758uLIjJn3n7V+dyRWUWjL8B/dsbq6bcmsKEe+AE2Nq9CozPA==
Message-ID: <cdc064f9-a872-42de-8f20-7a3117a99a3c@cpansec.org>
Date: Wed, 13 May 2026 23:26:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGqoZTB6d47RLOVzT8A+WMneBFMg7rVjm6HX+yTIGn1JbXTWFLFPP/gZLL82gGcpSbrgj0b4fLsemQIZhIU3hViKELm1StS2BG2Bcysoz5ztG0SMfyjsXWY4zXwiahMbVw3Pn6t7eMf32INBqiwoRHTYpxbEfGv7B89pklGVakk3JmdPpVhgx29Bvhue1m+N2UGd0TwxwxffaJ2wtrjacSdXSDbcvKR5R6HPQx6dspZ4mzdaMsa3IF7nBx+Z3yFyakTrdK8Mote+P/jZzHJjFpFrnsf5ToaBR9odmZCzDInLntgUGfALGhcSEQ73du9t2qbpUs9eJaen1Fg79Qi+uSsKXPWPAav7U4bzTkj3jWZ8zQCGaELdA+POBzL9EsJcKrJEjitqL6WsN8SPsLrS7OVralSSJ0fFzZsj+j/FHp4wbnJeUR/GbjwvZ0YnptXuNz1gnftKgQJPahU3g8zOb8viG6wEBQ/E/Wps64SJxVqZ0P6plpP2/xheWJdIFIE9WavrpZoiFJPq9GW0EL+7sA5TdbMhcrRezh7JJ1E8LYdh0TW3pItHKB045mYmG2wE826Hs+y3iQSdcf7evasJ/OycarWoCqy1Hj7FqbBpPqP7wry9gmVUKFW4k1kKzP7WXraZw63VVmAn1XJlpcn94e+9nL43DhA9Huqk315kGg3JQ
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-8500: Web::Passwd versions through 0.03 for Perl is
 vulnerable to RCE

========================================================================
CVE-2026-8500                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8500
   Distribution:  Web-Passwd
       Versions:  through 0.03

       MetaCPAN:  https://metacpan.org/dist/Web-Passwd


Web::Passwd versions through 0.03 for Perl is vulnerable to RCE

Description
-----------
Web::Passwd versions through 0.03 for Perl is vulnerable to RCE.

Web::Passwd is a small CGI application for managing htpasswd files
using the htpasswd command.

The user parameter is not validated or escaped, and is used as the last
argument on the command line, allowing for command injection.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
   Command

Solutions
---------
This application has not been updated since 2007 and appears to have
been abandoned. Use other solutions.


References
----------
https://metacpan.org/release/EVANK/Web-Passwd-0.03
https://httpd.apache.org/docs/current/programs/htpasswd.html

Timeline
--------
- 2007-02-08: Web::Passwd 0.03 was released



