X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["518" "Thursday" "24" "March" "2022" "07:46:31" "+0100" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "17" "[oss-security] Re: Lack of TLS certification chain validation in ZAP Proxy" nil nil nil "3" nil nil (number mark "U       gabriel.coro Mar 24   17/518   " thread-indent "\"[oss-security] Re: Lack of TLS certification chain validation in ZAP Proxy\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Lack of TLS certification chain validation in ZAP Proxy" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5873 invoked by uid 550); 24 Mar 2022 08:47:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19872 invoked from network); 24 Mar 2022 06:46:43 -0000
Message-ID: <78ad4469-23ca-e81d-6a5f-43afc716dfa9@enst-bretagne.fr>
Date: Thu, 24 Mar 2022 07:46:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
To: oss-security@lists.openwall.com
References: <3caaf2cd-e927-0f5b-8783-4e8f875af95f@enst-bretagne.fr>
In-Reply-To: <3caaf2cd-e927-0f5b-8783-4e8f875af95f@enst-bretagne.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Lack of TLS certification chain validation in ZAP Proxy

On 23/03/2022 22:02, Gabriel Corona wrote:
> ZAP proxy does not verify the certificate chain of the HTTPS servers it 
> connects to. For example, it connects without warning to servers 
> presenting a self-signed certificate, an expired certificate, etc.
> 
> This opens up a browser configured to use ZAP as an intercepting proxy to:
> 
> 1. man-in-the-middle (MITM) attacks;
> 2. DNS rebinding attacks (to HTTPS servers configured as default virtual 
> server).
> 

This is CVE-2022-27820.

Regards,

Gabriel Corona
