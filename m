X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["580" "Thursday" "12" "January" "2017" "13:10:41" "+0100" "Florian Weimer" "fweimer@redhat.com" "<234c46c2-a4a9-4f65-d65e-e3bd5152fd0e@redhat.com>" "22" "Re: [oss-security] invalid free in GNU ed before 1.14.1" "^Date:" nil nil "1" "2017011212:10:41" "[oss-security] invalid free in GNU ed before 1.14.1" (number mark "        fweimer@redh Jan 12   22/580   " thread-indent "\"Re: [oss-security] invalid free in GNU ed before 1.14.1\"\n") "<20170112121405.563ee9ee@pc1>" ("<20170112121405.563ee9ee@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26464 invoked by uid 550); 12 Jan 2017 12:10:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26443 invoked from network); 12 Jan 2017 12:10:53 -0000
References: <20170112121405.563ee9ee@pc1>
Message-ID: <234c46c2-a4a9-4f65-d65e-e3bd5152fd0e@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170112121405.563ee9ee@pc1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Thu, 12 Jan 2017 12:10:43 +0000 (UTC)
Date: Thu, 12 Jan 2017 13:10:41 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] invalid free in GNU ed before 1.14.1
To: oss-security@lists.openwall.com

On 01/12/2017 12:14 PM, Hanno Böck wrote:
> Hi,
>
> ed 1.14.1 fixes an invalid free, reported here:
> https://lists.gnu.org/archive/html/bug-ed/2017-01/msg00000.html
>
> Reproducer:
> echo -e "H\n?\{" | ed
>
> Found with afl. ed 1.14.1 didn't show any more issues with afl/asan
> fuzzing.
>
> Not sure if there's any scenario where ed is used with untrusted input.

There is red/ed -r.  I wouldn't rely on it for security isolation, but 
the functionality does exist.

(Debian's APT uses ed scripts for package list diffs, but it doesn't use 
ed to apply them.)

Thanks,
Florian
