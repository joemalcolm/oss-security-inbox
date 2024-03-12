Received: (qmail 1217 invoked by uid 550); 12 Mar 2024 11:40:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13696 invoked from network); 12 Mar 2024 08:32:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=x17.eu; s=20140827;
	t=1710232618; bh=R4WBzMJkR0lG+bOLydQBYYSk+oMqTrS7mhGsga0YU0o=;
	h=Date:To:From:Subject;
	b=F1qqH648ZqRGz9HhdynkpahLL6xrsmbspe7KcgJ+MflqF0Wlu1ubL21C70k5HSx2H
	 E8Cq+er+/IRQohqDeYhX13esoU9SqzCt+nla86GGTJxxyEA0wEmtlh9k+SYXm8T6oC
	 Jb5HWH/6kFKKId5lgRGJQakWNJGNdtTaApKou3PY=
Message-ID: <32aa62ee-f364-45d2-a370-0e6963a31792@x17.eu>
Date: Tue, 12 Mar 2024 09:36:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Content-Language: de-DE, en-GB
From: daniel <sd@x17.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2023-51786: Lustre: incorrect access control resulting in
 potential data compromise or privilege escalation

According to the post on the Lustre announce mailing list [1], a 
vulnerability has been fixed which provides access to files and folders 
for which a user has no permission for.

<quote>
Scope of Issue:
Users can gain access to files/folders in the filesystem that they 
should not have permission to access based on their user/group ID file 
access permissions, leading to potential data compromise or privilege 
escalation. This does not allow access to files that are outside a 
subdirectory mountpoint/nodemap that are not visible in the client 
mountpoint.
</quote>

Only specific combinations of Server, Client and Kernel are vulnerable.
The issue is mitigated by any of the following:

   1.  Disable User Namespaces (see below)
   2.  Upgrade all clients to a Lustre version including a fix (e.g.. 
2.15.4)
   3.  Upgrade servers to a Lustre version including a fix for this 
issue (e.g. 2.15.4)

A detailed description of how to disable user Namespaces is included in 
the original posting [1].

I was unable to pinpoint the exact change which fixed the issue. It is 
also noteworthy, that the issue was silently fixed.
Date of the fixed version 23 Dec 2023 and date of the security 
announcement 27 Feb 2024.

Affected versions:
Lustre Server version: 2.14 – 2.15.3
Lustre Client version: 2.12 – 2.15.3

References:
[1] 
http://lists.lustre.org/pipermail/lustre-announce-lustre.org/2024/000270.html
https://nvd.nist.gov/vuln/detail/CVE-2023-51786
