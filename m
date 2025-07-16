Received: (qmail 32049 invoked by uid 550); 16 Jul 2025 22:27:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 2023 invoked from network); 16 Jul 2025 17:25:40 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org B508E4D0BA6
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1752686730; cv=none; b=N+FO/b+VtlrDPYn0J+3Y+lVd7Nkmj+TeB2fTjGVLvwJxIWF2yestEUwe1plTjORlSMuMoT+vaQEC1rBNg5bNCHEz6fQ8zmL4glJcp5Cz3RggpO+/c3IkjADhL/btyuHgaesnf0m0WZcpj1ALrWquEMEcz1NIXykcr5IuvnnQOgw=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1752686730;
	c=relaxed/relaxed; bh=PmtAx/HJJ2SA1moH7Po6oHfKaqY77idCxVH2cW2NtB4=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=N05GuYhzYzSKmdDxR9qBlr5tbnZO0YRSnltmsbrLjCZ/TcNYkwQnoPWZtA5Kd2fM3ZwQbHPhdPvpY/AWv4dP5QDc7pFaKtnP7j8VzvOIRqHcH2eUj2BuI796lb5Szw6GUO3Rh45s4e0mHXoo5yHuRYfYWPpCbYaHWOxujbLNOIg=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org B508E4D0BA6
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1752686730; bh=J0XRhin6oJBMwhOHE7wqYqh9n0SB4Fxp0HqFBbpLQnQ=;
	h=Date:To:From:Cc:Subject;
	b=BNOKwFvE6oDBDHnssoV6wKWe9frGDsFGPUCp90N4QZ+EHn9+/lSoNQ4pqKSV311WT
	 T8oOM5q10SYCbsZwucmv/3U8ovJHgMDOX9EU6io2WHRub5TUELDfw9Fys1y5AipoBv
	 AW6HTusEAFy9gJ/+QAS6X1eeSjH137ChURjiwIiw=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org 9C5712E6006F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1752686730;
	bh=PmtAx/HJJ2SA1moH7Po6oHfKaqY77idCxVH2cW2NtB4=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=XcHF7f9dkaNpJN5xqMnMXja0q0hTbwdrwZKotAgizX6+RclFW0ZoVoJd1iojF+HFC
	 +VeeeUSzBC7dA2yM7OF0C0YpmCKkuTKNspg397zdBIMQryxLcSiuuR9By0GwIICpvg
	 gd7bDFdkKZJACtF1Ali0RjOZnQm0jT3rWX0tMN7c=
Message-ID: <4e37271c-6fd1-4717-9220-55fc583958fe@isc.org>
Date: Wed, 16 Jul 2025 12:25:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: "Everett B. Fulton" <ebf@isc.org>
Autocrypt: addr=ebf@isc.org; keydata=
 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
 AOqWNBhCZIHLci/7nA==
Cc: security-officer@isc.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] ISC has disclosed one vulnerability in BIND 9 (CVE-2025-40777)

On 16 July 2025 we (Internet Systems Consortium) disclosed one 
vulnerability affecting our BIND 9 software:

- CVE-2025-40777:       A possible assertion failure when 
'stale-answer-client-timeout' is set to '0' 
https://kb.isc.org/docs/cve-2025-40777

New versions of BIND 9 are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches 
selectively can find individual vulnerability-specific patches in the 
"patches" subdirectory of each published release directory:

- https://downloads.isc.org/isc/bind9/9.20.11/patches/
- https://downloads.isc.org/isc/bind9/9.21.10/patches/

With the public announcement of these vulnerabilities, the embargo 
period is ended and any updated software packages that have been 
prepared may be released.
