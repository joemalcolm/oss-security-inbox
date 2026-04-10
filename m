Received: (qmail 32550 invoked by uid 550); 10 Apr 2026 15:07:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15830 invoked from network); 10 Apr 2026 13:56:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdwaa.nl; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1775829361; x=1775915761; bh=urIz+qnPvd
	61MFTZNuWzWfLF4p/Ve3bWVu/kfiPyQ48=; b=eSTOUlM9Uw8abULt/uSBjfKzV2
	LbreVQNG9sVZv+ucdyXQ9do3/4y1UV+JA2GzvYCltLUvKZiOC1I0+YPH/mIOrte9
	cah/Q6xgq4ueLkMupE0o7cLR/6qDi5ObsA+0LSxDgD6iH3hiuj79GynPzxHyxZXY
	gUsmNbB5bBrQ0RvDYtPUTyWuGVYpjNWoLTezivDhjLZMA8p5kNnY40/JmdZOiWXp
	Z+jkUkOrAKRqqXglq27ts4BTXCAl2ZghLPDJuXal0GmnARkUNkPsyKp78TMH5dM7
	RjVxeK3ceL9iXKfxOJMu00W9u2Ng6u/w9iYQlEZc6h3LVORWnKP1hFFHjHAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1775829361; x=1775915761; bh=urIz+qnPvd61MFTZNuWzWfLF4p/Ve3bWVu/
	kfiPyQ48=; b=SjPx7xA/obI0i0BjHTya9WxMPJzg0LvEw7dchyoyTyiwznEpvak
	KqnQrFjJ1jEc4ckyhlkpNMbi/AO4JL/2LbiTP5JMdlnQHTQsE76od9Eh+5b7mZan
	PY9VUH0VyYMyj6KzfoY22iuHJHwS0kLWi2oeQzIqogEHcjoKv1XImq0bJbHUclgc
	xhIV4hYC89RjsggYCHs4Yjve/lh+GqE5b4B5oaZmEa97mTz1qytDqK421ALtkDmq
	wZecM0+Ivx+E2fP6MnW0sJ12Rgpq50PblpOuOF7ZE+V6t/JPV4fr2ZUKpOVkT8t1
	xy4afMeyBQxOinIKILUafoz5MYhuGeXsWmw==
X-ME-Sender: <xms:cAHZaUCK2WyZXGeW1-Lbd0eAQuh6YpgCn68f2Jqk6__vMGnWSlxFVQ>
    <xme:cAHZaddxdWS2_Gr_aNh-y-tSU6t9kUel1pa6HpU4IApQjMulF9KjRUHIcg8NZDa41
    aglQghsM5GVpkhglI3Omedm7XvabZsQkSGK3tTXonbJDva_Is-m30o>
X-ME-Received: <xmr:cAHZadMNnyph0DdYmJucm6YoJ4ijOWISV1EQsSoeJUSCE0x73dADGkHGE_Col8r6Dewts869q2OlKkZ_fFqx_VxZWgTX9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddvleehlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfhffuvfgtgfesthejredttddvje
    enucfhrhhomheplfgvlhhlvgcuvhgrnhcuuggvrhcuhggrrgcuoehjvghllhgvsehvugif
    rggrrdhnlheqnecuggftrfgrthhtvghrnhepgeegudffffetgeekgfeuffetjeevjeeitd
    dtgedugeejffdugffgtefhgeeiueeinecuffhomhgrihhnpehgihhthhhusgdrtghomhdp
    rghuthhhvghnthhitggrthhiohhnrdhmugdphhhtthhprhgvqhhuvghsthhtohhthhgvlh
    hoghhinhgvnhguphhoihhnthdrnhhopdhrvgguhhgrthdrtghomhenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjvghllhgvsehvugifrggrrd
    hnlhdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
    ohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:cAHZaf71HS3EVSpgEE0_xEoX9PRalbZtsuqvLaezJbgP7RHXcVRObQ>
    <xmx:cAHZaZLmEMwL7RruUGFAa4kfaX3rgkV2Ui_PpDjDDHG2CGHlysWHCA>
    <xmx:cAHZaRdFnP6F7_WrstCpew4Qtw4_xcbLwL9Wpma1GZeZ-mE5U1yBQA>
    <xmx:cAHZaUcez4Dsa3VW7ROym856IKo_jld8YqugYdXg8w1Nio025rCsfA>
    <xmx:cQHZaSo_CpkoHXhqXWNymAlI-soTVKHX4AjPLvcjs7uYR2jRNoNZJnHu>
