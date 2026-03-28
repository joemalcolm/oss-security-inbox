Received: (qmail 5483 invoked by uid 550); 28 Mar 2026 21:41:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5453 invoked from network); 28 Mar 2026 21:41:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1774734087;
	bh=+M6FVgs7JMBYoiqQdiF4mErDMcbSLmzBUVaPDsN804U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=oO6P8RI49cTnGxkrxxt1wSr4VCmFKMwBlbFYcGY54zb3DYHl7oopOUoefP7Z4QUZS
	 7E7uFX/D2ZkjX7AOHemNAKiKA9+SGIxtR1QWS1QTwJIb5en5ERzF/QCZTO2yrSDciw
	 wBVcDPiYkOOI3o4vC9kWl0RDw1ITetEInnddBW11TNMnkH5nWlxDWGxVM+jz9yevqa
	 Rmy5KDIrLAdBhEFqaFSHQa5XDuuxWz8n8cNb+UKBvkwwOBoRJMHDghbXNHgp9qPtHm
	 gAju0uAd41/2Qk4BWinn+2f0QWXFiH2UtceOpSpF2dHO/Bm3ToEMZ/vcGggD1pKbQy
	 d/+wPRCIkUF8yKCKLcHhWE+fXabjKbRK7WZ8ACGfBXFHnHpr/FAvGhPfejQPfW48bj
	 2L7DiHgYxQbOSUyceymzWNm/HOWaH5Q0G45xWlrdfRZx87Qk28qcAiYz6z5ks9mTrv
	 PqgxCXZwM8Qo0+koYpmywN3HHtIhwrkIS/hrTviyE80PNK5SuFjUn2YDSdX0gX3E0x
	 m+YLVgPfLbiMeWKgdfHx0RJBQ2VUVQ+fHoK2tDg7Ec/20PwuEqutCFerRbGAKvle0Y
	 IpFnGXMBYOzfWOqd+iKlMFuLqhLXTwbwR5f9QpCZftw+7cL9LW+Thmrdb8BGqJW4uf
	 TyQNgMZebQ6/0Uphbva0De3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774734086; x=1775338886;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+M6FVgs7JMBYoiqQdiF4mErDMcbSLmzBUVaPDsN804U=;
        b=EOJGMTQaORBnP/oVifloaYabMDzV74hH/hlmBznkWBpxiuhjk+YGsaRCom/NYvf0fM
         bDkTM0ee4axS/wsOnFsR8vqn8wzCnyNrJmPEWumnm4ezkCFBf9l5OGL2ybUKQfn3THSJ
         UIXerjtI2Xzu71zfS4Yzp0JCU65IprN/Gu7kl85OA43kJlMl17zEDFLNaMFUdD9zHKox
         MUp/2Qdv/M/KCIncOD4snRjP2f/Q9bKEELtsp9UZ+dr9BSe+opgFFseA7VLezTJbGvZL
         hg2ZRkSbs9bYiMuF1608XJHgY8uX45TqGeeTDk+7Bic50aa7WCKoxeEWow3moXVG/r/o
         fJlw==
X-Forwarded-Encrypted: i=1; AJvYcCXnYJcyCFHMlXGn3Xs0uQItXrPfsl3EbwU+0b7ZTYgFtlsTEFk+/H4eJgwPdWv7NPit6u8GStVHWdnW2Lo=@lists.openwall.com
X-Gm-Message-State: AOJu0Yw5JnAlfx0yIivgJ8dlLjsIiZBrhdg4Er2Fn0UqDlkbsVUc4lIb
	ya3TnThyS83cQZllLhlY02PgwSpcGvIHyJvUEOHOQO7xtX8hItY8ejbZAqD04ZkFgahPybzBhFj
	h5wi+3b8IL0j9fWzoRyhvZ0IeTXVrnMPuHN/EAhQSmstoFbh0AZMAWEo9C6wRMXkaMe+FmSnliT
	l0z9/SWy5jEA==
