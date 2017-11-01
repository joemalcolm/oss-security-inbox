X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["586" "Wednesday" "1" "November" "2017" "13:52:41" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<32e60988-4ab4-fe39-9d94-5f3453eb50b0@orlitzky.com>" "13" "Re: [oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110117:52:41" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "        michael@orli Nov  1   13/586   " thread-indent "\"Re: [oss-security] Re: Fw: Security risk of vim swap files\"\n") "<e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>" ("<e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20407 invoked by uid 550); 1 Nov 2017 17:52:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20389 invoked from network); 1 Nov 2017 17:52:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1509558763; bh=i1+Bf65nZ4i5rQRMivPtFIlrOm5PXRrNBY6OC3EtcU4=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=ZQZEStHK+nFWHvHy/a4m8szCBxYWqtnfyZxKKGF1k5QEJg/q4IXHsHlsJRGxXNtga
	 rwGBvZ7EuBDanwHnFmRsPeFcOqU8NRc2rHCpzMj0uyKbsSaMcLU0lVJam8w9pwJzBd
	 jKxPMKL+dchhyWLpbni7PbX/RnCMIvqEqqImYWYc=
References: <e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>
Message-ID: <32e60988-4ab4-fe39-9d94-5f3453eb50b0@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Wed, 1 Nov 2017 13:52:41 -0400
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On 11/01/2017 11:41 AM, Z5T1 wrote:
> 
> " Move the swap file location to protect against CVE-2017-1000382
> silent !install -d -m 700 ~/.vim/swap/ 2>&1 > /dev/null
> set directory=~/.vim/swap/
> 
> This safely sets the swap file directory to a directory that should not
> cause any security problems.
This is what I used to do in emacs before I disabled the backups
completely. I was wondering if there were any problems with it. If there
aren't, it seems like a better default to me, for both emacs and vim.

It might be interesting to ask upstream how they'd feel about moving them.
