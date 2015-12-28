X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1081" "Monday" "28" "December" "2015" "15:55:02" "+0000" "Sevan Janiyan" "venture37@geeklan.co.uk" "<56815B56.5060602@geeklan.co.uk>" "28" "Re: [oss-security] Being vulnerable to POODLE" "^Date:" nil nil "12" "2015122815:55:02" "[oss-security] Being vulnerable to POODLE" (number mark "U       venture37@ge Dec 28   28/1081  " thread-indent "\"Re: [oss-security] Being vulnerable to POODLE\"\n") "<56814808.4000306@redhat.com>" ("<567E41B4.2010606@geeklan.co.uk>" "<56814808.4000306@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10229 invoked by uid 550); 28 Dec 2015 15:55:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10207 invoked from network); 28 Dec 2015 15:55:16 -0000
References: <567E41B4.2010606@geeklan.co.uk> <56814808.4000306@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56815B56.5060602@geeklan.co.uk>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <56814808.4000306@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 28 Dec 2015 15:55:02 +0000
From: Sevan Janiyan <venture37@geeklan.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Being vulnerable to POODLE
To: oss-security@lists.openwall.com

Hi,

On 28/12/2015 14:32, Florian Weimer wrote:
> How so?
> 
> With some OpenSSL versions, it disables the 0/n split to mitigate a
> *different* CBC vulnerability in TLS 1.0, and the client code explicitly
> prevents OpenSSL from using TLS 1.1 and later.

SSLv23_server_method() is called to setup a server without any
restrictions & SSL_CTX_set_options() sets SSL_OP_ALL on the context.
The change I'm proposing explicitly disables the use of SSLv2/v3 so that
we're not reliant on the SSL library (which may be out of date?) to
impose restriction.

Looking up the documentation before I reply, it seems that by using the
SSL_OP_ALL setting, the mitigation you mention is actually disabled. See
SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS & SSL_OP_ALL on[1]

SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS
Disables a countermeasure against a SSL 3.0/TLS 1.0 protocol
vulnerability affecting CBC ciphers, which cannot be handled by some
broken SSL implementations. This option has no effect for connections
using other ciphers.


Sevan
[1] http://openssl.org/docs/manmaster/ssl/SSL_CTX_set_options.html