Feedback-ID: i2d0446dd:Fastmail
Message-ID: <a65b1dc1-b629-4999-a812-e09b11bee75d@vdwaa.nl>
Date: Fri, 10 Apr 2026 15:55:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jelle van der Waa <jelle@vdwaa.nl>
To: oss-security@lists.openwall.com
Content-Language: en-US
Autocrypt: addr=jelle@vdwaa.nl;
 keydata= xsBNBE6QLAIBCAC3O6LmF+GKvOh7IV00TG+EKAQHAwjESnHGJOW58lKK7eAYn62ZM1uy0+6h
 yCMu5PD7+ND6U1gcgTTHYwNK8AaJt7yY4FRssgdcJk59uJBwROZtllotClJ893CuB6Wgr68b
 07gIRbENYrB8rEoGfpUG//8/ep7sY8PS03jnFb4ll6mPlUE2oQVdYOlXgF4f9qkkIi4SQeE2
 MTuERaOrDuUNDlroJ7Yfx3J/rL5Qjn578/TKCAxg0pns6VIA/P9spRGmLhT4zP+OxZXeSZme
 IxcwFdJJXHr4oGaZvqe1yHlMmKR98rrIfPWhkw2Ls/XIZIxf6prT0XyczbzBnC2y1JyNABEB
 AAHNIkplbGxlIHZhbiBkZXIgV2FhIDxqZWxsZUB2ZHdhYS5ubD7CwHsEEwECACUCGwMGCwkI
 BwMCBhUIAgkKCwQWAgMBAh4BAheABQJUX8WhAhkBAAoJEMBghjN8UHc+mFwH/jjN+Qob4O36
 YiieajRwVLGuYdUDt9Z655oQYU8V4qbWf2tjUtqTYXrxLnaY6xQoYouRz9yFbh9dIKZb67ir
 7AeVgCOtWVesGxAlGH6EY5JBZcsN0v0ScsivqQAv/Mv+4HK+XM57YlyRagD8tkprYskioWHg
 OwQfXAO6nlm4BJHWO9bHJUMgiGs7I190IKQG7iLBnJuGjsOFuy5KTLpnv+w7twmz0H+pkUPe
 jVHfJlJWdN4v1PigpgpjOR6ZepSIggMk7dHsa6GNLUOzi61yYVFe60+EGXhwyJIqSt56a4oR
 jMUcXaOugGr+JwC8Eq7Pg2+aFk+8fbe0oUzZJucHGnDOwE0ETpAsAgEIAK4Usb7B00WRxCZG
 HtM973F7V4OhOKv4kZKduxtu71bVUZsTuzn4h+m8guJ51uY/I2icUrN9gJG5aEzRqPuQi2L7
 KmZUjs3pscZWgUgiT8UZFDR6RuQ4k3CcWobsRCjYZdSblSZ8ccrLJE7xSbwKMXjAh2PEiaQT
 lS6wQbn6mHv4y3H9QVHs7+jXbmfHCxnVcwLqRmpuegSmezDaL5TlSc102voiXinhrWEZUvAB
 KDh6VuJ/60Y6zelCXVsEjRaApz90iXY1nifLhkHM8B2wG7Pum3V3X0Y0QTVD+z3EL1iq5mFu
 epKp//IOeeJN5iwHcRSJGy2s1oOzjRDyPv6v1AUAEQEAAcLAXwQYAQIACQUCTpAsAgIbDAAK
 CRDAYIYzfFB3PvDuB/0dI13hSYHW27c2Rq8BaGbIhXYYETtPD5B25/P1JJ5OQZkPmVq+vSHw
 uzUaDZHy3ZcwE+xFXzlkwXGdWos07JUGo74zV3HfeZxVEPv0HB9ACqQVU/JKjLZNj2SfhgzL
 4F+O4Zgdsf0YaZG09F5PbMvbhoCZLfAaKWz/4fLEfhrDJLhrphUyPDXosn0UxPkDv0iiixn4
 V+bEZ5/wd8dRWi58R/iND+gRGsBREm5SpzdhnsarwoX6YdsQ449379enDNUN7jV4C3Gkon2s
 VwI2ZZbS10cY8rFSAV/CJA2E9daRoz40DI0tgXgLBAVhy7y5HWZJsDZexU0HFKJfkDi7RUPj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-4631 [cockpit] Unauthenticated remote code execution due to
 SSH command-line argument injection

Cockpit's remote login feature passes user-supplied hostnames and 
usernames from the web interface to the SSH client without validation or 
sanitization. An attacker with network access to the Cockpit web service 
can craft a single HTTP request to the login endpoint that injects 
malicious SSH options or shell commands, achieving code execution on the 
Cockpit host without valid credentials. The injection occurs during the 
authentication flow before any credential verification takes place, 
meaning no login is required to exploit the vulnerability.

------------------------------------------------------------------------

This was fixed in version 360 with versions > 326 being vulnerable, a 
patch for backporting is available in the GitHub security advisory. More 
extensive details from the bugzilla issue are copy & pasted below: [1] [2]

