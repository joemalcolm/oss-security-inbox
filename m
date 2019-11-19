X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["711" "Tuesday" "19" "November" "2019" "09:08:32" "-0500" "Stuart D. Gathman" "stuart@gathman.org" "<alpine.LRH.2.21.1911190904540.22622@fairfax.gathman.org>" "19" "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil "11" "2019111914:08:32" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "U       stuart@gathm Nov 19   19/711   " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<20191119121910.g6tc5zwbmbdiuiuh@anathema>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191119121910.g6tc5zwbmbdiuiuh@anathema>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19754 invoked by uid 550); 19 Nov 2019 15:50:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12134 invoked from network); 19 Nov 2019 14:08:49 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::2" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1574172128; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=3TzJQNeAzOMs/Ba3sHJNq8iEqkcuxh4PcHIAaZUFqW0=; 
 b=HpXXYNLSqv3gRyEXec29aHsQcDCtXpJD3S5hAIQOER2XtshfDfzeESLj
 LjoCdw84He7/KcaLsluuJG5O8b01SfGv0SUVKN680yFFVgnRcfp9jKxvY4
 IK4hMPZ1K90jd0rAgIJAERLLtmegl1gFV+vfIxksMWKudnPPmSSJ637Ng=
Date: Tue, 19 Nov 2019 09:08:32 -0500 (EST)
From: "Stuart D. Gathman" <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <20191119121910.g6tc5zwbmbdiuiuh@anathema>
Message-ID: <alpine.LRH.2.21.1911190904540.22622@fairfax.gathman.org>
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com> <20191119121910.g6tc5zwbmbdiuiuh@anathema>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux

On Tue, 19 Nov 2019, Morten Linderud wrote:

> On Tue, Nov 19, 2019 at 01:33:48PM +0200, Georgi Guninski wrote:
>> * As end user what can I do to mitigate malicious packages?
>
> The answer to this is complicated.

... an excellent overview from Morten, recommended reading


My tidbit is that when starting with a new package, I run it in a 
virtual machine until my confidence begins to exceed the annoyance
of going through a VM (generally a year or so).  A container may be
sufficient for a non-root application.

-- 
 	      Stuart D. Gathman <stuart@gathman.org>
"Confutatis maledictis, flamis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.
