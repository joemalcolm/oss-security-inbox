Received: (qmail 19712 invoked by uid 550); 9 Apr 2025 23:24:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3834 invoked from network); 9 Apr 2025 21:24:06 -0000
Authentication-Results: mail.eu-relay.fedcom.net; dmarc=pass (p=quarantine dis=none) header.from=lindev.ch
Authentication-Results: mail.eu-relay.fedcom.net;
	dkim=pass (1024-bit key; unprotected) header.d=lindev.ch header.i=@lindev.ch header.a=rsa-sha256 header.s=default header.b=b9BxbBEA;
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lindev.ch; s=default;
	t=1744233834; bh=0Qi6+DoW81JSY5IpTgY9B6KdP9HBaeuIHSmWwSr+hiQ=;
	h=From:In-Reply-To:References:Date:To:Subject;
	b=b9BxbBEAep41lvRBxkTbMsrZzMjivaLGzncjJEt+CSuCDY3Qmmpe+P6oCh5MC4h3x
	 XvXolgpGQIglx8qc6LhOtM9/NQ+aWs2kR4v5oHlN6dDZgAimsntQz7aR68XiaSY1fY
	 0Y8sxCo7hOclUTuVerDr96+zIlUC0FAmgySHv0N4=
From: =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>
In-Reply-To: <94ed5662-d24b-40e4-b832-6228a7e473df@pipping.org>
Content-Type: text/plain; charset="utf-8"
X-Forward: 127.0.0.1
References: <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn> <94ed5662-d24b-40e4-b832-6228a7e473df@pipping.org>
Date: Wed, 09 Apr 2025 23:23:53 +0200
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Message-ID: <543-67f6e580-2d-5396a400@170623133>
Content-Transfer-Encoding: quoted-printable
Subject: =?utf-8?q?Re=3A?= [oss-security] =?utf-8?q?CVE-2025-31344=3A?=
 =?utf-8?q?_giflib=3A?= The giflib open-source component has a buffer 
 overflow =?utf-8?q?vulnerability=2E?=

On Wednesday, April 09, 2025 23:11 CEST, Sebastian Pipping <sebastian@pippi=
ng.org> wrote:
>    https://github.com/openwrt/packages/issues/26277

Except for https://sourceforge.net/p/giflib/bugs/179/, all the issues seem =
to be in gif2rgb, which is, according to the giflib maintainer, "old and cr=
appy code", and TBH, other than as a no-dependency test tool for giflib, it=
 is fairly useless (just use ImageMagick or a similar tool to do the gif to=
 rgb conversion).
Simply removing the gif2rgb tool is probably an acceptable solution.

ttyl
bero

