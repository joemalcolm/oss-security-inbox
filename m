X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1533" "Monday" "28" "December" "2015" "18:22:37" "+0100" "Florian Weimer" "fweimer@redhat.com" "<56816FDD.1050101@redhat.com>" "35" "Re: [oss-security] Being vulnerable to POODLE" nil nil nil "12" "2015122817:22:37" "[oss-security] Being vulnerable to POODLE" (number mark "U       fweimer@redh Dec 28   35/1533  " thread-indent "\"Re: [oss-security] Being vulnerable to POODLE\"\n") "<56815B56.5060602@geeklan.co.uk>" ("<567E41B4.2010606@geeklan.co.uk>" "<56814808.4000306@redhat.com>" "<56815B56.5060602@geeklan.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20092 invoked by uid 550); 28 Dec 2015 17:22:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20074 invoked from network); 28 Dec 2015 17:22:51 -0000
To: oss-security@lists.openwall.com
References: <567E41B4.2010606@geeklan.co.uk> <56814808.4000306@redhat.com>
 <56815B56.5060602@geeklan.co.uk>
From: Florian Weimer <fweimer@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56816FDD.1050101@redhat.com>
Date: Mon, 28 Dec 2015 18:22:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56815B56.5060602@geeklan.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: Re: [oss-security] Being vulnerable to POODLE

On 12/28/2015 04:55 PM, Sevan Janiyan wrote:
> Hi,
> 
> On 28/12/2015 14:32, Florian Weimer wrote:
>> How so?
>>
>> With some OpenSSL versions, it disables the 0/n split to mitigate a
>> *different* CBC vulnerability in TLS 1.0, and the client code explicitly
>> prevents OpenSSL from using TLS 1.1 and later.
> 
> SSLv23_server_method() is called to setup a server without any
> restrictions & SSL_CTX_set_options() sets SSL_OP_ALL on the context.
> The change I'm proposing explicitly disables the use of SSLv2/v3 so that
> we're not reliant on the SSL library (which may be out of date?) to
> impose restriction.

Having SSL 3.0 support enabled does not mean that a MITM attacker can
force a downgrade to SSL 3.0.  The vulnerability response to POODLE was
somewhat botched and initially did not fix the actual vulnerability
(insecure protocol downgrade in web browsers).  I think as far as FLOSS
is concerned, this has since been corrected, so offering SSL 3.0 support
does not longer result in connections which are vulnerable to POODLE.

Clients which offered SSL 3.0 support but did not perform an
out-of-protocol downgrade (like web browsers did) were not vulnerable,
either.

> Looking up the documentation before I reply, it seems that by using the
> SSL_OP_ALL setting, the mitigation you mention is actually disabled. See
> SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS & SSL_OP_ALL on[1]

Yes, this is what my meant, the documented SSL_OP_ALL setting is not
really safe.  But this is a different vulnerability from POODLE.

Florian
