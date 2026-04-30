Received: (qmail 15920 invoked by uid 550); 30 Apr 2026 17:10:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5378 invoked from network); 30 Apr 2026 17:04:31 -0000
X-Virus-Scanned: Powered by H&S
X-Spam-Flag: NO
X-Spam-Score: -3.099
X-Spam-Level:
X-Spam-Status: No, score=-3.099 tagged_above=-20 required=6.31
	tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, DKIM_SIGNED=0.1,
	DKIM_VALID=-0.1, DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1,
	HTML_MESSAGE=0.001] autolearn=ham autolearn_force=no
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rs-labs.com;
	s=default; t=1777568661;
	bh=f+6CjI/FQSNIyjaUtBG6ZKgLQChEh/rOXG5ygcO9+cc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=F3HC4ISivqGqXeAn9brsgC5mA8MgUXDqd6iE5Pw1Asgch0UXwZCtemw8XZe48/JeG
	 bK8e5u8K2ZdD5Lesl72JECprk5P8FO9rUsSXOisHPn9RtowiMEYVFrfM1RrJjet3G/
	 X/1WXgoo0lb3z1cTEoG1rmzoUOSd7tIZgSvDe3MTGoY7oXF7zcDQxQMW3AvL295ZIT
	 /DpGxN3zRf7GtsZ6JxxtGHxsSbhAFMacnirxoYyqliyVvH2FC05HX32/m90hJYwKfP
	 Shhi4VIeITMNExNZK1kto2APP+eEkK4rf80LzhNGD6hROOwFvPqD7T/DUkvO+DJBJ8
	 AMmGlUuZAmWTQ==
Content-Type: multipart/alternative;
 boundary="------------Hjoi2USg07Y6eVjdytDyadWF"
Message-ID: <adf629c9-12e4-4c70-8ace-37e46e8198b4@rs-labs.com>
Date: Thu, 30 Apr 2026 19:04:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afJorKIje4O6dXbH@netmeister.org> <871pfxpf0v.fsf@gentoo.org>
 <afKs-tphZDvl3GIX@panix.com> <20260430015233.GA24812@openwall.com>
Content-Language: es-ES
From: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
Autocrypt: addr=roman@rs-labs.com; keydata=
 xjMEY7H/oBYJKwYBBAHaRw8BAQdAZ2tzTKX4/hZc7SzdYVJD39zQByk6uXElXdtGz8V+DFrN
 PFJvbWFuIE1lZGluYS1IZWlnbCBIZXJuYW5kZXogLSBSb01hTlNvRnQgPHJvbWFuQHJzLWxh
 YnMuY29tPsKTBBMWCgA7FiEEMeSkCVEAqzksunDpg5Wc3IyiYtMFAmOyADICGwMFCwkIBwIC
 IgIGFQoJCAsCBBYCAwECHgcCF4AACgkQg5Wc3IyiYtO+DAEA2TjnrrcA7s8pq/7OvrkHpsk5
 5V8JJC3RGOzaKY2waPgA+wdRlJpr3QOUbW8/apnHq14bP6PMmTAJqV8x0UcrXWwLzjgEY7H/
 oBIKKwYBBAGXVQEFAQEHQFtEVVd7HbIh+SxU1WN6b1P1ANzeLqi6xp0EOnFuDhNYAwEIB8J4
 BBgWCgAgFiEEMeSkCVEAqzksunDpg5Wc3IyiYtMFAmOx/6ACGwwACgkQg5Wc3IyiYtNGiQEA
 ucS9+HUFkYECnMk+REuXVmmw8KybMigLD2PdzFm/QwsBAKkMzyRf5fYChbDWqVdp66tzYozJ
 PSI/cTpQwbw1XVwB
In-Reply-To: <20260430015233.GA24812@openwall.com>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

--------------Hjoi2USg07Y6eVjdytDyadWF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

El 30/04/2026 a las 3:52, Solar Designer escribió:
> Another curious detail is the exploit needs Python newer than EL9
> installs by default, which might slow down some script kiddies a little
> bit.  The above Python 3.11 worked (before the mitigation), but Rocky
> Linux 9.7's default install of 3.9 did not (has no os.splice).

Well, script kiddies can still build these exploits static-ELF and 
upload to vulnerable boxes for an easy pwning:

https://github.com/tgies/copy-fail-c

https://github.com/badsectorlabs/copyfail-go


-- 
Saludos,
-Román


--------------Hjoi2USg07Y6eVjdytDyadWF--
