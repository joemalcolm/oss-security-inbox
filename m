Received: (qmail 28243 invoked by uid 550); 30 Dec 2025 19:10:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22310 invoked from network); 30 Dec 2025 07:23:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.org; s=2017;
	t=1767079392; bh=2zKK3eSbd7OYichAfbXgphe2MVETNP2JqT0JLkIGR/E=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Autocrypt:
	 Content-Type:Content-Transfer-Encoding:From;
	b=pJeygnd9WhxtNDTwqiQXFV5lafoq/amlLMxCmml3zQtA0qP3rGc3TiOQxEkMgvc0S
	 vbR+I5SSEtL8uXm5H/ZTc1I4JJarpu8PWVFdh7uMC9KVbqbz9oymPQ4pT7s7SR0rzc
	 4may+EZbJprm6YjilDGQ+vQGl7S00dKpF5b/Bvy8wlolX7RmfDjnKpiXVTnXOfGsuM
	 tDbN55+CBSc+kdyOCwnFGcWfsDXItu2BkkqkaGGHkrCLcIUmBMPkUNEv0KquQ4gz/b
	 SA3WYKwQYxDkN5ZN0qqt9CVeqZOBPaX+JpzZEN/jz/kVTm/7gzeAdj8142HbAttMTk
	 m3hvsOZPweOfw==
Message-ID: <bd7c5319-8048-4dcf-b679-5e0355551650@posteo.org>
Date: Tue, 30 Dec 2025 07:23:12 +0000
MIME-Version: 1.0
Content-Language: en-US, de-DE
References: <d2c0f3cb-d66c-43ec-9b61-05802df1a048@posteo.org>
To: oss-security@lists.openwall.com
From: wish42offcl98@posteo.org
Autocrypt: addr=wish42offcl98@posteo.org; keydata=
 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
In-Reply-To: <d2c0f3cb-d66c-43ec-9b61-05802df1a048@posteo.org>
X-Forwarded-Message-Id: <d2c0f3cb-d66c-43ec-9b61-05802df1a048@posteo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Systemd vsock sshd

I have searched for that - instead of blacklisting the vsock module, I 
did myself two measures:
- systemctl mask --now sshd-unix-local.socket
to kill and mask the sshd unix socket created by that generator,
- systemctl mask sshd-vsock.socket
to mask the sshd vsock created by that generator (use --now if the 
socket has started or use systemctl stop... ).

Though, vsock untested but I found that source mentioning that socket.
https://linux-audit.com/system-administration/commands/systemd-analyze/
Masking the sockets should stop them from starting again.

The vsock kernel module should not be blacklisted if some hypervisor 
features are required:
https://libvirt.org/ssh-proxy.html
https://wiki.qemu.org/Features/VirtioVsock

Greetings
Alex


On 12/29/25 05:11, Jacob Bachmeyer wrote:
> On 12/27/25 21:46, Greg Dahlman wrote:
>> [...]
>>
>>   **Systemd v256 change** - When the *openssh-server* package is
>>   installed on a VM with vsock support, systemd now automatically
>>   starts an *sshd* instance that listens on the **af_vsock** socket in
>>   the **global network namespace** without any manual configuration.
> 
> Obvious question:  what manual configuration is required to kill that 
> listener?
> 
> 
> -- Jacob

