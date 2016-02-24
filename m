X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["755" "Wednesday" "24" "February" "2016" "10:26:40" "-0800" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<56CDF5E0.7080402@oracle.com>" "21" "Re: [oss-security] [Pixman] create_bits(): Cast the result of height * stride to size_t" "^CC:" nil nil "2" "2016022418:26:40" "[oss-security] [Pixman] create_bits(): Cast the result of height * stride to size_t" (number mark "        alan.coopers Feb 24   21/755   " thread-indent "\"Re: [oss-security] [Pixman] create_bits(): Cast the result of height * stride to size_t\"\n") "<CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>" ("<CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15997 invoked by uid 550); 25 Feb 2016 12:44:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15972 invoked from network); 25 Feb 2016 12:44:21 -0000
Message-ID: <56CDF5E0.7080402@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>
In-Reply-To: <CACn5sdRX-tyOuVDXfTeFXfen6hq54e_zMVhsd5_TYW1XsHHk+w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: aserp1040.oracle.com [141.146.126.69]
CC: "X.Org Security Team" <xorg-security@lists.x.org>
Date: Wed, 24 Feb 2016 10:26:40 -0800
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [Pixman] create_bits(): Cast the result of height
 * stride to size_t
To: oss-security@lists.openwall.com

On 02/24/16 04:10 AM, Gustavo Grieco wrote:
>   Hi,
>
> There is an (old) integer overflow in create_bits in the pixman library.
> Patch and details are available here:
>
> https://web.archive.org/web/20141227044037/http://lists.freedesktop.org/archives/pixman/2014-April/003244.html

The quoted patch was applied to the master branch of the pixman git repo as:

https://cgit.freedesktop.org/pixman/commit/?id=857e40f3d2bc2cfb714913e0cd7e6184cf69aca3

and to the pixman-0.32 branch as:

https://cgit.freedesktop.org/pixman/commit/?id=50d7b5fa8ea2ae119f35c20ab0dd0413d5103cbb

It is included in pixman 0.32.6 and later releases.

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc
