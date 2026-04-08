Received: (qmail 5993 invoked by uid 550); 8 Apr 2026 16:51:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16115 invoked from network); 8 Apr 2026 16:12:01 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (mail.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=rsa2048; t=1775664697; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=8HuR0UQiQq3TXWvgL1kF40MKlXELsGaWhx3BddVsQ1U=; 
 b=daSyhfxEbn3AHQQz3K0mLiijiJZ8nKWpMV24MdMSgOCtNU+9ZYLSPbkt
 l4T3JOtHy36LA25BDsDk0Bujj0eoTWQ0G3U5ruEJSumsD+dEQT11Jo43Dp
 uhv9GbRiTKM0zNmk1sgAiY29VGBBZYg1a7c6HkTz+3qHqSD0TijjGe7S+U
 hhKD9OxbT5rK1iS5aTDYw/0TrW5QizhI9mHrXJ58bPoAWX/EwtRp5szFj2
 UgZ+jhEcjZgAlbUZGR8RIsxAt3qQTXsoRD/+TUHLAg+Elm4BjEGHAfo4w5
 OKAoAr+ftAUnEIn0E1fWCfd8kPPdCTnzjCPi8Fci5pgqbBbhXMcNDA==
Date: Wed, 8 Apr 2026 12:11:33 -0400 (EDT)
From: Stuart D Gathman <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <20260408021908.GA8285@openwall.com>
Message-ID: <7f70dce9-af6-4c25-5b2f-544f8ccd7ba@gathman.org>
References: <20260408021908.GA8285@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1085201697-1965025136-1775664697=:21237"
Subject: =?UTF-8?Q?Re=3A_=5Boss-security=5D_Fwd=3A_=5Bsiren=5D_Severity=3A?=
 =?UTF-8?Q?_High_=E2=80=93_Potential_Malicious_Campaign_Underw?=
 =?UTF-8?Q?ay_Targeting_Open_Source_Developers_via_Slack?=

--1085201697-1965025136-1775664697=:21237
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Wed, 8 Apr 2026, Solar Designer wrote:

> Also seen at https://lists.openssf-vuln.org/g/siren/message/7

> Subject: [siren] Severity: High – Potential Malicious Campaign Underway Targeting Open Source Developers via Slack
> # Overview #
> The community has received reports of an active social engineering
> campaign targeting open source developers via Slack (including
> ToDoGroup and related communities).  In the reported incident, an
> attacker impersonated a well-known Linux Foundation community leader
> and attempted to lure the victim into following a malicious link:
etc

As listed in this and other recent OSS emails, platforms exploited included
Slack, Teams, Google, etc

The method is to create a convincing fake account on the centralized platform.

Is this a weakness that is aggravated by centralized platforms?

Federated protocols like SMTP, Matrix, XMPP, etc would require a
deceptive domain name (like the legendary lBM.com of Arial font fame)
for a similar attack.  (Fully decentralized protocols like SSB 
just have pubkeys - but I suppose users might get fooled by a new
pubkey with icons and earlier messages that look like a party
being impersonated.)

Is this evidence for a general recommendation against centralized
platforms for open source development?  More to the surprise of
my preconceived ideas - are fully decentralized protocols subject
to similar social engineering?  There is not much difference between
a Facebook internal account number and a pubkey for most end users.

The issue with federated protocols is that any trusted CA can forge
any TLS cert - a "serial reliability" problem.
--1085201697-1965025136-1775664697=:21237--
