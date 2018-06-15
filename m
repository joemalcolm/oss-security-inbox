X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["536" "Friday" "15" "June" "2018" "12:43:06" "-0700" "Anthony Liguori" "aliguori@amazon.com" "<cig332muvval9x.fsf@u44850075a5a8574dc8a1.ant.amazon.com>" "19" "Re: [oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak" "^CC:" nil nil "6" "2018061519:43:06" "[oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak" (number mark "        aliguori@ama Jun 15   19/536   " thread-indent "\"Re: [oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak\"\n") "<d06db3bb-d353-7b66-b627-a091acd2ceb3@oracle.com>" ("<cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>" "<d06db3bb-d353-7b66-b627-a091acd2ceb3@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32700 invoked by uid 550); 15 Jun 2018 19:58:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18153 invoked from network); 15 Jun 2018 19:43:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1529091806; x=1560627806;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=QINnEGkR34V2C3qotXN3Ahvf6+EonHeljtdWtSXaQL8=;
  b=pzagvibpjfiJXKHr1RnlGI7rKhIBb7yVsDe5a0JAI6po2HEZaDxUClmG
   GKDm29K3YCNsgZdaXCx1G5AMkEizec/D6zhRwEnXH2uFV78xYoGemHyNT
   aO3d/+GHSQzpWV4i+FnhfoWoV1QMQ/rfmTRsgE6XgvMxw31YO6r+IN5EH
   c=;
X-IronPort-AV: E=Sophos;i="5.51,228,1526342400"; 
   d="scan'208";a="683100671"
In-Reply-To: <d06db3bb-d353-7b66-b627-a091acd2ceb3@oracle.com>
References: <cig332r2l8rtee.fsf@u44850075a5a8574dc8a1.ant.amazon.com>
 <d06db3bb-d353-7b66-b627-a091acd2ceb3@oracle.com>
User-Agent: Notmuch/0.17 (http://notmuchmail.org) Emacs/24.3.1 (x86_64-pc-linux-gnu)
Message-ID: <cig332muvval9x.fsf@u44850075a5a8574dc8a1.ant.amazon.com>
MIME-Version: 1.0
Content-Type: text/plain
CC: <thomas.prescher@cyberus-technology.de>, <jsteckli@amazon.de>
Date: Fri, 15 Jun 2018 12:43:06 -0700
From: Anthony Liguori <aliguori@amazon.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-3665 Lazy FPU Context Switching Information Leak
To: Alan Coopersmith <alan.coopersmith@oracle.com>,
        <oss-security@lists.openwall.com>

Alan Coopersmith <alan.coopersmith@oracle.com> writes:

> On 06/15/18 07:55 AM, Anthony Liguori wrote:
>> Working exploit code that leaks one XMM register for Linux and FreeBSD is 
>> attached to this email.
>
> Did the attachment get lost on the way to the list?  I didn't see any.

I should have scrubbed that language.  We won't be sending that until
later this month.

Regards,

Anthony Liguori

>
> -- 
> 	-Alan Coopersmith-               alan.coopersmith@oracle.com
> 	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
