Received: (qmail 11709 invoked by uid 550); 1 Nov 2025 17:35:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22054 invoked from network); 1 Nov 2025 17:33:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1762018419; x=1762277619;
	bh=w401Rm0a4dpOidtMYE0BmX0FaXClODzf2IFCzpfWyn8=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=XQT5/pE5L2fGOQjhCOjpDB5GsMxnfE6AmKeGe5D1BuQjN/13wxLdGsqxhySI/dg+5
	 synCZ7gI2YGMrFkhZXBKxHNmvCQ++0UyN+mu7MvChsb9A77pV6WLMHUgEwdCohRG0T
	 HInmGzX8LR94EN7FK8aWRUbQaco7GsYXtxzv01cxKhdykd+mwnm/aushFYSHOeQUiE
	 WnNdQW2glRFTljEl27nhnM/IYGB3bCHmRinJXPX84ARx93fAZCatnFZhz0fKeKoDjd
	 Pi+mqavjfimnwsk+NReb2SmhSpW8uZrdtKiyYIP7us9NQ21XTLYIaxChtvtOHdG3kz
	 HyPw0IyWDU+3w==
Date: Sat, 01 Nov 2025 17:33:37 +0000
To: oss-security@lists.openwall.com
From: Art Manion <zmanion@protonmail.com>
Message-ID: <97ec62c1-fc1f-4025-8f7d-daf3a26065f1@protonmail.com>
In-Reply-To: <20251101030054.GA3031@openwall.com>
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com> <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com> <20251101030054.GA3031@openwall.com>
Feedback-ID: 39015149:user:proton
X-Pm-Message-ID: cc0f04e3cf2771e8317f8f7a60f0945257b80cab
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 2025-10-31 20:00, Solar Designer wrote:
> On Fri, Oct 31, 2025 at 09:06:09PM +0000, Art Manion wrote:

>> Does dnsmasq read the config file before dropping privileges?  I
>> think so, since dnsmasq needs to know what interfaces and ports to
>> bind to?
>>=20
>> Does dnsmasq check that the config file is root-owned and not user-
>> writable?  In my brief testing, no.
>>=20
>> Can a regular user call dnsmasq with '-C dnsmasq_malicious.conf'
>> and achieve memory corruption under root privileges?  Even if it's
>> unlikely to result in code execution, that privilege escalation
>> may qualify as a CVE-worthy vulnerability.
> I don't think a "check that the config file is root-owned and not
> user-writable" would be relevant since a maybe-relevant threat model
> involves config files intentionally created by other software such as a
> web UI, which would set permissions such that the file is processed, and
> since such checks are uncommon and the lack of them does not mean the
> software supports untrusted config files.
About an hour after posting this I slightly regretted it, my line of
thinking was along the lines of dnsmasq being setuid (it is not on
the systems I have at hand).  A agree that some other system that
uses dnsmasq should be responsible for managing privilege separation
if that system allowed low-privileged users to modify config files
that influenced the behavior of privileged programs.

 - Art


