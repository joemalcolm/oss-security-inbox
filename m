X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["467" "Monday" "6" "November" "2017" "07:32:46" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<a7e0e324-5126-4410-724e-af5576432d67@orlitzky.com>" "13" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110612:32:46" "[oss-security] Fw: Security risk of vim swap files" (number mark "        michael@orli Nov  6   13/467   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171106070849.GB9438@256bit.org>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105181431.a7zstp2v4bytdlvg@jwilk.net>" "<20171106070849.GB9438@256bit.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1580 invoked by uid 550); 6 Nov 2017 12:33:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1550 invoked from network); 6 Nov 2017 12:33:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1509971573; bh=GmLqbnWZH3B7WRraPtW+yhU+0VlZCUGTIALbxexwzD8=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=nGeBT4RAmiEii/JESbVoGWTwDoif1QNejpbRRBlff1aYRrEUrNGBa/9cz0nqbeOgq
	 aeYq4a4vc/D5vGyorjlQdGYiKj8KEZH+ximJgVmRLUfkIKxRYZph8IFt2puW+pQll7
	 gQoGJtLGlpwQ0BM7rTvcNb7t0OCjRTLOL6xYiB2s=
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org>
 <20171105181431.a7zstp2v4bytdlvg@jwilk.net>
 <20171106070849.GB9438@256bit.org>
Message-ID: <a7e0e324-5126-4410-724e-af5576432d67@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171106070849.GB9438@256bit.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Mon, 6 Nov 2017 07:32:46 -0500
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On 11/06/2017 02:08 AM, Christian Brabandt wrote:
> 
> On So, 05 Nov 2017, Jakub Wilk wrote:
> 
>> Couldn't vim create swapfiles with mode 0600 and be done with it?
> 
> Because then users of the group could not recover the file anymore, 
> although they are able to read the original file.
> 

It also breaks (default) ACLs, but maybe if we do that in enough
important applications, the next generation of ACLs won't try to use the
group bits as a permissions mask.
