X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1178" "Monday" "31" "January" "2022" "18:49:31" "+0000" "Carlos Alberto Lopez Perez" "clopez@igalia.com" nil "23" "[oss-security] Re: WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil "1" nil nil (number mark "U       clopez@igali Jan 31   23/1178  " thread-indent "\"[oss-security] Re: WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10040 invoked by uid 550); 31 Jan 2022 18:49:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10008 invoked from network); 31 Jan 2022 18:49:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=67I2y/IzV8i9854irU59vub3wbTIb4jNB9UTPMdER1U=; b=M40GiSOpKD1Gm/+nM2a797M6eb
	oGsmEFNy01xWRFwssjgqm8vK3UbgTQzG7SFGGw2eiftd8RwbPNIU99e/CRR5/4HRul0qDg+i4KjGX
	4NrAou8X+66NydRZNeiodzXvoIBpP2nRykP8WPAP8jmomxGq8c65+kOj7bY/YZpq5MJNES5kRTbcl
	NIWoILzT/xr2jzgMbim1k386y3MwfLcN/of8F7513hpWXnCSuBm7uaZlk+TvhEWzM9J0g+bEOkssF
	I9StyXsalXWPgMJGLgHvfk112GaCqbwnwyR0x8UcAyNu30Vm9AZLM6DJ/vht7DZC12RD3lI8QbtfH
	zNd74ihA==;
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
References: <cb8ce1dd-6dee-b6f9-4081-f662887ce835@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org,
 security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <c20a5ac6-ec02-88ea-f6d4-713c93373904@igalia.com>
Date: Mon, 31 Jan 2022 18:49:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <cb8ce1dd-6dee-b6f9-4081-f662887ce835@igalia.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: WebKitGTK and WPE WebKit Security Advisory WSA-2022-0001

On 21/01/2022 16:53, Carlos Alberto Lopez Perez wrote:
> CVE-2022-XXXXX
>     Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
>     Credit to Martin Bajanik from fingerprintjs.com.
>     Impact: A malicious website may exfiltrate data cross-origin.
>     Description: A cross-origin issue existed with the IndexedDB. This
>     was addressed with improved checking of security origins. 
>     Notes: There is a public PoC demonstrating this issue at
>     https://safarileaks.com so this issue may have been actively
>     exploited. We still don't know the CVE number that will be assigned
>     to this issue. We will update this advisory once we know it.

The data for the above unknown CVE number is now updated with the info below:

CVE-2022-22594
    Versions affected: WebKitGTK and WPE WebKit before 2.34.4.
    Credit to Martin Bajanik of fingerprintjs.com.
    Impact: A website may be able to track sensitive user information.
    Description: A cross-origin issue in the IndexDB API was addressed
    with improved input validation. Notes: There is a public PoC
    demonstrating this issue at safarileaks.com so it may have been
    actively exploited.

