X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1238" "Wednesday" "31" "January" "2018" "08:48:28" "+0200" "Aki Tuomi" "aki.tuomi@open-xchange.com" "<1460642161.10860.1517381308655@appsuite.open-xchange.com>" "30" "[oss-security] Re: CVE-2017-15132: dovecot: auth client leaks memory if SASL authentication is aborted." nil nil nil "1" "2018013106:48:28" "[oss-security] Re: CVE-2017-15132: dovecot: auth client leaks memory if SASL authentication is aborted." (number mark "U       aki.tuomi@op Jan 31   30/1238  " thread-indent "\"[oss-security] Re: CVE-2017-15132: dovecot: auth client leaks memory if SASL authentication is aborted.\"\n") "<1876333558.159.1516872958654@appsuite-guard.open-xchange.com>" ("<1876333558.159.1516872958654@appsuite-guard.open-xchange.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11471 invoked by uid 550); 31 Jan 2018 08:10:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18351 invoked from network); 31 Jan 2018 06:48:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1517381309;
	bh=e47c1YVHjzfTS5tKeLu67yD5MsAPvySG43cxpbhqFkw=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=PaXXmLNaLeJgENdAxpwxKySTJ5ZYKYkgwnCa/aEdKrJqlGcc5lG5njcHf54WIhp04
	 qU7tlDvyVI3yehKSVKv/rEnIwSSslqu72n8PaeRwVzsdiak1HsBnz3SUlDCFLWkjCr
	 jCJu40oQWiBDzv1vxiLkmwpAX6P1QMyH5UZ3p74Fe9ASzj9yjKdkYXfnOuP6y7zYXf
	 dCEKgDPqqG2F8A6bemxX4zhwDX1P0XT6SBYS50d/FszZGSqbLsOJboyMVw2zJlVCDu
	 I0sGo1ISjEXIMFeOQxdwKvZ01BHcchuNAlCXXA7rdRoQux7vICYraQXLrFVLGa1F/E
	 dyhBqiCZbLyjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1517381309;
	bh=e47c1YVHjzfTS5tKeLu67yD5MsAPvySG43cxpbhqFkw=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=PaXXmLNaLeJgENdAxpwxKySTJ5ZYKYkgwnCa/aEdKrJqlGcc5lG5njcHf54WIhp04
	 qU7tlDvyVI3yehKSVKv/rEnIwSSslqu72n8PaeRwVzsdiak1HsBnz3SUlDCFLWkjCr
	 jCJu40oQWiBDzv1vxiLkmwpAX6P1QMyH5UZ3p74Fe9ASzj9yjKdkYXfnOuP6y7zYXf
	 dCEKgDPqqG2F8A6bemxX4zhwDX1P0XT6SBYS50d/FszZGSqbLsOJboyMVw2zJlVCDu
	 I0sGo1ISjEXIMFeOQxdwKvZ01BHcchuNAlCXXA7rdRoQux7vICYraQXLrFVLGa1F/E
	 dyhBqiCZbLyjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1517381309;
	bh=e47c1YVHjzfTS5tKeLu67yD5MsAPvySG43cxpbhqFkw=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=PaXXmLNaLeJgENdAxpwxKySTJ5ZYKYkgwnCa/aEdKrJqlGcc5lG5njcHf54WIhp04
	 qU7tlDvyVI3yehKSVKv/rEnIwSSslqu72n8PaeRwVzsdiak1HsBnz3SUlDCFLWkjCr
	 jCJu40oQWiBDzv1vxiLkmwpAX6P1QMyH5UZ3p74Fe9ASzj9yjKdkYXfnOuP6y7zYXf
	 dCEKgDPqqG2F8A6bemxX4zhwDX1P0XT6SBYS50d/FszZGSqbLsOJboyMVw2zJlVCDu
	 I0sGo1ISjEXIMFeOQxdwKvZ01BHcchuNAlCXXA7rdRoQux7vICYraQXLrFVLGa1F/E
	 dyhBqiCZbLyjA==
Date: Wed, 31 Jan 2018 08:48:28 +0200 (EET)
From: Aki Tuomi <aki.tuomi@open-xchange.com>
To: oss-security@lists.openwall.com
Message-ID: <1460642161.10860.1517381308655@appsuite.open-xchange.com>
In-Reply-To: <1876333558.159.1516872958654@appsuite-guard.open-xchange.com>
References: <1876333558.159.1516872958654@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev21
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] Re: CVE-2017-15132: dovecot: auth client leaks memory if SASL
 authentication is aborted.


> On January 25, 2018 at 11:35 AM Aki Tuomi <aki.tuomi@open-xchange.com> wrote:
> 
> 
> Score: 5.3, AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L
> Affected versions: 2.0 up to 2.2.33 and 2.3.0
> Fixed versions: 2.2.34 (not released yet), 2.3.1 (not released yet)
> 
> We have identified a memory leak in Dovecot auth client used by login
> processes. The leak has impact in high performance configuration where
> same login processes are reused and can cause the process to crash due to memory exhaustion.
> 
> Patch to apply this issue can be found from https://github.com/dovecot/core/commit/1a29ed2f96da1be22fa5a4d96c7583aa81b8b060.patch
> 
> To our best knowledge, this patch should apply to all versions.
> 
> This issue can be mitigated on vulnerably systems by limiting login process to single request per process, which is also the default value.
> 
> Regards,
> Aki Tuomi
> Dovecot oy

Team Debian has found an issue with our patch. Dovecot login process would crash after few minutes of idle after consecutive aborted logins.

This is fixed with https://github.com/dovecot/core/commit/a9b135760aea6d1790d447d351c56b78889dac22.patch

We would like to thank Apollon and Salvatore for raising this to our attention. 

Aki Tuomi
Dovecot oy
