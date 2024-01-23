Received: (qmail 11661 invoked by uid 550); 23 Jan 2024 17:51:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27940 invoked from network); 23 Jan 2024 15:43:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=greenbone.net;
	s=MBO0001; t=1706024740;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=+1U6Hsq1CDJ6h5SF99H1oI3bcgTCjiwJZp/wi1/tHc0=;
	b=LuVFFPXxWy+sfKqVzyPI3PZw7jwMd5pV9dYXfwBAXHQTmGgCy2BpUIG1336uQxqjTkCx1+
	1JBV2cdsOZ81o54GyVXFYQhSXpXDXFudcergPUKbDQgY1p//ZQlMXEOt4sG3WDaVy67gcM
	UxrWoxnb+/L+D8EHl/cLifWQNSAkLh9Cz/bLdQ6UKb1JU5tyZsN2L/JhfOUqrHqMHtNNI6
	quTSYSDUnfWt6eoVA1kEWwTs2KPXzpMhBMNf8Nc11uJ5JfaPBkJY83Af584oBI1Dc84B/x
	4KerZQD6md05AxO+zzXGKymEtJwrQ8u2/m9n366sms5kacYGaeqVrCw8D1ZmzQ==
Message-ID: <6ef7a3c6-f9df-4b05-ab99-6f4b8aea4ac8@greenbone.net>
Date: Tue, 23 Jan 2024 16:45:39 +0100
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <76e58427-f95c-0edf-2b96-8df659f0ddb0@apache.org>
From: Christian Fischer <christian.fischer@greenbone.net>
Autocrypt: addr=christian.fischer@greenbone.net; keydata=
 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
 nSh/BvVF+Xp6Dow=
In-Reply-To: <76e58427-f95c-0edf-2b96-8df659f0ddb0@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2023-49657: Apache Superset: Stored XSS in
 Dashboard Title and Chart Title

Hi,

On 23.01.24 14:18, Daniel Gaspar wrote:
> Affected versions:
> 
> - Apache Superset through 3.0.3
> 
> *snip*
> 
> in Apache Superset before 3.0.3

it seems there is some inconsistency in the affected / fixed versions 
mentioned here, in [1] as well as in the following part of the CVE entry 
[2]:

 > affected from 0 through 3.0.3

While [3] doesn't list this CVE yet it seems 3.0.3 is the actual fixed 
version as [4] mentions a relevant entry around an XSS in a "Dashboard":

 > #21822 fix(dashboard): Prevent XSS attack vector (@agl-developer)

which links to [5] as the relevant PR.

[1] https://lists.apache.org/thread/wjyvz8om9nwd396lh0bt156mtwjxpsvx
[2] https://www.cve.org/CVERecord?id=CVE-2023-49657
[3] https://superset.apache.org/docs/security/cves/
[4] 
https://github.com/apache/superset/blob/3.0.3/CHANGELOG.md#303-tue-jan-9-164807-2023--0300
[5] https://github.com/apache/superset/pull/21822

Regards,

-- 

Christian Fischer | PGP Key: 0x54F3CE5B76C597AD
Greenbone AG, Neumarkt 12, 49074 Osnabrück, Germany
https://www.greenbone.net/
Company registry: Amtsgericht Osnabrück, HRB 218768
Board of directors: Dr. Jan-Oliver Wagner (CEO), Elmar Geese
Chairman of the Supervisory Board: Lukas Grunwald
