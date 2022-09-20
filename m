Received: (qmail 3407 invoked by uid 550); 20 Sep 2022 12:19:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3367 invoked from network); 20 Sep 2022 12:19:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=CMP5xygdH74wWPRS9RTl5pREr2sscYbHPAuvHyR7sLA=; b=ME9RrtBDvgZyxYfjfK+4Ot7oka
	qAic2LJ4Qj6uq2jxddboavZhz3z88FoaJWRPTNdBRH9RkL++/hLCjhv2U8AjjNXxeZinM36yavb2p
	gb0axMONCgbHLzV6SGWQd+Zzvyb22hDCNE/AHruRdCN7vixd0N6+HF9LazVK0MalbbvbXhfabs8kw
	6w8xOUWAM/yCeuUOpB68QAESsqanHEybmBcRtjUPPikAFoY7CgKeIVugvKCCLArkIFyzkpot32xDa
	5X797l002+C/ocC/jU2SDR/QrYJz8vaXZeCAUFWCJY4orSngpm8Gl6Tdg2ie3yAFb9GDm9m5Lv2/y
	ES0Oaa9A==;
Message-ID: <3d98d0cb-2582-45ba-e768-28648bbe5ad2@igalia.com>
Date: Tue, 20 Sep 2022 14:19:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-GB
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
References: <59540946-5cbe-d264-4edc-2a2874ed222c@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
In-Reply-To: <59540946-5cbe-d264-4edc-2a2874ed222c@igalia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: WebKitGTK and WPE WebKit Security Advisory WSA-2022-0009


On 19/09/2022 14:44, Carlos Alberto Lopez Perez wrote:
> CVE-2022-32912
>     Versions affected: WebKitGTK and WPE WebKit before 2.36.8.
>     Credit to Jeonghoon Shin (@singi21a) at Theori working with Trend
>     Micro Zero Day Initiative.
>     Impact: Processing maliciously crafted web content may lead to
>     arbitrary code execution. Description: An out-of-bounds read was
>     addressed with improved bounds checking.

Just an update about this CVE: This issue doesn't affect Linux builds.
Only MacOS builds are affected by this.
