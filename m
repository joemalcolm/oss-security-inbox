Received: (qmail 24560 invoked by uid 550); 28 May 2026 08:51:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30633 invoked from network); 28 May 2026 08:12:12 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1779955871; bh=XRZDchTXiPDxW8YdaINWpBoeHP/u6ch2Aq0b0S3RgDI=;
	h=Date:To:Cc:Subject:From:From;
	b=DHHJ8IKfQP7eYN2919swWs9A956K3lS/oHW9uiIErSY3IE6WHDjJKRV26T1fx644F
	 bQ7eiW73fyv3+ZtqgQst3Y2T+LqyRpB5QOkDOCj6Ch35KXrcX3a+zRIUwrR83bnzcW
	 dCYXiZkXQS5N+tzQvlMW9rKH0Tnt6Dh9EqX740YwE9u3ZEHSo2OEzxdwVaDjNWQpA+
	 1abrv8FRD4PqXIOHCoUXUqF7X7stxhkO78dTjTYwAq/Na888sPSqmATbKjsfM8FhBB
	 fpl57ReGJh6GTUzygdZd+zx6llsZcwD8rrEZFrjqxHL9I0zzuUF6KtIGBNDxfD9wrQ
	 3UW5sZlqh2fiA==
Content-Type: text/plain; charset=utf-8; format=flowed; delsp=yes
Date: Thu, 28 May 2026 11:10:52 +0300
To: security@apache.org
Cc: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Transfer-Encoding: Quoted-Printable
From: zstan <zstan@apache.org>
Organization: asf
Message-ID: <op.3p0w0eboo4kf3i@arzamas-pc>
User-Agent: Opera Mail/1.0 (Win32)
Subject: [oss-security] CVE-2025-48977: Apache Ignite: Rest Http default Arbitrary file read vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Ignite from 2.0.0 through 2.17.0.

Impact:
The attacker may be able to create or overwrite critical files that are=20=
=20
used to execute code, such as programs or libraries.

Description:
Apache Ignite previously validated paths with a simple check like:
src.path().startsWith(ctx.config().getIgniteHome())
This was unsafe because attackers could bypass it using path traversal=20=20
patterns such as:
../, ../../ and so on

As a result, a rest request could potentially access files outside the=20=20
Ignite home directory.


Mitigation:
=E2=80=A2 All Ignite versions: make sure there are no vulnerable classes am=
ong
your custom code used in Apache Ignite.
=E2=80=A2 Ignite 2.0.0 through 2.17 : upgrade to Ignite 2.18

Credit:
* The vulnerability was discovered by m1sn0w, Pavel Tupitsyn

