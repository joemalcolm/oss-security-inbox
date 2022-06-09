Received: (qmail 27917 invoked by uid 550); 9 Jun 2022 11:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5701 invoked from network); 9 Jun 2022 03:19:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1654744734;
	bh=TVb6bE4wa998Y5Wu6FJWKynU6Okduvr4j6hkN9F349o=;
	h=From:To:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type;
	b=ZFVWYGVkVD4hRvZhQ0x87aiEieR9jarieIvkYVXrIH9eI5OQyi5wjtlPN43t1CXkL
	 riYUZnaafdZqV2dIarAY01+XdSNYLgBe+PFZdHMasa4tR7EmfAAt41If/QWh/kpmq/
	 n1kfMWkDxDZ7eDhLO9adMPyig08rDkGBZfhPkpJ4XJb++pbQrSgXkjrMZFAINJoLV5
	 o0q+QJxg7rv8YMLufX/Y6Q0Nv15nEZKS43Qf/yevm/bJ4BLKufgGZUszDcme57pX75
	 7eUt8vWcUnrxyVAporVWhtP/b/rhbyNtWGDVEDTn0OucpF5rxThCJZFV5M8RxM3h4j
	 EbV17Y8ncj5wA==
From: Alex Murray <alex.murray@canonical.com>
To: Matthias Gerstner <mgerstner@suse.de>, oss-security@lists.openwall.com
In-Reply-To: <YqCar9IFTyPnq2o0@f195.suse.de>
References: <YqCar9IFTyPnq2o0@f195.suse.de>
Date: Thu, 09 Jun 2022 12:48:48 +0930
Message-ID: <878rq634o7.fsf@graphene.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] firejail: local root exploit reachable via
 --join logic (CVE-2022-31214)

On Wed, 2022-06-08 at 14:48:47 +0200, Matthias Gerstner wrote:

>
> Upstream Bugfix
> ===============
>
> Upstream published a comprehensive bugfix for this issue just today [2].
< ...
> [2]: https://github.com/netblue30/firejail/commit/27cde3d7d1e4e16d4190932347c7151dc2a84c50
>

FYI it looks like upstream made two subsequent fixup commits as well:

https://github.com/netblue30/firejail/commit/dab835e7a0eb287822016f5ae4e87f46e1d363e7
https://github.com/netblue30/firejail/commit/1884ea22a90d225950d81c804f1771b42ae55f54
