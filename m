Received: (qmail 27876 invoked by uid 550); 27 Aug 2025 19:34:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3992 invoked from network); 27 Aug 2025 19:31:03 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org BA7D14D1660
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1756323053; cv=none; b=cI68Zrl+lk6YXnQh/ygPGxfr3rEnkrUq0s/yGBXNTx13cBGxtyxbvT0vAlPJZjnBo3uzhdlJOOVM09wluTOJkHKwGVkHf2NR/NIZc/wHwW1g+1Zu2tKNIhGy96HTJnsugubKy+Zr9mgNxxMLVF/Abu7Uy+w+pt3bnsh/m5cL5zE=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1756323053;
	c=relaxed/relaxed; bh=ZYNBoZdU6254RarQ+vJYI6vU/JALB54qW13GOZabxhY=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:From:
	 Subject:To; b=f1f/zsux9mZt9SFhsUt/BA3e3WSnronBBDuFTur1nSglIe1U6oCmhXz6NG4ubMQv5l+NZCmvYArMPTUKM0RV/q6s7/tTRdb104kkJmmYbTSP4l06bvuwzL2a2m7Rj5JXzCXLy+N8K4LHFecI/EP7Tr5epIL921PBzKveQ5PlwuU=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org BA7D14D1660
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1756323053; bh=Pt/v8w77N9cKnSNskUjn6A6G+S3klbPzBO8f8K1R9SY=;
	h=Date:From:Subject:To:Cc;
	b=gKrls2+l312gc/uKkworC4lTbhTsixPifm/EId8mnN+RzE1bM/2U1u5eEdIudlo9G
	 idXapxOuXsOsCxxd64vNul7E62dfCBbHaGYWpRC+0pdJSk2Hz6kiMax5xcbL62bQul
	 pI/ctnBdgqP93zzM930W+kr/QZPfi2yO9pefnRYc=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org A2B942E60129
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1756323053;
	bh=ZYNBoZdU6254RarQ+vJYI6vU/JALB54qW13GOZabxhY=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=XXzQfe/mXSFEp43SP+gyBsVrlwqvFIKffZ1dM7WMtXmpLfe9puZsZ0XVQ0oMYLvei
	 V1mNfL6PRKMz7hEwxv8lINCqkGqRK5PQywTgMjzAXWqvozoJPDO17HMsPlSY2aaTNJ
	 x4uCxOFEtc0ahGHMndYxP6JXAONhCUiWmO4DX32I=
Message-ID: <e969cce7-9c38-4b6e-85be-2046be464452@isc.org>
Date: Wed, 27 Aug 2025 15:30:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ben Scott <bscott@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] ISC has disclosed one vulnerability in Kea (CVE-2025-40779)


On 27 August 2025 we (Internet Systems Consortium) disclosed one 
vulnerability affecting our Kea software:

- CVE-2025-40779: Kea crash upon interaction between specific client 
options and subnet selection https://kb.isc.org/docs/cve-2025-40779

New versions of Kea are available at the following URLs:

Stable: https://downloads.isc.org/isc/kea/3.0.1/

Development: https://downloads.isc.org/isc/kea/3.1.1/

With the public announcement of these vulnerabilities, the embargo 
period is ended and any updated software packages that have been 
prepared may be released.

-- 
Ben Scott <bscott@isc.org>
Support Engineer
Internet Systems Consortium
