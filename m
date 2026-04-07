Received: (qmail 18224 invoked by uid 550); 7 Apr 2026 14:31:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30561 invoked from network); 7 Apr 2026 04:10:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=samba.org;
	s=42; h=From:To:Date:Message-ID:CC;
	bh=kiwXyN0eK5rcscbfdqB4Qi1R77/5ydNvRFJ9JAeQiR0=; b=UkMj1IY4fFuHf07JTk8yb33Sha
	alR6oxzKxPVhgSzGdbYv/o/EjHlYmg0ohKNRuehwwulu4aTk3EGWcm7yOkUBIm5vwsOW2Rk5i9OiM
	3LLUwaUvZZCmc9mfD7eXT3WoALuktM38LYSOBy4Iz3V/NYP6aQkO8DdMFsA6oHsH12BDcy7WXE58y
	jSJno8HyPc7xpvvHrfSOgTq9BrRa6pbqV/Pl79z/9WK9gYh2szF51hgg4riez+JJv8wTaiZgJe578
	vw04dowrtr0r643WT0wEzmxY0c9hQUD904AHp5lgfOu7LwEimJL4zecH9KG8xoae4WO27qpQnALFi
	ubGQRHVZ+N4ehtHu5SF/qb4NXQxGeLCP2sWOrtYscYuDj01VdPRI/HoeZ7L4UTXHrB9uTrbFdlOTv
	3YYilww5AwWWmZxkLZSVgJVFuodlDrnCSEp3pdvGMy5GgYY2+Vipvl7ty406wFpeYW3cldkc9NRN0
	PFuNEm0M7aDxcdUgZ9d2OsCX;
Message-ID: <2f748af7-2d2e-40e5-9c96-7927fd10b12c@samba.org>
Date: Tue, 7 Apr 2026 16:10:05 +1200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: samba-technical <samba-technical@lists.samba.org>,
 samba <samba@lists.samba.org>, oss-security@lists.openwall.com
References: <d9b75448-c072-40ec-9740-1c68d4cee279@samba.org>
Content-Language: en-NZ
From: Douglas Bagnall <dbagnall@samba.org>
In-Reply-To: <d9b75448-c072-40ec-9740-1c68d4cee279@samba.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Heads-up: Upcoming Samba security releases (2026-04-09)

I was a little inaccurate in this message, sorry.

Below I have amended the impacted components to reflect that one of
the bad ones requires an unusual configuration, and one of the AD
bugs affects domain members, not the DC.

On 06/04/2026 2:53 pm, Douglas Bagnall via samba-technical wrote:
> This is a heads-up that there will be Samba security updates for
> 4.22, 4.23, and 4.24 on Thursday, April 9, 2026. Please make sure
> that your Samba servers will be updated soon after the release!
> 
> Impacted components:
>  - File Services, CVSS 10.0, affecting some configurations
>  - File Services, CVSS 10.0, affecting some configurations
>  - File Services, CVSS 7.1 affecting some configurations
>  - File Services, CVSS 6.5 affecting uncommon configurations
>  - AD DC CVSS 8.0, affecting some configurations
>  - AD DC CVSS 7.5, affecting uncommon configurations> 
 Impacted components:
  - File Services, CVSS 10.0, affecting some configurations
  - File Services, CVSS 10.0, affecting uncommon configurations
  - File Services, CVSS 7.1 affecting some configurations
  - File Services, CVSS 6.5 affecting uncommon configurations
  - Domain members CVSS 8.0, affecting some configurations
  - AD DC CVSS 7.5, affecting uncommon configurations


Release is still Thursday 9 April.

Douglas

