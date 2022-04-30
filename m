Received: (qmail 5704 invoked by uid 550); 30 Apr 2022 11:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31804 invoked from network); 30 Apr 2022 11:24:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=greenbone.net; s=20170621; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3wUj5KWVFYY7stqTb5jw76N1vcBnWiCYwG+SPkMStgo=; b=It7qB0SXGK4wzqW1b2i1XCD9av
	Vsft5QcUaHHymejMnG1ekBooa5CkoXw+xaFAztKPBsUJ8nDd2Cwlp1ehblj97B45b83Fh91eog2xd
	b+CWrWXDLLT86L4O/5ZXpnTCN26EnAw7XmhYIjF5VooTOiyazTSJyb+bO3j5IpV/OOww=;
Delivery-date: Sat, 30 Apr 2022 13:23:06 +0200
Message-ID: <ffd2934f-4e65-88ca-e3db-5204c2eb1127@greenbone.net>
Date: Sat, 30 Apr 2022 13:24:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
 <20220428201003.GA1260523@millbarge>
 <142a2b8b-f5f5-526e-741f-35337a5a81f2@tao.at>
 <2D37FD38-B910-4D66-A5B3-0E58DA3B87C1@akamai.com>
From: Christian Fischer <christian.fischer@greenbone.net>
In-Reply-To: <2D37FD38-B910-4D66-A5B3-0E58DA3B87C1@akamai.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scan-Signature: b94af4f566913c645349cb1868460e23
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

 > It’s not that they didn’t/can’t verify, it’s already verified, 
they’re claiming those versions no longer being officially supported 
means they can seemingly omit them from CVE reporting.
 >
 > Which is dangerous, misleading, and nonsensical.

While i fully agree with this be aware that CVE entries could generally 
contain incomplete information:

After requesting an update of a CVE entry via the MITRE CVE forum in the 
past to add additional affected products for a different vendor (which 
wasn't even the assigning CNA like it is the case for Oracle here) my 
request was rejected by MITRE with the following rationale given:

 > A CVE description does not necessarily contain all the affected 
products or versions and is not part of CVE ID requirements. The 
products are documented in the CVE references.

This is also matching my experiences with various other products / 
vendors and related CVE entries for these.

On 29.04.22 01:34, Seaman, Chad wrote:
> Exactly this.
> 
> It’s not that they didn’t/can’t verify, it’s already verified, they’re claiming those versions no longer being officially supported means they can seemingly omit them from CVE reporting.
> 
> Which is dangerous, misleading, and nonsensical.
> 
> Regards,
> Chad
> 
> On Apr 28, 2022, at 5:36 PM, Sven Schwedas <sven.schwedas@tao.at> wrote:
> 
> ﻿
> On 28.04.22 22:10, Seth Arnold wrote:
> On Thu, Apr 28, 2022 at 02:12:04PM +0000, Seaman, Chad wrote:
> In what universe exactly are versions omitted from vulnerability
> reporting because a vendor “no longer supports that version”… this
> non-supported version is still vulnerable?
> A large part of software maintenance is managing technical debt --
> and being able to walk away from no-longer-supported products is an
> important part of that.
> Would you expect Microsoft to evaluate Windows 3.11, Windows 95,
> Windows 98, Windows ME, Windows NT 3.51, Windows NT 4.0. Windows XP,
> etc for every single vulnerability discovered in newest products?
> 
> You and Jeremy arguing in bad faith here, OP didn't ask about anything like that.
> 
> The problem at hand is, someone *already did all that work*, and Oracle is *actively intervening* to have it dropped from CVE reports.
> 
> So the question is: Why is vulnerability information that already exists being censored?
