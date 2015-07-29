X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1184" "Wednesday" "29" "July" "2015" "14:32:51" "+0100" "Kiall Mac Innes" "kiall@macinnes.ie" "<55B8D603.6070007@macinnes.ie>" "45" "Re: [oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" nil nil nil "7" "2015072913:32:51" "[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" (number mark "        kiall@macinn Jul 29   45/1184  " thread-indent "\"Re: [oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets\"\n") "<20150728210918.BEF2372E041@smtpvbsrv1.mitre.org>" ("<20150728210918.BEF2372E041@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22299 invoked by uid 550); 29 Jul 2015 13:33:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22279 invoked from network); 29 Jul 2015 13:33:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=macinnes.ie;
	s=default; t=1438176773;
	bh=zwCjrHbf4qvWcMJYrn9NRa/BDBOJIpz6CbHFOL9Rrl0=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=Emhj4/sjXzO/w/8n2NodiCBp4MIdHVESJJeHtDmyZSWdE97wI8339+aa3JRUfyUbR
	 XQr8Ob1fWHAEdAwuuCxKMeT9Qz1Dtl3SAZL46bykQxxpEn+XfmTjvaozlqb8r6rK+g
	 M60/aNdiAfO0rMb9Vp5Ysb12/hSju4w7aYmFkj5E=
Message-ID: <55B8D603.6070007@macinnes.ie>
MIME-Version: 1.0
References: <20150728210918.BEF2372E041@smtpvbsrv1.mitre.org>
In-Reply-To: <20150728210918.BEF2372E041@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Wed, 29 Jul 2015 14:32:51 +0100
From: Kiall Mac Innes <kiall@macinnes.ie>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request - OpenStack Designate mDNS DoS
 through incorrect handling of large RecordSets
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 28/07/15 22:09, cve-assign@mitre.org wrote:
>>> https://launchpad.net/bugs/1471161
> 
>>> Designate does not enforce the DNS protocol limit concerning
>>> record set sizes
> 
>>> As a result, the rendering loop in desginate-mdns can does not
>>> make progress
> 
>>> https://bugs.launchpad.net/designate/+bug/1471161/comments/5
> 
>>> 1: Quotas were being bypassed as part of the v1 API.
> 
>> two CVE IDs:
> 
>> one for the original "does not enforce the DNS protocol limit 
>> concerning record set sizes" issue
> 
> Use CVE-2015-5694.
> 
> 
>> one for the "Quotas were being bypassed" issue.
> 
> Use CVE-2015-5695.
> 
> 

Great, Thank you.

Thanks,
Kiall
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVuNYCAAoJEHuWgzsGpgIasHEIAJlxDqvKFfZTQA0Nuoqr9jPP
+V+oZIjg4bGQTSrFi11Jq8D3fmyoqRCb47E/XC/8VPZkBk/lPJ6BcBiDcOu9flst
zw1J4qmcbxMeT9hCLmutcSZXI8KTWmpTczI3MN+RrgeDi4D2IEnkv+658b7mrOix
7JMW56pkOLWLCf5QNDRTWHHTpac6hA0C2svp3Jwv5uMh+UWMcjD4ob6SM0tlG59w
1ZRpGf/zE3UoabwJADXtNLewyb5CbI2qVUkvco/JeIZdFF0I/I8oRG7yxxotHYkg
6MvwDVN6cLCvwe28vo/Mm0rvVw9uf4hqVIfYwE3rGCfN4zlTRu0ncPwRuHg865I=
=S6kC
-----END PGP SIGNATURE-----
