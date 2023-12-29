Received: (qmail 7556 invoked by uid 550); 29 Dec 2023 15:17:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9960 invoked from network); 29 Dec 2023 14:34:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oddnet.de; s=DKIM001;
	t=1703860544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0mntnRXsDvvjM+1MwoJPvh6IkQxyWr582ckf+Y676eA=;
	b=SxnKdfyEY0vKHQgzjNuUCVtk0qpYP+olXus0/5QTF0l15vUv6VGSTod8QToHmUxrNVISst
	RaF/4X6YhLp84krUuq7arKK8zz/ObfnEt5ex8bgnVthGm0mVl6AIwVxD0Iyum/pOYTXqWG
	RcmOg6hDkvsc/u4QXEket4YaBlHiVb79AJKNghGGCruOuop/zO6wOBviARh7VbJLQz3jCt
	lvizrvU208U/XD0i+hCdM0is7IbAnHov+z+m2x5+iYmxZHdLYYniTPZI46Uk+QZQtSaz59
	q0U7i2WM6pKi+fvGt3FAmyDynJy0dcr6CQFhkp0PsZLptu0P29RcCpCq2V44Pw==
Message-ID: <658ed932.4d58967e.bm000@oddnet.de>
In-Reply-To: <658c0eaf.45f2b459.bm000@oddnet.de>
From: =?ISO-8859-1?Q?Ingo=20Br=FCckl?= <ib@oddnet.de>
To: oss-security@lists.openwall.com
Date: Fri, 29 Dec 2023 15:34:07 +0100
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=ISO-8859-1
X-Mailer: blueMail/Linux 1.5
Cc: Markus Koschany <apo@debian.org>
Subject: [oss-security] xarchiver: Path traversal with crafted cpio archives

With

https://github.com/ib/xarchiver/commit/85dcd9058a528181c786da1899b68110301d1aa1

xarchiver rejects all unmodified cpio versions affected by path traversal
vulnerability.

It is recommended that all users upgrade to xarchiver 0.5.4.22.

Ingo
