X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["713" "Sunday" "6" "March" "2022" "10:08:21" "+0100" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "21" "Re: [oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and below" nil nil nil "3" nil nil (number mark "U       gabriel.coro Mar  6   21/713   " thread-indent "\"Re: [oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and below\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and below" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7822 invoked by uid 550); 6 Mar 2022 10:20:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1166 invoked from network); 6 Mar 2022 09:08:34 -0000
Message-ID: <b134b991-774d-5e38-f8ea-f81ffc02d8f4@enst-bretagne.fr>
Date: Sun, 6 Mar 2022 10:08:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <f941621c-80ad-f8cc-4065-ac169b28a725@enst-bretagne.fr>
 <949efc4e-dc03-c261-2eda-f554eb3ed0fe@enst-bretagne.fr>
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
In-Reply-To: <949efc4e-dc03-c261-2eda-f554eb3ed0fe@enst-bretagne.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and
 below

On 03/03/2022 21:56, Gabriel Corona wrote:
> ReadyMedia [1] (formerly MiniDLNA) v1.3.0 and below is vulnerable to DNS 
> rebinding attacks. A malicious remote web server may trick the user 
> browser into triggering arbitrary UPnP requests on the local DLNA server 
> and observe the result of these actions. Moreover, the shared files are 
> accessible through DNS rebinding as well.
> 
> A remote malicious server could exploit the user browser in order to:
> 
> * list the available media files and exfiltrate this list;
> * download the media files and exfiltrate them.
> 
> This has been fixed in ReadyMedia v1.3.1.
> 
> [1] https://sourceforge.net/projects/minidlna/
> 

This is CVE-2022-26505.

--
Gabriel
