Received: (qmail 15803 invoked by uid 550); 24 Sep 2025 14:46:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24547 invoked from network); 24 Sep 2025 08:59:56 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1758704346; bh=wY09WE2FyB1jOosn4X7kCpwoqfYI+uNXNYtCTGPWC7g=;
	h=From:To:Subject:Reply-To:Date:From;
	b=vHlv29QiM4rmr2JPyueHSvNaSE6tA8X32GMxg7utvUoeFXhs8/hJ9wQluMJnYL7RI
	 gWFP/Bhm/8GA4E6jkUwikade8IUZEveXR5GJKbqfIFNe4Ji8ysJ/jr+p360qqlhTpb
	 IW1a3RrK4ZLW5QLsDRr7Db3RYMV+1dzRTejpgf0ExLu6fX8BKrBdtkSXBjNPtYBrzt
	 fAxkjoKgOQElpEVSlWjzyjP+eax3aX4uuKWdMSaxOr43jrr3ZMfiFAmIAHbjLOAtS0
	 W2tQ1VA5lrlCIw3BxUsmYoNMpMsMJKtYUWygMzDpbHln9+ZW6O2anwwF0A/kisl3oq
	 +HQwFb9AqA5yQ==
From: Damien Diederen <ddiederen@apache.org>
To: oss-security@lists.openwall.com
Organization: Crosstwine Labs
OpenPGP: url=http://crosstwine.com/dd/gpg_key.txt;
 id=63B7C58080BB03255C13D0C176AF37151F37F9E7
Date: Wed, 24 Sep 2025 10:59:05 +0200
Message-ID: <877bxons4m.fsf@apache.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2025-58457: Apache ZooKeeper: Insufficient Permission Check in
 AdminServer Snapshot/Restore Commands 


Severity: moderate 

Affected versions:

- Apache ZooKeeper (org.apache.zookeeper:zookeeper) 3.9.0 before 3.9.4

Description:

Improper permission check in ZooKeeper AdminServer lets authorized clients to run snapshot and restore command with insufficient permissions.

This issue affects Apache ZooKeeper: from 3.9.0 before 3.9.4.

Users are recommended to upgrade to version 3.9.4, which fixes the issue.

The issue can be mitigated by disabling both commands (via admin.snapshot.enabled and admin.restore.enabled), disabling the whole AdminServer interface (via admin.enableServer), or ensuring that the root ACL does not provide open permissions. (Note that ZooKeeper ACLs are not recursive, so this does not impact operations on child nodes besides notifications from recursive watches.)

Credit:

Damien Diederen <ddiederen@apache.org> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-58457
