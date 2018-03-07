X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1093" "Wednesday" "7" "March" "2018" "11:09:50" "+0100" "Tomas Hoger" "thoger@redhat.com" "<20180307110950.4eb041a8@redhat.com>" "29" "Re: [oss-security] memcached UDP amplification attacks" "^Cc:" nil nil "3" "2018030710:09:50" "[oss-security] memcached UDP amplification attacks" (number mark "        thoger@redha Mar  7   29/1093  " thread-indent "\"Re: [oss-security] memcached UDP amplification attacks\"\n") "<CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>" ("<20180302124428.440b9c3b@pc1>" "<CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>" "<CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12033 invoked by uid 550); 7 Mar 2018 10:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12013 invoked from network); 7 Mar 2018 10:10:05 -0000
Message-ID: <20180307110950.4eb041a8@redhat.com>
In-Reply-To: <CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>
References: <20180302124428.440b9c3b@pc1>
	<CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>
	<CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.6]); Wed, 07 Mar 2018 10:09:54 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.6]); Wed, 07 Mar 2018 10:09:54 +0000 (UTC) for IP:'10.11.54.4' DOMAIN:'int-mx04.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'thoger@redhat.com' RCPT:''
Cc: oss-security@lists.openwall.com
Date: Wed, 7 Mar 2018 11:09:50 +0100
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memcached UDP amplification attacks
To: Kurt Seifried <kseifried@redhat.com>

On Fri, 2 Mar 2018 21:42:30 -0700 Kurt Seifried wrote:

> I have assigned CVE-2018-1000115 to this issue:
> 
> Memcached version 1.5.5 contains an Insufficient Control of Network
> Message Volume (Network Amplification, CWE-406) vulnerability in the
> UDP support of the memcached server that can result in denial of
> service via network flood (traffic amplification of 1:50,000 has been
> reported by reliable sources). This attack appear to be exploitable
> via network connectivity to port 11211 UDP. This vulnerability
> appears to have been fixed in 1.5.6 due to the disabling of the UDP
> protocol by default.

Minor nitpick, the description mentions 1:50,000 ratio, apparently
based on the information in the following reference:

> https://blogs.akamai.com/2018/03/memcached-fueled-13-tbps-attacks.html

where it's mentioned as:

"""
Worse, memcached can have an amplification factor of over 50,000,
meaning a 203 byte request results in a 100 megabyte response.
"""

However, 200 * 50k = 10m, not 100m.  Wonder if I'm doing my math wrong.

-- 
Tomas Hoger / Red Hat Product Security
