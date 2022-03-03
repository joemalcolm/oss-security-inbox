X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["616" "Thursday" "3" "March" "2022" "21:56:42" "+0100" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "18" "[oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and below" nil nil nil "3" nil nil (number mark "U       gabriel.coro Mar  3   18/616   " thread-indent "\"[oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and below\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and below" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32551 invoked by uid 550); 3 Mar 2022 21:10:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26498 invoked from network); 3 Mar 2022 20:56:54 -0000
Message-ID: <949efc4e-dc03-c261-2eda-f554eb3ed0fe@enst-bretagne.fr>
Date: Thu, 3 Mar 2022 21:56:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
To: oss-security@lists.openwall.com
References: <f941621c-80ad-f8cc-4065-ac169b28a725@enst-bretagne.fr>
In-Reply-To: <f941621c-80ad-f8cc-4065-ac169b28a725@enst-bretagne.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] DNS rebinding on ReadyMedia/minidlna v1.3.0 and below

ReadyMedia [1] (formerly MiniDLNA) v1.3.0 and below is vulnerable to DNS 
rebinding attacks. A malicious remote web server may trick the user 
browser into triggering arbitrary UPnP requests on the local DLNA server 
and observe the result of these actions. Moreover, the shared files are 
accessible through DNS rebinding as well.

A remote malicious server could exploit the user browser in order to:

* list the available media files and exfiltrate this list;
* download the media files and exfiltrate them.

This has been fixed in ReadyMedia v1.3.1.

[1] https://sourceforge.net/projects/minidlna/

-- 
Gabriel

