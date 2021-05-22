X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2497" "Saturday" "22" "May" "2021" "13:34:10" "+0200" "Maurits van Rees" "maurits@vanrees.org" nil "77" "Re: [oss-security] Plone security hotfix 20210518" nil nil nil "5" nil nil (number mark "U       maurits@vanr May 22   77/2497  " thread-indent "\"Re: [oss-security] Plone security hotfix 20210518\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Plone security hotfix 20210518" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22345 invoked by uid 550); 22 May 2021 15:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20147 invoked from network); 22 May 2021 11:34:30 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vanrees.org; s=MBO0001;
	t=1621683256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5CX+ns020C5J1/qQ1QpYiHV9zoOLZsp1fjJyq80xLrU=;
	b=XQjRjC+jWDhy0WUQGigPCNXNBhDjghqbM70Zvs05oi0qy1maO4UQMdRQ4qEbGfp7e9OuEL
	MWZqMJWTeEo4kTY7buL9n/d9uQ/cRIIndViQQrboJXS1ZGM/J3i6T1L8o1RvM74OY/491b
	kdsbxjGA4T5pXKQawlirPDtqw9Yq/NflGa7f1XlK0h26JJ4L31//+5IlF3o3vwJq1S7jkT
	Ci3Nd0CfuDC+50rZ55XO07dodexgTEbM6l+hvj2INObVklADouSVrGrQJr3CL3QE0VBK3A
	ExlObesU8zViJoVBJUA1qp+aJWhSJ7V1U+YPCoztShfe5sgj+DVaDmglBRGimg==
To: oss-security@lists.openwall.com
References: <0919707c-0f29-ac46-35f5-d6890faf0f4e@vanrees.org>
From: Maurits van Rees <maurits@vanrees.org>
Message-ID: <dbbd5c0a-cebb-dfed-3c21-967513642d38@vanrees.org>
Date: Sat, 22 May 2021 13:34:10 +0200
MIME-Version: 1.0
In-Reply-To: <0919707c-0f29-ac46-35f5-d6890faf0f4e@vanrees.org>
Content-Type: multipart/alternative;
 boundary="------------2855B2E14ACCF0F89A70733A"
Content-Language: en-US
X-MBO-SPAM-Probability: 
Subject: Re: [oss-security] Plone security hotfix 20210518

--------------2855B2E14ACCF0F89A70733A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

CVE numbers inline below. Thanks.

On 21/05/2021 16:07, Maurits van Rees wrote:
> A Plone security hotfix was released on Tuesday, May 18 2021.
> For details, see https://plone.org/security/hotfix/20210518
> Most CVE numbers are not yet issued. I will request them from Mitre 
> shortly.
>
> BTW, I am following the instructions at 
> https://oss-security.openwall.org/wiki/mailing-lists/oss-security#cve-requests 
> to first post to this list, then request CVEs at Mitre, then reply to 
> my own post.
> I don't see many other people doing it in this order. Is that page 
> still accurate?
>
> Versions Affected: All supported Plone versions (4.3.20 and any 
> earlier 4.3.x version, 5.2.4 and any earlier 5.x version).
>
> Versions Not Affected: None. Earlier versions may be affected, but the 
> hotfix has not been tested on them.
>
> The patch addresses several security issues:
>
> - Remote Code Execution via traversal in expressions. Reported by 
> David Miller. CVE-2021-32633.
> - Writing arbitrary files via docutils and Python Script. Reported by 
> Calum Hutton.

CVE-2021-33509

> - Various information disclosures: mostly installation logs. Reported 
> by Calum Hutton. CVE-2021-21360 and CVE-2021-21336.
> - Stored XSS from file upload (svg, html). Reported separately by Emir 
> Cüneyt Akkutlu and Tino Kautschke.

CVE-2021-33512

> - Reflected XSS in various spots. Reported by Calum Hutton.

CVE-2021-33507

> - XSS vulnerability in CMFDiffTool. Reported by Igor Margitich.

CVE-2021-33513

> - Stored XSS from user fullname. Reported by Tino Kautschke.

CVE-2021-33508 issued, but I forgot that the original reporter already reserved CVE-2021-3313 which is public now with his report.  My bad.

> - Blind SSRF via feedparser accessing an internal URL. Reported by 
> Subodh Kumar Shree.
The reporter prefered to request the CVE for this one, so waiting to 
hear back.
> - Server Side Request Forgery via event ical URL. Reported by 
> MisakiKata and David Miller.

CVE-2021-33510

> - Server Side Request Forgery via lxml parser. Reported by MisakiKata 
> and David Miller.

CVE-2021-33511

>
> A hotfix package has been created at 
> https://pypi.org/project/Products.PloneHotfix20210518/
> The fixes will be incorporated in future release Plone 5.2.5.
>
-- 
Maurits van Rees https://maurits.vanrees.org/


--------------2855B2E14ACCF0F89A70733A--
