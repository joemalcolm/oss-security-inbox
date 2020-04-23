X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3711" "Thursday" "23" "April" "2020" "15:10:55" "+0300" "PromiseLabs Pentest Research" "pentest@promiselabs.net" "<ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>" "117" "[oss-security] spoofing of local email sender via a homoglyph attack" "^Date:" nil nil "4" "2020042312:10:55" "[oss-security] spoofing of local email sender via a homoglyph attack" (number mark "        pentest@prom Apr 23  117/3711  " thread-indent "\"[oss-security] spoofing of local email sender via a homoglyph attack\"\n") "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>" ("<20200422152047.3196780D981@smtprhmv1.mitre.org>" "<2843537f5deb3a7987c8485bcc56a260@promiselabs.net>") nil nil nil nil nil nil nil "[oss-security] spoofing of local email sender via a homoglyph attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14087 invoked by uid 550); 23 Apr 2020 12:22:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1727 invoked from network); 23 Apr 2020 12:11:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=promisedev.com; s=default; h=Message-ID:References:In-Reply-To:Subject:To:
	From:Date:Content-Type:MIME-Version:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=f10nbHtSMMw4UTvfQMJEbIWxAjVSDR5lPIonU2PfmQw=; b=iq7aJt7SAzCzOFXl0gphYMtnh
	44+zhR6YsQr6pFrkRqbpSRdLw2BWP6wu/h8UQYbQioZLkXWZ/vwl/g68oWk8z6NGRjEOxHs0628gy
	lmngWezx+xlDVSz+ZKW4TgLgVrNrtAGTOQjhiAj+YQgqX8+gMLbCj9bGScdFqIGlSX2+SRtNFEI9y
	GfbbapZNN0XLjp4U3ekFRlVNou9HRIK85/MrRMjeINGICq6EEuy1sxVuFbl89U/gCD74WDiJ4euZY
	sKloUECMw5v+hW1i6A1PYBTg7cXmJAD0A5CtLzMyov6xeXD5YdFrvdcg8WxWMJ5RRcANaJOLKeYaV
	3nwsyQMmg==;
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="=_33c6d797d63a03fd3cf576564cc49594"
Organization: PromiseLabs
In-Reply-To: <2843537f5deb3a7987c8485bcc56a260@promiselabs.net>
References: <20200422152047.3196780D981@smtprhmv1.mitre.org>
 <2843537f5deb3a7987c8485bcc56a260@promiselabs.net>
Message-ID: <ef4d2b65970d80e81fc0294aca5a6a30@promiselabs.net>
X-Sender: pentest@promiselabs.net
User-Agent: Roundcube Webmail/1.3.8
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - lego.superhosting.bg
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - promiselabs.net
X-Get-Message-Sender-Via: lego.superhosting.bg: authenticated_id: pentest@promisedev.com
X-Authenticated-Sender: lego.superhosting.bg: pentest@promisedev.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Date: Thu, 23 Apr 2020 15:10:55 +0300
From: PromiseLabs Pentest Research <pentest@promiselabs.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] spoofing of local email sender via a homoglyph attack
To: oss-security@lists.openwall.com

--=_33c6d797d63a03fd3cf576564cc49594
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII

Hi,

The provided versions seem to be wrong on this request, sorry for this.

The exact version is from the postfix-2.10.1-7.el7.x86_64 package, thus
the version stated in the CVE should be 2.10.1.

---
PLPR:
Plamen Dimitrov
Penetration Tester, CEH & OSCP certified

Promise Solutions LTD
Penetration Testing and Managed Security services

https://www.promisedev.com
https://www.promiselabs.net
+359 883 22 05 12

On 2020-04-22 18:20, cve-request@mitre.org wrote: 

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> The CVE ID is below. As far as we know, 3.3.0-1 is not a commonly
> used version. Please see the "[Reference]" section below.
> 
>> [Suggested description]
>> A certain Postfix 3.3.0-1 package could allow an attacker to send
>> an email from an arbitrary-looking sender via a homoglyph attack,
>> as demonstrated by the similarity of \xce\xbf to the 'o' character.
>> 
>> ------------------------------------------
>> 
>> [Additional Information]
>> Postfix allows an email from unsanitized input, pretending to be from
>> an existing user on the mail system, which may look exactly the same.
>> For example, it is possible sending an email using the hex character
>> \xce\ xbf, which looks exactly like the letter 'o'. In case the user
>> john.doe exists on the mail server, postfix would not allow to send an
>> email from this email account unless an unauthorized attempt is made.
>> However, in case we substitute the letter 'o' with the hex character
>> \xce\xbf, it will look exactly like it's being sent from john.doe,
>> although john.doe (j<\xce\xbf)hn.doe) is actually different from
>> the other.
>> 
>> ------------------------------------------
>> 
>> [Vulnerability Type]
>> Incorrect Access Control
>> 
>> ------------------------------------------
>> 
>> [Vendor of Product]
>> postfix
>> 
>> ------------------------------------------
>> 
>> [Affected Product Code Base]
>> postfix 3.3.0-1 - 3.3.0-1
>> 
>> ------------------------------------------
>> 
>> [Affected Component]
>> postfix mail server
>> 
>> ------------------------------------------
>> 
>> [Attack Type]
>> Remote
>> 
>> ------------------------------------------
>> 
>> [Discoverer]
>> d7x, Promise Solutions LTD / www.promiselabs.net [1]
>> 
>> ------------------------------------------
>> 
>> [Reference]
>> https://www.promiselabs.net
>> https://repology.org/project/postfix/versions
>> http://www.postfix.org/announcements.html
> 
> Use CVE-2020-12063.
> 
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
> http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
> 
> iQIcBAEBCAAGBQJeoGCRAAoJEPNX0OmQPkAIyDAQAI56GXHXS1AJQVx2nBBJosam
> 6d/mtkM+LozhzpBVydzed58z8P/Q/qGWXzdT0mmIvq+X2WQp7pvCrUH7l9wkniH+
> 0FD0c+LO2T/oU7a6sqZ7EHC0V3GPKu/F1W+reNB9V0v8LyAfHLE50AdvHZZjGIHc
> lUvw/hqt+7NqpR2HFyjyA3sb1K8ZiqBcmxwV9ecECUx/smXFpjtdV9hTz7A9mgj8
> ggkSjrkMQBsYqiU2OvPEfn4aKskavqTYLqVMxztieICoDPvNAGj+lnZIz4o6WIig
> d2lqtZ+/8fPVUaYGCikacMNAE4BGs61BQT7tuYdbMt8+wWnB+IU84hBC7Lb7OE8L
> 7O59MmmIF/C/jaaSmwy+FlSk+ZE95Q+SV7CHoYMLeongByo5drvqVuK79t5KVGDO
> L6m85ta3Jh/zzQ6srg6REgPuM1Q2cFwu7FmWg4vAEamCwHnjv6D6xRBRO4lBm9V1
> Upek80hF+BI/JwvKlpng1pzKrClqvzGdeZA4kw5MLoiEN19cf2W85nO0L+cpoLbQ
> ixz/TarYDG9QQ89U3aJcrLDMH6hGsPKmTvD8dy5sVh+J3qK/zvj/eR98xy5jbKAn
> pt57X5qFkfu+Sf9yrC3RFBiNTJ/UB4vb0/25g8M4e+vUMb/kkNxbVVNoAg56Wl1M
> NLgC/CCd32QpiUFehvF2
> =T4/w
> -----END PGP SIGNATURE-----
 

Links:
------
[1] http://www.promiselabs.net
--=_33c6d797d63a03fd3cf576564cc49594--