X-Gm-Gg: ATEYQzwzDL5Et0W2Z5WnbGkaGTRihfFnlxeym7Izv63mQ9Gi638qk4ncvIarIRdIivF
	a/T8fdgUAhOmq1ccZwKsiEr4GoJe7/eZCG3oGPPVcQeUEtseBiBTZbSRyEGxOZMPxafs8ZQ9MIW
	LKFHgiNQN4IkujkhNdGgqd64D7tT/UFfg32+D511QDo37W9WiaF+dKQ2ywWLkQJLK9l5B20Azl2
	8xRKALWEBFEQ521rh+MaJx9wbvGovdLv04y9lac20lDSESGNQFKe4aCrluWon06JEMPfttn5QY6
	nD7XluyK/IZt+yHGZBu0MVco66WS3rVHBuBJinEyUSSYlauvpcu4y+mbrplBmw4aDzu4IhqdlOD
	1kLqzfElqbhAYdje6VRZs1XFavNXKUxMhgb/x
X-Received: by 2002:a05:6a00:3319:b0:82a:1428:da3c with SMTP id d2e1a72fcca58-82c95ebe136mr7174617b3a.35.1774734085797;
        Sat, 28 Mar 2026 14:41:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:3319:b0:82a:1428:da3c with SMTP id d2e1a72fcca58-82c95ebe136mr7174604b3a.35.1774734085326;
        Sat, 28 Mar 2026 14:41:25 -0700 (PDT)
Message-ID: <f8de07b7-edc8-4ffb-ba71-612ad1e0ab80@canonical.com>
Date: Sat, 28 Mar 2026 14:41:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Greg KH <gregkh@linuxfoundation.org>,
 Qualys Security Advisory <qsa@qualys.com>
Cc: "cve@kernel.org" <cve@kernel.org>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
 <20260326183559.GA22540@localhost.localdomain>
 <2026032744-resale-jeep-2d72@gregkh>
 <20260327145022.GA30102@localhost.localdomain>
 <2026032823-outspoken-haven-c701@gregkh>
Content-Language: en-US
From: John Johansen <john.johansen@canonical.com>
Autocrypt: addr=john.johansen@canonical.com; keydata=
 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 lT9Q
Organization: Canonical
In-Reply-To: <2026032823-outspoken-haven-c701@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

On 3/27/26 22:55, Greg KH wrote:
> On Fri, Mar 27, 2026 at 02:50:42PM +0000, Qualys Security Advisory wrote:
>> Hi Greg, John, all,
>>
>> On Fri, Mar 27, 2026 at 07:23:24AM +0100, Greg KH wrote:
>>> On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrote:
>>>> Since two weeks have passed now (since the fixes were released), would
>>>> it be possible to please assign CVEs to the remaining seven AppArmor
>>>> vulnerabilities:
>>> We were told that these all required elevated privileges to hit, and so
>>> were not classified as individual vulnerabilities.  If the Apparmor
>>> maintainer tells us that these really all should be assigned a CVE, we
>>> will be glad to do so, but until then, we're just going to stick with
>>> the ones that we have assigned already.
>>
>> Thank you very much for your reply! Adding John Johansen then
>> (AppArmor's maintainer), since he will have the authoritative answer.
>>
>> The problem is that containers can be allowed to manage their own
>> AppArmor profiles (via AppArmor namespaces), in which case an attacker
>> inside such a container can directly write to AppArmor's .load, .replace
>> and .remove files and trigger all these vulnerabilities, even without
>> CVE-2026-23268 (the confused-deputy vulnerability).
>>
>> The way we see it:
>>
>> - either CVEs should be assigned to the remaining seven vulnerabilities,
>>    in light of the container use case described above;
>>
>> - or CVE-2026-23269 ("validate DFA start states are in bounds") should
>>    be rejected, because this vulnerability is no different from the other
>>    seven vulnerabilities.
> 
> Looks like this one should be rejected, but I will defer to John as to
> what he wishes to have done here, as he is the maintainer of this part
> of the kernel.
> 
It is possible to exploit from a user namespace under the correct
circumstances. Specifically

A privileged process must do the setup, such that it creates a policy
namespace (requires administrative privileges) and ties the "root"
process of the user namespace to the the policy namespace. The "root"
user of the user namespace, then has privilege to load policy to the
policy namespace tied to the container. The root user of the container
could then use the policy load bugs to attack the kernel.

Incus/LXD can setup a policy namespace for a container, the patch
allowing LXD to do this is what introduced the LPE.

Without the LPE a regular user, or even root in a user namespace
can not use the other bugs to attack the kernel, except in the
case outlined above where a privileged process setups a policy
namespace and ties it to the container.

I should also note there is an easy mitigation for the container
case. Sysadmins can set the sysctl unprivileged_userns_apparmor_policy
to false. This will stop root within the container from being able
to load policy even when the policy namespace is tied to the user
namespace.

