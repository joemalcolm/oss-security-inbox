X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["712" "Wednesday" "29" "July" "2015" "21:16:52" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55B926A4.2020601@redhat.com>" "18" "Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling" nil nil nil "7" "2015072919:16:52" "[oss-security] CVE Request - Go net/http library - HTTP smuggling" (number mark "        fweimer@redh Jul 29   18/712   " thread-indent "\"Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling\"\n") "<CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>" ("<CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30297 invoked by uid 550); 29 Jul 2015 19:17:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30267 invoked from network); 29 Jul 2015 19:17:07 -0000
References: <CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>
Message-ID: <55B926A4.2020601@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: oss-security@lists.openwall.com
Date: Wed, 29 Jul 2015 21:16:52 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling
To: jbuberel@google.com

On 07/29/2015 05:15 PM, Jason Buberel wrote:
> Hello OSS Security Community,
> 
> The Go open source project has received notification of an HTTP request
> smuggling vulnerability in the net/http library (
> http://golang.org/pkg/net/http/). The vulnerability was identified in the
> 1.4.2 release version (http://golang.org/dl) and in the 1.5 release branch.

How does one report such things?

Due to lack of published security contact information, I contacted the
de-facto subsystem maintainer about the issue, but I have been ignored.

(It would be nice to be able to bundle such security updates as far as
possible, to avoid recompiling everything constantly.)

-- 
Florian Weimer / Red Hat Product Security
