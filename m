X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["689" "Tuesday" "26" "June" "2018" "17:56:18" "-0700" "oss-security-list@contactdaniel.net" "oss-security-list@contactdaniel.net" "<a75f7cf8-c89a-b431-e7a7-58f43c2f6b2f@ddent.net>" "20" "[oss-security] rclone data exflitration / unauthorized API use" nil nil nil "6" "2018062700:56:18" "[oss-security] rclone data exflitration / unauthorized API use" (number mark "U       oss-security Jun 26   20/689   " thread-indent "\"[oss-security] rclone data exflitration / unauthorized API use\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25753 invoked by uid 550); 27 Jun 2018 09:29:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7670 invoked from network); 27 Jun 2018 00:56:31 -0000
To: oss-security@lists.openwall.com
From: oss-security-list@contactdaniel.net
Message-ID: <a75f7cf8-c89a-b431-e7a7-58f43c2f6b2f@ddent.net>
Date: Tue, 26 Jun 2018 17:56:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0)
 Gecko/20100101 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - nickel.omegasphere.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ddent.net
X-Get-Message-Sender-Via: nickel.omegasphere.net: authenticated_id: ddent@ddent.net
X-Authenticated-Sender: nickel.omegasphere.net: ddent@ddent.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [oss-security] rclone data exflitration / unauthorized API use

Due to it's reliance on vulnerable upstream vendor SDKs & APIs, all 
current versions of 'rclone' are subject to a variety of attacks.

This vulnerability is an instance of a class of security vulnerabilities 
that affect a wide variety of software. Any API which has clients 
perform actions on arbitrary URLs chosen by the API server will lead to 
this class of attack becoming a concern.

Current Google Cloud Storage SDKs/APIs, Backblaze B2 APIs, and Yandex 
Disk APIs are affected.

No CVE is presently assigned.

Further details at: 
https://www.danieldent.com/blog/restless-vulnerability-non-browser-cross-domain-http-request-attacks/

-- 
Daniel Dent
https://www.danieldent.com/	

