Received: (qmail 25790 invoked by uid 550); 2 Dec 2025 15:56:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25760 invoked from network); 2 Dec 2025 15:56:42 -0000
Date: Tue, 2 Dec 2025 16:56:06 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aS8MFknR8ZPxcniJ@256bit.org>
References: <2362c3be-360c-413b-be59-d15dd682deee@oracle.com>
 <aS33bPmVC5MVinXv@256bit.org>
 <5e016ff3-a121-4137-a5c5-b53f91f4ca91@greenbone.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5e016ff3-a121-4137-a5c5-b53f91f4ca91@greenbone.net>
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] 5 CVE's fixed in Fluent Bit


On Di, 02 Dez 2025, Christian Fischer wrote:

> there seems to be indeed some confusion/inconsistencies about the possible
> fixes:
> 1. [1] lists 4.2, 4.1.1 and 4.0.14 as fixes
> 2. [2] lists 4.0.12, 4.1.1 and 4.2.0 as fixes
> 3. In this thread 4.0.13 (among 4.1.1 and 4.2.0) is now listed as a fix
> 
> But if we check [3] version 4.0.13 only contains two changelog entries
> shared with version 4.1.1. Furthermore 4.0.12 was released more closely to
> 4.1.1 then 4.0.13 so the fixed versions on [2] might be the correct ones
> (4.0.12, 4.1.1 and 4.2.0).
> 
> Regards,
> 
> [1] https://fluentbit.io/blog/2025/10/28/security-vulnerabilities-addressed-in-fluent-bit-v4.1-and-backported-to-v4.0/
> [2] https://kb.cert.org/vuls/id/761751
> [3] https://github.com/fluent/fluent-bit/releases

Well, I have asked upstream 
https://github.com/fluent/fluent-bit/issues/11230 and they have 
confirmed and updated the blog post[1] to mention 4.0.13 as the proper 
backported fix.

I did not check or even verify the other versions.

Thanks,
Christian
-- 
evakuieren:
  zeigt eindeutig, daß der Menschen erstes Milchvieh "o'muh" sagte.
