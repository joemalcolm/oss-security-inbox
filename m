X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["342" "Tuesday" "29" "December" "2015" "12:43:32" "+0000" "Sevan Janiyan" "venture37@geeklan.co.uk" "<56827FF4.4020607@geeklan.co.uk>" "11" "Re: [oss-security] Being vulnerable to POODLE" nil nil nil "12" "2015122912:43:32" "[oss-security] Being vulnerable to POODLE" (number mark "U       venture37@ge Dec 29   11/342   " thread-indent "\"Re: [oss-security] Being vulnerable to POODLE\"\n") "<56816FDD.1050101@redhat.com>" ("<567E41B4.2010606@geeklan.co.uk>" "<56814808.4000306@redhat.com>" "<56815B56.5060602@geeklan.co.uk>" "<56816FDD.1050101@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28318 invoked by uid 550); 29 Dec 2015 12:43:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28294 invoked from network); 29 Dec 2015 12:43:54 -0000
To: oss-security@lists.openwall.com
References: <567E41B4.2010606@geeklan.co.uk> <56814808.4000306@redhat.com>
 <56815B56.5060602@geeklan.co.uk> <56816FDD.1050101@redhat.com>
From: Sevan Janiyan <venture37@geeklan.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <56827FF4.4020607@geeklan.co.uk>
Date: Tue, 29 Dec 2015 12:43:32 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <56816FDD.1050101@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Being vulnerable to POODLE


On 28/12/2015 17:22, Florian Weimer wrote:
> Yes, this is what my meant, the documented SSL_OP_ALL setting is not
> really safe.  But this is a different vulnerability from POODLE.

Understood.
Should I request a CVE for the use of SSL_OP_ALL which enables
SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS or use an existing CVE? (CVE-2011-3389?)


Sevan
