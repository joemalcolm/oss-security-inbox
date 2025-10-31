Received: (qmail 18076 invoked by uid 550); 31 Oct 2025 21:47:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7533 invoked from network); 31 Oct 2025 21:06:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1761944772; x=1762203972;
	bh=ghxdeBjb2Nwd2z7S3Sk+hqUNBoUS2o+Yr0xYMcBC3FM=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=QbD6MjMiN09diJb9sfNiYcVlt1fhIjtNR6xTO3Rb/Rt+PfPFDbTy34rwPNxrHgZoD
	 h+qcmEqlnTEorTe5QgB+aFBKZcUvlt+rREXr2NPvZo60u8TtUODp2N+sBzuZB1hpqU
	 nHd4yf4mUFqXyPwHmMRWcSn3Y8tCFt5VHCMSbSFDz799vni1BI4IPDl7ajsHE1gi0k
	 bqGlKDKtWisx53uwi6E3Pf/ugmOZLh50mYx+6w3PIIuPd1y6u007TtW/TOT56Gs7Yr
	 I0FHEQmIjyB+N6cQEfgPQEVGlqpohCu2NIwPeVSZzboEw40lrwCpVZGkmczzpe+hmc
	 DNj7YBdsC8s9Q==
Date: Fri, 31 Oct 2025 21:06:09 +0000
To: oss-security@lists.openwall.com
From: Art Manion <zmanion@protonmail.com>
Message-ID: <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
In-Reply-To: <20251028014909.GA6430@openwall.com>
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com> <20251028014909.GA6430@openwall.com>
Feedback-ID: 39015149:user:proton
X-Pm-Message-ID: cfc279aab31afc343cb2544706f829fb137e25d3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 2025-10-27 18:49, Solar Designer wrote:

> What's common about the CVEs mentioned in this thread, including those
> against GNU Bison (so not config file parsing, but just bogus CVEs), is
> that all of them were assigned by VulDB as the CNA.  VulDB even went to
> the effort (or automation?) to generate CVSS 2.0, 3.0, 3.1, and 4.0
> vectors for all of these.  It's pretty ridiculous for a CNA not only to
> assign bogus CVEs, but also have CVSS vectors and scores for them
> without realizing the error.  This suggests a lack of proper process
> and/or expertise.
>=20
> At this point, I think we want to hear from VulDB on this, and from
> MITRE on their requirements for CNAs in general and VulDB in particular
> to review CVE requests before assignment.  Maybe VulDB is in violation.

Speaking as a CVE Board member, but not for MITRE, I suggest that somebody =
dispute the dnsmasq (and Bison) CVE IDs.  I'll do this unless somebody else=
 wants to.  There is room for improvements to CVE assignment, but the curre=
nt path is to file disputes.  Perhaps CNAs with "high" dispute counts or ra=
tios warrant some sort of action.

Considering the CVE vulnerability determination rules, if there is no net s=
ecurity impact or gain to the attacker, then:

"4.1.2 Conditions or behaviors that do not lead to a security impact SHOULD=
 NOT be determined to be Vulnerabilities. Examples of security impacts incl=
ude an increase in access for an attacker, a decrease in availability of a =
target, or another violation of security policy."

https://www.cve.org/resourcessupport/allresources/cnarules#section_4-1_Vuln=
erability_Determination

Does dnsmasq read the config file before dropping privileges?  I think so, =
since dnsmasq needs to know what interfaces and ports to bind to?

Does dnsmasq check that the config file is root-owned and not user-writable=
?  In my brief testing, no.

Can a regular user call dnsmasq with '-C dnsmasq_malicious.conf' and achiev=
e memory corruption under root privileges?  Even if it's unlikely to result=
 in code execution, that privilege escalation may qualify as a CVE-worthy v=
ulnerability.

Regards,

 - Art


