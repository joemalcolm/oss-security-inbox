X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["516" "Wednesday" "19" "September" "2018" "15:02:28" "-0400" "Stuart D. Gathman" "stuart@gathman.org" "<alpine.LRH.2.21.1809191500450.16496@fairfax.gathman.org>" "13" "Re: [oss-security] tdesktop 1.3.14: index out of range" nil nil nil "9" "2018091919:02:28" "[oss-security] tdesktop 1.3.14: index out of range" (number mark "U       stuart@gathm Sep 19   13/516   " thread-indent "\"Re: [oss-security] tdesktop 1.3.14: index out of range\"\n") "<CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>" ("<CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19762 invoked by uid 550); 19 Sep 2018 19:20:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3515 invoked from network); 19 Sep 2018 19:02:50 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::2" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1537381291; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=tL1bNsljVZcbIZ5+5KEDfnNAPjkQRhQ9Et2eYzHNv9I=; 
 b=KUEDRrTPCZxVBBeisXJuAa8XDTDJFCHyl5q2+vXLvCpG+b6YkJL0Od4H
 rJjkfLNnW0QKBdsweSgrHMaNzVQkjaRvOWZfVfi/xTOy+H0OzIUr/ei+eH
 f9ayLxKufcKeusO7FTXJmoTZ3oy5jrs9CVJRN4TDYqZnKOl53p07vYfxo=
Date: Wed, 19 Sep 2018 15:02:28 -0400 (EDT)
From: "Stuart D. Gathman" <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>
Message-ID: <alpine.LRH.2.21.1809191500450.16496@fairfax.gathman.org>
References: <CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] tdesktop 1.3.14: index out of range

On Wed, 19 Sep 2018, Dhiraj Mishra wrote:

> Affected Product: tdesktop-1.3.14 tested on Ubuntu 18.04 LTS x64
> ...
> Crashes, ASSERT failure in QVector<T>::operator[]: "index out of range",

How does this affect security?  Does it improve over-all security by 
discouraging the use of centralized services like telegram?

-- 
 	      Stuart D. Gathman <stuart@gathman.org>
"Confutatis maledictis, flamis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.
