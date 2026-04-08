Received: (qmail 30521 invoked by uid 550); 8 Apr 2026 21:12:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3124 invoked from network); 8 Apr 2026 20:32:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=samba.org;
	s=42; h=To:From:Date:Message-ID:CC;
	bh=JCIrTcBZ9UcUi69pDs3genPaIztw6MZvKqzmeHdbiDg=; b=QjPy0sTd7na6aFpshu0bGbrZ9Z
	WgtDNpy5EHr7nuu9NWUkXy8ePRJCZ1nIbkApVnB14r28IsaqGOql25cP24ekNxe4JbdLCA5aVgoGF
	iIkY15sc8FsX/MMnpkOvIIFiSulRpDUIkqB4LddXDTQQMBWAdQ8EngMXXWvs0+qwQuk7m74IG7SL9
	w+u+7DTx4ZQV8UP8E5vFa4oNgGCOtut/4vfHTuyabHCL2UtS/6adQdcyfTB+CcZFGEB9iZbMk6st2
	F6pQ7YHGACXt0JN3GEXh8ZuzurlC0Fkw3OfhjxfxhvPpbzSHLVW0tbk7n3d2dk9XZBridGyNDbth3
	qCVQbtuqkWTG5cFouj4/FGUSDnAlLeH82tTH30zAccqHPyB/dNjZVvcScppR+3XIhwu8grzTn60fQ
	xMsnU0H7sMO3VbQyNwupjIPj1G6+P5R1WbYydHu5cwruPh5v0tZ1jzi8C+MgKocPPZUjjTfonWLwn
	WSjXkTFmYVDQCM0QnZ/fOEC3;
Message-ID: <621ffb04-9b12-416d-b4f6-46185f342de6@samba.org>
Date: Thu, 9 Apr 2026 08:32:18 +1200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Douglas Bagnall <dbagnall@samba.org>
To: oss-security@lists.openwall.com
References: <d9b75448-c072-40ec-9740-1c68d4cee279@samba.org>
 <2f748af7-2d2e-40e5-9c96-7927fd10b12c@samba.org>
Content-Language: en-NZ
In-Reply-To: <2f748af7-2d2e-40e5-9c96-7927fd10b12c@samba.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: Heads-up: Upcoming Samba security releases
 (2026-04-09)

On 07/04/2026 4:10 pm, Douglas Bagnall wrote:
> On 06/04/2026 2:53 pm, Douglas Bagnall via samba-technical wrote:
>> This is a heads-up that there will be Samba security updates for
>> 4.22, 4.23, and 4.24 on Thursday, April 9, 2026. Please make sure
>> that your Samba servers will be updated soon after the release!
>> 
> Release is still Thursday 9 April.
Sorry again. The release has been postponed because we found an
issue in one of the fixes.

We will announce a new date as soon as possible.

Douglas

