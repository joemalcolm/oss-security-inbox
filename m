Received: (qmail 27738 invoked by uid 550); 2 Jun 2025 05:27:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25906 invoked from network); 2 Jun 2025 05:27:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1748842009; bh=gSTWxWZ6A9oeqtG24ArhuMmjnpqomuYlzD89g9y2vD8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=pLk3rvcTYgbR7xdcYfm3YcqANBCxpdxPOmYcyEYaay17FzYGSRac68NVeT9b3zxm/
	 P9oPsF2+J5Bq3Z9W5YyWPFSj6fqO2xoYcHYllYR63GoYsF+rFA7Zhu7/yATH0ZDXAM
	 NHIrbjEbSR5dQRPOOxoXduIpRykzqTYZjTCBh1EflUbcBW7Ju21ov0KuttQzgW4Ijm
	 R4q6FXnE6as6V0VfHU6aq+IQatxhOZQkn5WNp0lauDvAwTYHqHnK+3PRmK/5BZwmAM
	 iNfX55UsECJXeXv3H2efj/L+SWjk/yKxFSPAtkYJ5C6+cdofaMaFg9WthXADMBlXLr
	 7sbiqTTMcning==
Original-Subject: Roundcube webmail: Post-Auth RCE via PHP Object Deserialization
 reported by firs0v
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Mon, 2 Jun 2025 07:26:47 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250602072647.54580b61@hboeck.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Roundcube webmail: Post-Auth RCE via PHP Object Deserialization
 reported by firs0v

Hi,

Roundcube just published an update that appears to contain an important
security fix:
https://roundcube.net/news/2025/06/01/security-updates-1.6.11-and-1.5.10

"Fix Post-Auth RCE via PHP Object Deserialization reported by firs0v."

Even though it says "Post-Auth", impact is likely high, as for a
webmailer, it is a very common scenario that many people are
potentially authenticated. (And it may just be another XSS away from
non-authenticated RCE.)

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
