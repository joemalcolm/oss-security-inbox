X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["324" "Saturday" "17" "June" "2017" "11:40:34" "+0200" "Florian Weimer" "fweimer@redhat.com" "<0b51611b-36c2-3dc6-2a69-b9b49fdd2700@redhat.com>" "8" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061709:40:34" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        fweimer@redh Jun 17    8/324   " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>" "<20170616204437.GC2269@hunt>" "<CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>" "<alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7678 invoked by uid 550); 17 Jun 2017 09:40:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7654 invoked from network); 17 Jun 2017 09:40:49 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 4AF1E37E60
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 4AF1E37E60
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
 <20170616204437.GC2269@hunt>
 <CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>
 <alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>
Message-ID: <0b51611b-36c2-3dc6-2a69-b9b49fdd2700@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Sat, 17 Jun 2017 09:40:37 +0000 (UTC)
Date: Sat, 17 Jun 2017 11:40:34 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security@lists.openwall.com,
 Bob Friesenhahn <bfriesen@simple.dallas.tx.us>

On 06/17/2017 04:02 AM, Bob Friesenhahn wrote:
> Uclibc is a C library like GNU libc.  Why would a JS engine not use it?

Javascript has 16-bit strings, like Java, Windows, and some UNIX
variants.  GNU/Linux C libraries typically offer only 8-bit (multi-byte)
or 32-bit (wchar_t) strings, so they are a poor match.

Florian
