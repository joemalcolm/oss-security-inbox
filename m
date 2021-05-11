X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["502" "Tuesday" "11" "May" "2021" "07:37:47" "+0200" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "15" "Re: [oss-security] Code execution through Thunar" nil nil nil "5" nil nil (number mark "U       gabriel.coro May 11   15/502   " thread-indent "\"Re: [oss-security] Code execution through Thunar\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Code execution through Thunar" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1505 invoked by uid 550); 11 May 2021 06:11:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19529 invoked from network); 11 May 2021 05:37:58 -0000
To: oss-security@lists.openwall.com
References: <2d1bd340-fac1-b16a-c046-494c2d58f369@enst-bretagne.fr>
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
Message-ID: <99169547-a9b0-ca29-0b09-035e6d58ac98@enst-bretagne.fr>
Date: Tue, 11 May 2021 07:37:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <2d1bd340-fac1-b16a-c046-494c2d58f369@enst-bretagne.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Code execution through Thunar

Le 09/05/2021 à 21:38, Gabriel Corona a écrit :
> When called with a regular file as command line argument, Thunar
> would delegate to some other program without user confirmation
> based on the file type. This could be exploited to trigger code
> execution in a chain of vulnerabilities.
> 
> This is fixed in 4.16.7 and 4.17.2. When called with a regular
> file, Thunar now opens the containing directory and selects the
> file.
> 
> A CVE ID has been requested.

This is CVE-2021-32563.

Gabriel
