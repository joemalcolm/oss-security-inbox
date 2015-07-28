X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2527" "Tuesday" "28" "July" "2015" "20:13:13" "+0100" "Kiall Mac Innes" "kiall@macinnes.ie" "<55B7D449.6060602@macinnes.ie>" "69" "[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" nil nil nil "7" "2015072819:13:13" "[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" (number mark "        kiall@macinn Jul 28   69/2527  " thread-indent "\"[oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets\"\n") "<20150728185746.BE8E46C0099@smtpvmsrv1.mitre.org>" ("<20150728185746.BE8E46C0099@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13478 invoked by uid 550); 28 Jul 2015 19:14:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12053 invoked from network); 28 Jul 2015 19:13:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=macinnes.ie;
	s=default; t=1438110796;
	bh=cP7qyWxntTheAlpNHzdHG5b/lEGJ9fMkquh+dJ/w5Zs=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=aaBM3aFZmhVZcD0kRKLUy05HWRh6fNL609z/5oqKIDLsjcBX3aifbyt0YkFecujKn
	 hmfFhyBlGl+L40xxCDuniOv3rtGHA59HbuQOyquWMDA8SanpZgbHL5TH7BdnRA0/NC
	 V3a+O4v1VZ4v1Iv6vxKvfwFdvJeMqEkHKh9irmT4=
Message-ID: <55B7D449.6060602@macinnes.ie>
MIME-Version: 1.0
References: <20150728185746.BE8E46C0099@smtpvmsrv1.mitre.org>
In-Reply-To: <20150728185746.BE8E46C0099@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
CC: oss-security@lists.openwall.com
Date: Tue, 28 Jul 2015 20:13:13 +0100
From: Kiall Mac Innes <kiall@macinnes.ie>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - OpenStack Designate mDNS DoS through incorrect
 handling of large RecordSets
To: cve-assign@mitre.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 28/07/15 19:57, cve-assign@mitre.org wrote:
>> https://launchpad.net/bugs/1471161
> 
>> Designate does not enforce the DNS protocol limit concerning
>> record set sizes
> 
>> As a result, the rendering loop in desginate-mdns can does not
>> make progress
> 
>> Because it keeps receiving data, it does not seem it will ever
>> run into a timeout (and if it does, it will try again).
> 
>> https://bugs.launchpad.net/designate/+bug/1471161/comments/5
> 
>> I think there is 2 parts to this bug:
> 
>> 1: Quotas were being bypassed as part of the v1 API. 2. If there
>> was enough RRs in a RRSet MiniDNS went into a loop. 3. MiniDNS
>> does not have a timeout.
> 
> Our current feeling is that it is best to have two CVE IDs: one
> for the original "does not enforce the DNS protocol limit
> concerning record set sizes" issue and one for the "Quotas were
> being bypassed" issue. Is that OK?

Yes, this is OK.

> [SNIP]
> 
> We feel that item 3, adding a timeout, can be considered a
> security enhancement opportunity that should not have its own CVE
> ID, i.e., there is no report of a vulnerability that can be fixed
> only with a timeout.

Agreed.

> Finally, our understanding is that multiple names are being used to
> refer to the general 
> https://wiki.openstack.org/wiki/Designate/Blueprints/MiniDNS
> concept, i.e., we think "MiniDNS does not have a timeout" is an
> observation about the Designate codebase, not a third-party DNS
> server such as from the https://code.google.com/p/minidns/ site.
> Also, we think this part of the Designate codebase is also called
> designate-mdns (misspelled as desginate-mdns) and mDNS -- these are
> essentially alternative names for Designate MiniDNS.
> 

Interesting, https://code.google.com/p/minidns/ is project I've not
seen before. Within OpenStack Designate, we typically refer to the
`designate-mdns` service as either MiniDNS or mDNS, we will need to
ensure we're clearer in our wording in future to avoid any possible
confusion.

Thanks,
Kiall
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVt9RIAAoJEHuWgzsGpgIa4igIAL4eiWoGF9ca5Cw4nlmQqZoe
ZNnDJCI9JnAj87FOj7wVep8mM1RvD6dSmyfKeixp6ounAMCtaVoOtQa2oF+Gxqk0
A3nAgRCKWMKr6awmlN5FClLoX8oHg88iIOv8hE45RqjUaXat1dHvPog1YBxN6Ud0
Sx/IOaCWKHJIi/wJdwmNLbIP573tFhL0Hfw+m6AIiuRL495F7Umvqdb1nMHR/wfl
/bwiTwfX3yD0q/kZAEZux23zBCOZEv24C9ups6LEP5un2G0w8P97VQdGDRhzddls
EQstl/2gxR6yOPWV9f4MFxeVlEohHT5MZ5gvNio+7zzCJC5T9kSHGHDoe00LV5c=
=BHnN
-----END PGP SIGNATURE-----
