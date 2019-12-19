X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["880" "Wednesday" "18" "December" "2019" "23:09:40" "-0500" "Stuart D. Gathman" "stuart@gathman.org" nil "21" nil "^Date:" nil nil "12" nil nil (number mark "        stuart@gathm Dec 18   21/880   " thread-indent "\"Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17594 invoked by uid 550); 19 Dec 2019 11:51:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1802 invoked from network); 19 Dec 2019 04:09:53 -0000
Authentication-Results: mail.gathman.org; auth=pass (PLAIN sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1576728580; 
 h=message-id : subject : from : to : date : in-reply-to : 
 references : content-type : mime-version : 
 content-transfer-encoding : subject : from : date; 
 bh=HRPm8ixFwWDjlg/rbodyyEb5vpK8thjZVJnvBSqItCM=; 
 b=HvI6hwq/EP5PIxc4i+RX9WqbgB59GXt/U7uZCaAKQc8GWJ3KnLQgEFAr
 O7mcK66u/A1Wd+VCln5szJeQEPXlEacsZ9gEXZXBEJtAdipJzpbDqy7VJZ
 cbzLFE4P80jjLd+5AaNQINdtN+1zKLsKI/z94EtkLQRsa7RuiB5aT+YKk=
Message-ID: <aef19c3ba928f5246be41adcb2bebb3ad209f511.camel@gathman.org>
In-Reply-To: <CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>
References: <20191218181602.GA62521@tc-lan-adapter.local>
	 <CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Wed, 18 Dec 2019 23:09:40 -0500
From: "Stuart D. Gathman" <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2019-16782] Possible Information Leak /
 Session Hijack Vulnerability in Rack
To: oss-security@lists.openwall.com

On Thu, 2019-12-19 at 00:33 +0500, Alexander E. Patrakov wrote:
> 
> > The session id itself may be generated randomly, but the way the
> > session is indexed by the backing store does not use a secure
> > comparison.
> 
> I don't understand why this is reported as something Rack-specific.
> 
> On the other hand, I don't see how a timing attack would be possible
> on the most common data structures (B-Tree and Hash) used for
> database indexes.

My B-tree uses minimum unique key with leading duplicates not stored
for all but the leaf nodes - so it would also (eventually - there is so
much noise in the timing measurement) give away the key via timing
attacks.  

I had not thought of that angle, and I hope I remember this the next
time I am reinventing session ids.  Now I'm also wondering about other
libraries that manage session ids.  Java servlets in  Apache Tomcat?

