X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1024" "Monday" "14" "March" "2016" "16:55:14" "+0300" "Yuriy M. Kaminskiy" "yumkam@gmail.com" "<nc6fs4$ta1$1@ger.gmane.org>" "26" "[oss-security] Re: CVE-Request - GNU Awk." "^Date:" nil nil "3" "2016031413:55:14" "[oss-security] Re: CVE-Request - GNU Awk." (number mark "        yumkam@gmail Mar 14   26/1024  " thread-indent "\"[oss-security] Re: CVE-Request - GNU Awk.\"\n") "<20160314132652.4530b528@redhat.com>" ("<20160314063228.GA12829@steve.org.uk>" "<20160314132652.4530b528@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17588 invoked by uid 550); 14 Mar 2016 13:55:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17570 invoked from network); 14 Mar 2016 13:55:38 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <nc6fs4$ta1$1@ger.gmane.org>
References: <20160314063228.GA12829@steve.org.uk>
 <20160314132652.4530b528@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp37-190-56-84.pppoe.spdop.ru
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
In-Reply-To: <20160314132652.4530b528@redhat.com>
Date: Mon, 14 Mar 2016 16:55:14 +0300
From: "Yuriy M. Kaminskiy" <yumkam@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-Request - GNU Awk.
To: oss-security@lists.openwall.com

On 14.03.2016 15:26, Tomas Hoger wrote:
> On Mon, 14 Mar 2016 06:32:28 +0000 Steve Kemp wrote:
>
>>    I reported two DoS bugs against GNU Awk to the debian
>>   bug tracker recently, both of which are denial of service
>>   attacks causing NULL-pointer deferences.
>>
>>    It would be useful to have a CVE identifiers assigned.
>
> Why should these get a CVE?  As you state in one of your reports:
>
>    While I appreciate that passing untrusted code to gawk is not a
>    common thing to do, I do not believe that it should be possible to
>    trigger a segfault though.
>
> Why should that be considered a valid / safe use case at all?  If
> something makes awk run untrusted programs, there's code execution
> problem already:
>
>    echo | awk '{ system("id") }'

What if someone generates awk script using data from untrusted source, 
and avoids all theoretically-dangerous constructs (like system()), but 
their filter miss something theoretically-innocent that can trigger 
SIGSEGV (or worse) due to bug in gawk.