By default, Cockpit supports logging into remote machines via SSH
(https://github.com/cockpit-project/cockpit/blob/main/doc/authentication.md#remote-machines). 

While previous Cockpit versions used the dedicated cockpit-ssh helper
(based on libssh), Cockpit since version 326/327 executes "python3 -m
cockpit.beiboot", which in turn invokes the OpenSSH "ssh" client to
connect to remote machines. The SSH "connect to" feature is available
prior to authentication, meaning an attacker with access to the Cockpit
webservice can trigger the execution of ssh on the Cockpit host. To be
precise: the beiboot process is spawned as part of the authentication
flow, but the attacker only needs to supply an arbitrary "Authorization:
Basic" header with any credentials (even invalid ones) in a request to
"/cockpit+=<hostname>/login" to trigger the ssh invocation. The injected
commands execute before SSH authentication completes or fails.

The security issue is that SSH connection parameters are passed down as
command-line arguments to ssh without any validation or sanitization.
Neither cockpit-ws (C code in cockpitauth.c / cockpitauthorize.c) nor
cockpit.beiboot (Python code in beiboot.py) performs any character or
format checks on the username or hostname before passing them to the ssh
process. In particular, this allows an attacker to invoke ssh on the
Cockpit host with an arbitrary username and hostname during the login flow.

The resulting ssh invocation looks like (simplified; additional options
like -o NumberOfPasswordPrompts=1 are omitted for clarity):

     arg0: ssh
     arg1: -l
     arg2: <username>
     arg3: <hostname>
     arg4: python3 -ic '# cockpit-bridge'

An attacker has full control over <username> and near-full control over
<hostname> (some characters like whitespace and slashes cannot be used
because the hostname is extracted from the URL path). Notably, there is
no "--" separator between the ssh options and the destination argument,
which enables option injection via the hostname field.

This leads to the following two vulnerabilities:

(1) Injection of malicious remote username leading to RCE

SSH allows the use of the remote username as a variable in SSH
configuration files via the %r token. A potential SSH configuration
could be:

     Match exec "/usr/bin/test %r = blocked_user"
         ProxyCommand /bin/false

With this configuration, ssh executes the command "/usr/bin/test
<username> = blocked_user" during connection setup. Since %r is expanded
before the command is passed to the shell, an attacker can inject
arbitrary shell commands through the username. For example, using the
username "x; touch /tmp/flag; #" would cause ssh to execute:

     /usr/bin/test x; touch /tmp/flag; # = blocked_user

The command injection occurs before ssh validates the username format.
Although ssh ultimately terminates with "remote username containing
invalid characters", the injected command ("touch /tmp/flag") has
already been executed.

This means if the Cockpit host's ssh_config uses %r in a "Match exec"
directive, Cockpit is vulnerable to unauthenticated remote code execution.

I am in parallel in contact with the OpenSSH maintainers to get this
problem fixed in OpenSSH as well, though I believe it is also an issue
in Cockpit for passing unverified data to ssh.

(2) Injection of malicious hostname leading to RCE

Since the hostname is passed as a positional argument to ssh without a
preceding "--" separator (see via_ssh() in beiboot.py), an attacker can
inject SSH options by supplying a hostname that starts with "-". For
example, the attacker can pass "-oProxyCommand=<malicious_command>" as
the hostname via the URL path
"/cockpit+=-oProxyCommand=<malicious_command>/login".

ProxyCommand is an SSH client option that executes a specified program
whenever SSH connects to a remote host. When the original hostname field
is consumed as an option instead of a hostname, ssh interprets the next
positional argument, which is "python3 -ic '# cockpit-bridge'" (the
remote command), as the actual hostname. This means the malicious
ProxyCommand is executed as ssh attempts to "connect" to this
misinterpreted hostname.

Fortunately, OpenSSH version 9.6 introduced early hostname validation
that bans shell metacharacters in command-line hostnames and usernames
(https://github.com/openssh/openssh-portable/commit/7ef3787) before
establishing an SSH connection. With OpenSSH >= 9.6, the command
injection via "-oProxyCommand=<malicious_command>" fails because
"python3 -ic '# cockpit-bridge'" contains invalid hostname characters
(spaces, quotes, etc.), and ssh aborts before executing the
ProxyCommand. Nevertheless, on older OpenSSH versions, this check is not
available and <malicious_command> will be executed by OpenSSH in an
attempt to connect to "python3 -ic '# cockpit-bridge'".

The probability that a Cockpit host is vulnerable to this depends on the
OpenSSH version installed. Cockpit migrated to the beiboot/OpenSSH path
in version 327 (released 2024-10-23), while OpenSSH 9.6 was released on
2023-12-18, which is roughly 10 months earlier. Systems that upgraded
Cockpit to >= 327 but did not update OpenSSH to >= 9.6 would be
vulnerable to unauthenticated remote code execution via hostname injection.

Potential fix:

1. Add a "--" separator before the destination argument in via_ssh()
(beiboot.py) to prevent option injection via the hostname. This directly
mitigates vulnerability (2).
2. Validate both username and hostname using a character allowlist
before passing them to ssh. Examples for such validation can be found in
OpenSSH's source code: valid_hostname() and valid_ruser() in ssh.c. This
mitigates both vulnerabilities (1) and (2).

Summary:

While the preconditions for these vulnerabilities will likely affect
only a subset of Cockpit installations, the impact is critical:
unauthenticated remote code execution on the Cockpit host. An attacker
with network access to the Cockpit webservice can trigger the exploit
with a single crafted HTTP request to the login endpoint. No valid
credentials are required, as the injection occurs during the
authentication flow before SSH authentication completes.

[1] https://bugzilla.redhat.com/show_bug.cgi?id=2450246
[2] 
https://github.com/cockpit-project/cockpit/security/advisories/GHSA-m4gv-x78h-3427
