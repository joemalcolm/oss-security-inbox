X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["788" "Tuesday" "4" "August" "2015" "11:58:03" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<55C05B73.7090607@redhat.com>" "29" "Re: [oss-security] CVE Request: Information disclosure in pcre" nil nil nil "8" "2015080406:28:03" "[oss-security] CVE Request: Information disclosure in pcre" (number mark "        huzaifas@red Aug  4   29/788   " thread-indent "\"Re: [oss-security] CVE Request: Information disclosure in pcre\"\n") "<55C059F6.6050904@redhat.com>" ("<55C059F6.6050904@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12215 invoked by uid 550); 4 Aug 2015 06:15:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12143 invoked from network); 4 Aug 2015 06:15:17 -0000
References: <55C059F6.6050904@redhat.com>
Message-ID: <55C05B73.7090607@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55C059F6.6050904@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 4 Aug 2015 11:58:03 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Information disclosure in pcre
To: oss-security@lists.openwall.com

On 08/04/2015 11:51 AM, Huzaifa Sidhpurwala wrote:
> Hi All,
> 
> It was reported that pcre_exec in PHP pcre extenstion partially
> initialize a buffer when an invalid regex is processed, which can lead
> to an arbitrary code execution.
> 
This should have been "which can lead to information disclosure"

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=1187225


> https://bugs.exim.org/show_bug.cgi?id=1537
> 
> This patch has been committed upstream via:
> http://vcs.pcre.org/pcre/code/trunk/pcre_exec.c?r1=1502&r2=1510
> 
> And is a part of upstream release pcre-8.37
> 
> This was initially reported by ZDI (ZDI-CAN-2547), but it seems there
> was no follow-up.
> 
> Can a CVE id be please assigned to this issue?
> 


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
