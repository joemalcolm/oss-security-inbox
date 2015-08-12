X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Wednesday" "12" "August" "2015" "13:57:38" "-0700" "Shannon Sabens" "zdi-disclosures@tippingpoint.com" "<55CBB342.3070200@hp.com>" "28" "[oss-security] Re: CVE Request: Information disclosure in pcre" nil nil nil "8" "2015081220:57:38" "[oss-security] Re: CVE Request: Information disclosure in pcre" (number mark "        zdi-disclosu Aug 12   28/638   " thread-indent "\"[oss-security] Re: CVE Request: Information disclosure in pcre\"\n") "<55C059F6.6050904@redhat.com>" ("<55C059F6.6050904@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7877 invoked by uid 550); 12 Aug 2015 20:59:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5443 invoked from network); 12 Aug 2015 20:57:51 -0000
References: <55C059F6.6050904@redhat.com>
Message-ID: <55CBB342.3070200@hp.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55C059F6.6050904@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: zdi-disclosures@tippingpoint.com
Date: Wed, 12 Aug 2015 13:57:38 -0700
From: Shannon Sabens <zdi-disclosures@tippingpoint.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Information disclosure in pcre
To: Huzaifa Sidhpurwala <huzaifas@redhat.com>,
 oss-security@lists.openwall.com,
 Mitre CVE assign department <cve-assign@mitre.org>

Hello,

Re-ping on this?

Thank you.

Shannon

On 8/3/2015 11:21 PM, Huzaifa Sidhpurwala wrote:
> Hi All,
>
> It was reported that pcre_exec in PHP pcre extenstion partially
> initialize a buffer when an invalid regex is processed, which can lead
> to an arbitrary code execution.
>
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

