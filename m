X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1074" "Monday" "4" "January" "2016" "16:47:57" "+0100" "Damien Regad" "dregad@mantisbt.org" "<n6e47d$hou$1@ger.gmane.org>" "33" "[oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose confidential settings" nil nil nil "1" "2016010415:47:57" "[oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose confidential settings" (number mark "U       dregad@manti Jan  4   33/1074  " thread-indent "\"[oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose confidential settings\"\n") "<20160103170346.0AA4933213E@smtpvbsrv1.mitre.org>" ("<n69hag$2if$1@ger.gmane.org>" "<20160103170346.0AA4933213E@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5815 invoked by uid 550); 4 Jan 2016 15:48:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5791 invoked from network); 4 Jan 2016 15:48:21 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Mon, 4 Jan 2016 16:47:57 +0100
Message-ID: <n6e47d$hou$1@ger.gmane.org>
References: <n69hag$2if$1@ger.gmane.org>
 <20160103170346.0AA4933213E@smtpvbsrv1.mitre.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 168.108.192.178.dynamic.wline.res.cust.swisscom.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
In-Reply-To: <20160103170346.0AA4933213E@smtpvbsrv1.mitre.org>
Subject: [oss-security] Re: CVE Request: MantisBT SOAP API can be used to disclose
 confidential settings

On 2016-01-03 18:03, cve-assign@mitre.org 
wrote:
> In general, a vendor can choose to request a CVE ID for a
> vulnerability in beta software. This is unusual and (in cases of many
> other products) often not a good idea, but there is no absolute
> restriction on having a CVE ID.

The reason for requesting a CVE for a beta release is that this code has 
been out there and used "in production" for several years, despite being 
"beta" (change was committed [1] in Feb 2010).

> Use CVE-2014-9759 for the vulnerability caused by the
> master_crypto_salt spelling.

Thank you.

> There is no CVE ID for the general issue of "Implement a white list of
> options .

None was needed. The issue, as you correctly interpreted, is the 
disclosure of the crypto salt.

>> Further details available in our issue tracker [3]
>> [3] https://mantisbt.org/bugs/view.php?id=20277
>
> It currently gives an "Access Denied." error.

Apologies, I forgot to make the issue public after releasing the patch. 
It is available now.


[1] https://github.com/mantisbt/mantisbt/commit/eb5623605

