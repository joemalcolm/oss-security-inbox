X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["974" "Thursday" "9" "April" "2015" "13:10:21" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55265E1D.4050404@redhat.com>" "27" "Re: [oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro" nil nil nil "4" "2015040911:10:21" "[oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq macro" (number mark "        fweimer@redh Apr  9   27/974   " thread-indent "\"Re: [oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro\"\n") "<20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>" ("<20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23602 invoked by uid 550); 9 Apr 2015 11:10:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23581 invoked from network); 9 Apr 2015 11:10:39 -0000
Message-ID: <55265E1D.4050404@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>
In-Reply-To: <20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
CC: cve-assign@mitre.org
Date: Thu, 09 Apr 2015 13:10:21 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq
 macro
To: oss-security@lists.openwall.com, marc.deslauriers@canonical.com

On 04/09/2015 09:09 AM, cve-assign@mitre.org wrote:
>> The MakeBigReq macro in libX11 contained a 4-byte buffer overflow:
> 
>> https://bugs.freedesktop.org/show_bug.cgi?id=56508
> 
>> Fixed by the following commit in libX11 1.5.99.901:
> 
>> http://cgit.freedesktop.org/xorg/lib/libX11/commit/?id=39547d600a13713e15429f49768e54c3173c828d
> 
> (for the "#ifdef LONG64")
>> - memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
>> + memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
> 
> (for the "else")
>> - memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
>> + memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
> 
> Use CVE-2013-7439.

Does this assignment cover application code which has to be recompiled
because it included an expansion of broken macro?

(The question is hypothetical.  I could find copies of the header file,
but not actual users of the macro.)

-- 
Florian Weimer / Red Hat Product Security
