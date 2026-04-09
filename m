Received: (qmail 28451 invoked by uid 550); 9 Apr 2026 21:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30225 invoked from network); 9 Apr 2026 19:52:31 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764275; bh=/DyZoYc+vPCKZmg/Pr08iIkXAvqsoHBL8za1SmG3zv8=;
	h=Date:To:From:Subject:From;
	b=SR1G5unpGff5UizC9vB14UZOww7gn9N1QP2PJh8TV88LXR/7OJOxewdGUUXeC72RE
	 eeHn8phjrnNu7mTqWD0Oe53r0geIS09N5jD8YrWSQB4ZLJszFi+4nI4Desav5/mkhd
	 Nt1+RWn4aPtE/YvXHt049imgISRs59Enp8B58/0oDlZByDaRGB01449EeQjhjDmqOq
	 NHSkcFaWi8n89xQNRZ3pmpje9BtL4PKz9Ai1VF+SZvbvP4iEznKTrXItmpZGRkfzxA
	 6R9DmWAyxu598uFuoqig7JttDlpi6n6GwW7nEDrdWMrvsMtEsQs5ReyoAQCQ4EusWl
	 NO5A0GW5uLthg==
Message-ID: <a0f1d0ae-afc7-47f2-b005-661178871229@apache.org>
Date: Thu, 9 Apr 2026 20:51:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-34487: Apache Tomcat: Cloud membership for clustering
 component exposed the Kubernetes bearer token

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.20
- Apache Tomcat 10.1.0-M1 through 10.1.53
- Apache Tomcat 9.0.13 through 9.0.116

Description:

Insertion of Sensitive Information into Log File vulnerability in the 
cloud membership for clustering component of Apache Tomcat exposed the 
Kubernetes bearer token.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.20, from 
10.1.0-M1 through 10.1.53, from 9.0.13 through 9.0.116.

Users are recommended to upgrade to version 11.0.21, 10.1.54 or 9.0.117, 
which fix the issue.

Credit:

Bartlomiej Dmitruk, striga.ai (finder)

References:

https://lists.apache.org/thread/4xpkwolpkrj8v5xzp5nyovtlqp3y850h
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34487
