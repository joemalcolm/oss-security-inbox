X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["370" "Monday" "28" "December" "2015" "15:32:40" "+0100" "Florian Weimer" "fweimer@redhat.com" "<56814808.4000306@redhat.com>" "14" "Re: [oss-security] Being vulnerable to POODLE" nil nil nil "12" "2015122814:32:40" "[oss-security] Being vulnerable to POODLE" (number mark "U       fweimer@redh Dec 28   14/370   " thread-indent "\"Re: [oss-security] Being vulnerable to POODLE\"\n") "<567E41B4.2010606@geeklan.co.uk>" ("<567E41B4.2010606@geeklan.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11731 invoked by uid 550); 28 Dec 2015 14:32:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11713 invoked from network); 28 Dec 2015 14:32:55 -0000
To: oss-security@lists.openwall.com
References: <567E41B4.2010606@geeklan.co.uk>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <56814808.4000306@redhat.com>
Date: Mon, 28 Dec 2015 15:32:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <567E41B4.2010606@geeklan.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: Re: [oss-security] Being vulnerable to POODLE

On 12/26/2015 08:28 AM, Sevan Janiyan wrote:

> It turns out that CoovaChilli[1] is vulnerable to POODLE & I'd like to

> [1] http://coova.github.io/CoovaChilli/

How so?

With some OpenSSL versions, it disables the 0/n split to mitigate a
*different* CBC vulnerability in TLS 1.0, and the client code explicitly
prevents OpenSSL from using TLS 1.1 and later.

Florian

