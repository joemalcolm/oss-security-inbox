Received: (qmail 26528 invoked by uid 550); 9 Apr 2026 21:16:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22151 invoked from network); 9 Apr 2026 19:48:27 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764048; bh=Ai72KMnLYJNWBfytJN/h42seE8prus21k2mF0lkcLPc=;
	h=Date:To:From:Subject:From;
	b=jeZnAzX1jZ1Ef4H/fHNGQQLfJrNcObrO8/BHJmx2kAIdJJfpLIMPMJGqFR0bfYGEl
	 huNzqqTMcGUhx3xAivGHcj8+QpD1kJkyCS9DRygMe/ZqQ9tRozrKGrcxIomBkltYWb
	 GAdyWmusZssCmqxdcLVpNKS8duH1nkJBWRv8pqjDhJCxxH7wBoETUZ1w31Hfhwnp72
	 xFOuSMzAroobZQg57C8f7vbTPDBihNVN951ie62UytxWjaxiE6/VBbIBtFdFOHceXU
	 Fa9X0KbUoytlyfD7oJNm8HMG47Uz8xTPLylsmzevfIE0FYl2vo0gfLnZZFOXrIsn2o
	 QDowCba8yq51g==
Message-ID: <ea2f3133-20cc-41e2-b8af-be42727d4a97@apache.org>
Date: Thu, 9 Apr 2026 20:47:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-25854: Apache Tomcat: Occasionally open redirect

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.18
- Apache Tomcat 10.1.0-M1 through 10.1.52
- Apache Tomcat 9.0.0.M23 through 9.0.115
- Apache Tomcat 8.5.30 through 8.5.100
- Apache Tomcat through 7.0.109 unaffected

Description:

Occasional URL redirection to untrusted Site ('Open Redirect') 
vulnerability in Apache Tomcat via the LoadBalancerDrainingValve.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.18, from 
10.1.0-M1 through 10.1.52, from 9.0.0.M23 through 9.0.115, from 8.5.30 
through 8.5.100.
Other, unsupported versions may also be affected

Users are recommended to upgrade to version 11.0.20, 10.1.53 or 9.0.116, 
which fix the issue.

Credit:

gregk4sec (https://github.com/gregk4sec) (finder)

References:

https://lists.apache.org/thread/ghct3b6o74bp2vm7q875s1zh0dqrz3h0
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-25854
